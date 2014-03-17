<? 
/***********************************************************************************/
/*                                 PHP Report                                      */
/*                                                                                 */
/* Copyright (c) 2005 by Daniela Toniolo, Leonardo Galv�o and Marli Carneiro       */
/*                                                                                 */
/* This is a free software. You can redistribute it and/or modify it under the     */
/* terms of the GNU General Public License.                                        */
/***********************************************************************************/

	session_cache_limiter('public');
	
	session_start();
	include("classes/Class_Config.php");
	include("classes/Class_Layout.php");
	Layout::AcessoPagina("GerarRel");
	include("idiomas/GerarRel/".$_SESSION["Idioma"].".php");
	include("classes/Class_Conexao.php");
	include("classes/Class_Query.php");
	include("classes/Class_Usuario.php");
	include("classes/Class_GerarRel.php");

Layout::Cabecalho();
GerarRel::JSPreencheCampos();
GerarRel::JSPreencheCamposNum();

GerarRel::GuiaPasso(7);
?>
<table width="600"  border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td width="5">&nbsp;</td>
		<td width="55"><img src="imagens/titulo-gerar-rel.gif" width="55" height="55"></td>
		<td background="imagens/titulo-meio.gif" class="titulo">&nbsp;&nbsp;<?=_PASSO7;?></td>
		<td width="5"><img src="imagens/titulo-dir.gif" width="5" height="55"></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td colspan="2"><strong><?=_DESCRICAO7;?></strong></td>
	</tr>
	<tr>
		<td>&nbsp;</td>
		<td>&nbsp;</td>
		<td colspan="2">&nbsp;</td>
	</tr>
</table>
<form name="form1" method="post" action="">
<?
$qtd_campos = GerarRel::QtdLinhas(7);
GerarRel::PegarPassos(7);
?>
<table width="100%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
  	<td align="center">&nbsp;</td>
  	<td>
<?
GerarRel::ListarFormulas7($qtd_campos);
?>
	</td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
  	<td align="center">&nbsp;</td>
  	<td>&nbsp;</td>
  	</tr>
  <tr>
  	<td align="center">&nbsp;</td>
  	<td>&nbsp;</td>
  </tr>
<? if ($qtd_campos < 10) {?>
  <tr>
  	<td align="center">&nbsp;</td>
  	<td><table width="268" border="0" cellpadding="0" cellspacing="0">
    	<tr>
    		<td><div align="center"><?=_ADICIONAR?></div></td>
    		<td><div align="center">
    			<input name="adi_campos7" type="text" class="texto" onKeyPress="return sonumero(event);" size="2" maxlength="1">
    			</div></td>
    		<td><div align="center"><?=_FORMULAS?></div></td>
    		<td><div align="center">
    			<input type="submit" name="envia_campos7" value="<?=_OK;?>" class="botao_ok">
    			</div></td>
    		</tr>
    	</table></td>
  </tr>
  <tr>
  	<td align="center">&nbsp;</td>
  	<td>&nbsp;</td>
  	</tr>
  <tr>
  	<td align="center">&nbsp;</td>
  	<td>&nbsp;</td>
  </tr>
  <tr>
  	<td align="center">&nbsp;</td>
  	<td>&nbsp;</td>
  </tr>
<? } ?>
  <tr>
  	<td width="60" align="center">&nbsp;</td>
    <td>
 	  <input type="button" onClick="javascript:EnviarForm('FrGerarRel6.php',document.form1);" value="<?=_VOLTAR;?>" class="botao_volt">&nbsp;&nbsp;&nbsp;
	  <input type="button" onClick="javascript:EnviarForm('FrGerarRel11.php',document.form1);" value="<?=_FINALIZAR;?>" class="botao_conf">&nbsp;&nbsp;&nbsp;
      <input type="button" onClick="javascript:EnviarForm('FrGerarRel8.php',document.form1);" value="<?=_AVANCAR;?>" class="botao_avanc"> </td>
  </tr>
</table>
</form>
<? Layout::Rodape(); ?>