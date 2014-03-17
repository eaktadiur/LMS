<?php

error_reporting(E_ERROR | E_WARNING | E_PARSE);
//E_NOTICE for undefine varibale; 

include('standard_include.php');
$mode = getParam('mode');
$employeeId = get('employeeId');
$branchDeptId = get('branchDeptId');
$branchDeptName = get('branchDeptName');
$officeType = get('officeType');
$userName = get('userName');
$userType = get('userType');
$userLevelId = get('userLevelId');
$DB_NAME = get('DBNAME');
$DB_TYPE = get('DB_TYPE');
$designationId = get('designationId');
$designationName = get('designationName');
$companyId = get('companyId');
$logoPath = get('logoPath');


?>