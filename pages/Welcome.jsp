<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>

<html:html locale="true">
<head>
<link rel="icon" href="<%=request.getContextPath()%>/imgs/icone.png" type="image/x-icon" />
<title>12 VOLTS Baterias Automotivas</title>
<link rel="stylesheet" href="css/baterias.css" type="text/css" />
<html:base/>
</head>
<body bgcolor="white" background="<%=request.getContextPath()%>/imgs/default_background.jpg">

<html:form action="Home" enctype="multipart/form-data">

<table style="width: 100%; height: 900;" border="1">
	<tr height="5%">
		<td>
			<table border="1" style="width: 100%; height: 100%">
				<tr>
					<td align="center" width="70%" class="txtBranco">
						Teste
					</td>
					<td align="center" width="10%" class="txtBranco">
						Teste
					</td>
					<td align="center" width="10%" class="txtBranco">
						Teste
					</td>
					<td align="center" width="10%" class="txtBranco">
						Teste
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr height="15%">
		<td>
			<table border="1" style="width: 100%; height: 100%">
				<tr>
					<td align="center" width="100%" class="txtBranco">
						Teste
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td>
			<table border="1" style="width: 100%; height: 100%">
				<tr>
					<td colspan="3" align="left" height="50" valign="top" width="100%" class="titulo1Branco">
						&nbsp;
						123 Encontre a bateria ideal para seu veículo:
					</td>
				</tr>
				<tr>
					<td colspan="3" align="left" height="100" valign="top" width="100%" class="titulo1Branco">
						<table border="0" style="width: 100%">
							<tr>
								<td width="15%" class="titulo2Branco" align="right">
									Marca
								</td>
								<td width="15%" class="txtBranco">
									teste
								</td>
								<td width="10%" class="titulo2Branco" align="right">
									Amperagem
								</td>
								<td width="15%" class="txtBranco">
									<html:text property="largura" maxlength="3" style="width: 70;" onkeypress='return somenteNumero(event);' />
								</td>
								<td width="10%" class="titulo2Branco" align="right">
									Comprimento
								</td>
								<td class="titulo2Branco">
									<html:text property="comprimento" maxlength="3" style="width: 70;" onkeypress='return somenteNumero(event);' />&nbsp;mm
								</td>
							</tr>
							<tr>
								<td class="titulo2Branco" align="right">
									Modelo
								</td>
								<td class="txtBranco">
									teste
								</td>
								<td class="titulo2Branco" align="right">
									CCA
								</td>
								<td class="txtBranco">
									<html:text property="largura" maxlength="3" style="width: 70;" onkeypress='return somenteNumero(event);' />
								</td>
								<td class="titulo2Branco" align="right">
									Largura
								</td>
								<td class="titulo2Branco">
									<html:text property="largura" maxlength="3" style="width: 70;" onkeypress='return somenteNumero(event);' />&nbsp;mm
								</td>
							</tr>
							<tr>
								<td class="titulo2Branco" align="right">
									Ano de fabricação
								</td>
								<td class="txtBranco">
									teste
								</td>
								<td class="titulo2Branco" align="right">
									RC
								</td>
								<td class="titulo2Branco">
									<html:text property="largura" maxlength="3" style="width: 70;" onkeypress='return somenteNumero(event);' />&nbsp;mm
								</td>
								<td class="titulo2Branco" align="right">
									Altura
								</td>
								<td class="txtBranco">
									<html:text property="altura" maxlength="3" style="width: 70;" onkeypress='return somenteNumero(event);' />
								</td>
							</tr>
							<tr>
								<td colspan="2" height="40" align="center" valign="bottom">
									<input type="button" value="Pesquisar" class="btn_pesquisar_baterias" onmouseover="this.style.cursor='pointer'" title="Pesquisar" onclick="alert('Em desenvolvimento...')" />
								</td>
								<td colspan="4">
									&nbsp;
								</td>
							</tr>
							
						</table>
					</td>
				</tr>
				<tr>
					<td colspan="3" align="left" height="50" valign="top" width="100%" class="txtBranco">
						teste 123
					</td>
				</tr>
				<tr>
					<td align="left" width="5%" valign="top" class="txtBranco">
						teste 123
					</td>
					<td align="left" valign="top" class="txtBranco">
						&nbsp;    
					
						<table border="1">

							<logic:present name="listaBaterias" scope="request">
								<logic:iterate name="listaBaterias" id="bat" >
									<tr>
										<td>
											<bean:write name="bat" property="codigo" />
										</td>
									</tr>		
								</logic:iterate>
							</logic:present>

							<logic:notPresent name="listaBaterias" scope="request">
								<tr>
									<td>
										&nbsp;
									</td>
								</tr>
							</logic:notPresent>

						</table>
					</td>
					<td align="left" width="5%" valign="top" class="txtBranco">
						teste
					</td>
				</tr>
			</table>
		</td>
	</tr>
	
</table>

</html:form>

</body>
</html:html>
