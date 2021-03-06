set ANSI_NULLS ON
set QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<M.D.Gupta>
-- Create date: <Feb 25,2012>
-- Description:	<Deatiled Balance Sheet>
-- =============================================
ALTER PROCEDURE [dbo].[DetailedBalanceSheet]
	@fromDate varchar(12),
	@toDate varchar(12)
AS
BEGIN
	--Liability
	WITH GroupInMainGroupP (accountGroupId,HierarchyLevel) AS
	(
		SELECT accountGroupId,
		1 AS HierarchyLevel
		FROM tbl_AccountGroup WHERE accountGroupId='1'
		UNION ALL
		SELECT e.accountGroupId,
		G.HierarchyLevel + 1 AS HierarchyLevel
		FROM tbl_AccountGroup AS e,GroupInMainGroupP G
		WHERE e.groupUnder=G.accountGroupId
	)
	SELECT     
		A.AccountGroupId as ID,
		B.accountLedgerName AS [Name],
		0.00 as Debit,
		ISNULL(SUM(C.credit), 0)-ISNULL(SUM(C.debit), 0) AS Credit
	FROM         tbl_AccountLedger AS B 
	INNER JOIN   tbl_AccountGroup AS A ON B.accountGroupId = A.accountGroupId 
	LEFT OUTER JOIN tbl_LedgerPosting AS C ON B.ledgerId = C.ledgerId AND C.ledgPostingDate <= @toDate 
	WHERE A.accountGroupId IN (SELECT accountGroupId FROM GroupInMainGroupP)
	group by A.AccountGroupId,B.accountLedgerName;
	--union all
	--Asset
	WITH GroupInMainGroupP (accountGroupId,HierarchyLevel) AS
	(
		SELECT accountGroupId,
		1 AS HierarchyLevel
		FROM tbl_AccountGroup WHERE accountGroupId='2'
		UNION ALL
		SELECT e.accountGroupId,
		G.HierarchyLevel + 1 AS HierarchyLevel
		FROM tbl_AccountGroup AS e,GroupInMainGroupP G
		WHERE e.groupUnder=G.accountGroupId
	)
	SELECT     
		A.AccountGroupId as ID,
		B.accountLedgerName AS [Name],
		ISNULL(SUM(C.debit), 0)-ISNULL(SUM(C.credit), 0) AS Debit,
		0.00 as Credit
	FROM         tbl_AccountLedger AS B 
	INNER JOIN   tbl_AccountGroup AS A ON B.accountGroupId = A.accountGroupId 
	LEFT OUTER JOIN tbl_LedgerPosting AS C ON B.ledgerId = C.ledgerId AND C.ledgPostingDate <= @toDate 
	WHERE A.accountGroupId IN (SELECT accountGroupId FROM GroupInMainGroupP)
	group by A.AccountGroupId,B.accountLedgerName;
	--union all
	--Closing Stock
	SELECT	'',
			'Closing Stock',
			0.00 as Debit,
			isnull(SUM(B.[Opening Stock]),0) as [Closing Stock]
	from
	(SELECT     
		S1.productId,
		((ISNULL(SUM(S1.inwardQtyCart)*p.pcs_per_cart*p.cf,0)+isnull(sum(S1.inwardQtyPcs), 0))
		 - 
		(ISNULL(SUM(S1.outwardQtyCart)*p.pcs_per_cart*p.cf,0)+isnull(sum(S1.outwardQtyPcs), 0)))*p.rate_per_pcs AS [Opening Stock]
		FROM tbl_Product p,tbl_StockPosting S1
		where S1.productId=p.productId
		and stockPostingDate<@toDate
		group by S1.productId,p.pcs_per_cart,p.cf,p.rate_per_pcs
		) B;
END

