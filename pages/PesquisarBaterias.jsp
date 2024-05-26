<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>

<html:html locale="true">
<head>
<link rel="icon" href="<%=request.getContextPath()%>/imgs/icone.png" type="image/x-icon" />
<title>12 VOLTS Baterias Automotivas</title>
<link rel="stylesheet" href="css/baterias.css" type="text/css" />

<script>

function somenteNumero(e){
    var tecla = (window.event)?event.keyCode:e.which;
    if((tecla>47 && tecla<58))
	    return true;
    else{
        if (tecla==8 || tecla==0)
	        return true;
    	else
	    	return false;
    }
}

function pesquisarBaterias(){
	var path = ("Home.do?op=pesquisarBaterias");
	document.body.style.cursor = 'wait';
	document.forms[0].action = path;
	document.forms[0].submit();
}


var slideIndex = 0;

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex > slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 5000); // Change image every 2 seconds
}


</script>

</head>
 
<body>

<html:form action="Home" enctype="multipart/form-data">

<table style="width: 100%; height: 100%" border="0">
	<tr>
		<td>
			<jsp:include page="cabecalho.jsp" />
		</td>
	</tr>
	<tr height="10px">
		<td>
		</td>
	</tr>
	<tr>
		<td valign="top">
			<jsp:include page="sub_cabecalho.jsp" />
		</td>
	</tr>
	<tr>
		<td valign="top">
			<br/>
			<table border="0" style="width: 600px; border-radius: 20px; background-color: #1C1C1C;">
				<tr>
					<td colspan="4" class="titulo3Branco" height="45" valign="middle">
						&nbsp;&nbsp;&nbsp;
						Encontre a sua bateria:
					</td>
				</tr>
				<tr>
					<td class="titulo2Branco" style="padding: 5" align="right" height="30" width="16%">
						Marca:
					</td>
					<td class="titulo2Branco" style="padding: 5" height="30" width="26%">
						<html:select property="marcaBateria" disabled="true" style="width: 150px">
							<html:option value="-1">Em desenvolvimento</html:option>
						</html:select>
					</td>
					<td class="titulo2Branco" style="padding: 5" align="right" height="30" width="25%">
						RC:
					</td>
					<td class="titulo2Branco" style="padding: 5" height="30">
						<html:text property="rc" maxlength="4" style="width: 70px; text-align: right;" onkeypress='return somenteNumero(event);' />
					</td>
				</tr>
				<tr>
					<td class="titulo2Branco" style="padding: 5" align="right" height="30">
						CCA:
					</td>
					<td class="titulo2Branco" style="padding: 5" height="30">
						<html:text property="cca" maxlength="4" style="width: 150px; text-align: right;" onkeypress='return somenteNumero(event);' />
					</td>
					<td class="titulo2Branco" style="padding: 5" align="right" height="30">
						Comprimento:
					</td>
					<td class="titulo2Branco" style="padding: 5" height="30">
						<html:text property="comprimento" maxlength="4" style="width: 70; text-align: right;" onkeypress='return somenteNumero(event);' />&nbsp;mm (até)
					</td>
				</tr>
				<tr>
					<td class="titulo2Branco" style="padding: 5" align="right" height="30">
						Amperagem:
					</td>
					<td class="titulo2Branco" style="padding: 5" height="30">
						<html:text property="ah" maxlength="4" style="width: 150px; text-align: right;" onkeypress='return somenteNumero(event);' />
					</td>
					<td class="titulo2Branco" style="padding: 5" align="right" height="30">
						Largura:
					</td>
					<td class="titulo2Branco" style="padding: 5" height="30">
						<html:text property="largura" maxlength="4" style="width: 70; text-align: right;" onkeypress='return somenteNumero(event);' />&nbsp;mm (até)
					</td>
				</tr>
				<tr>
					<td class="titulo2Branco" style="padding: 5" align="right" height="30">
						Garantia:
					</td>
					<td class="titulo2Branco" style="padding: 5" height="30">
						<html:select property="garantia" disabled="true" style="width:150px;" >
							<html:option value="-1">Em desenvolvimento</html:option>
						</html:select>
					</td>
					<td class="titulo2Branco" style="padding: 5" align="right" height="30">
						Altura:
					</td>
					<td class="titulo2Branco" style="padding: 5" height="30">
						<html:text property="altura" maxlength="4" style="width: 70; text-align: right;" onkeypress='return somenteNumero(event);' />&nbsp;mm (até)
					</td>
				</tr>
				<tr>
					<td colspan="4" align="center" height="20">
						&nbsp;
					</td>
				</tr>
			</table>
		</td>
	</tr>
	
	<tr height="8px;">
		<td>
			&nbsp;
		</td>
	</tr>
	
	<tr height="70px;">
		<td align="left" valign="top" style="padding-left: 100px;">
			<input type="button" value="Pesquisar" class="btn_pesquisar3" onmouseover="this.style.cursor='pointer'" title="Pesquisar" onclick="pesquisarBaterias();" style="width: 150px;" />
			&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="Voltar" class="btn_pesquisar3" onmouseover="this.style.cursor='pointer'" title="Pesquisar" onclick="home();" style="width: 150px;" />
		</td>
	</tr>
	
	<tr>
		<td>
			<logic:present name="listaBaterias" scope="request">
				<table style="width: 100%" border="0">
					<tr>
						<td colspan="3" width="100%" height="5px;">
							<hr />
						</td>
					</tr>
					
					<tr>
						<td width="4%">
							&nbsp;
						</td>
						<td width="92%" align="right">
							<table style="width: 100%">
								<tr>
									<td width="67%">
										&nbsp;
									</td>
									<td width="33%">
										<table border="0" style="width: 100%; border-radius: 6px; padding-right: 10px; background-color: #1C1C1C;">
											<tr>
												<td class="titulo2Branco" align="right">
													Ordenar resultados por:&nbsp;
													<html:select property="ordenarPor" onchange="pesquisar();" >
														<html:option value="0">Padrão</html:option>
														<html:option value="1">Menor valor</html:option>
														<html:option value="2">Maior Amperagem (Ah)</html:option>
														<html:option value="3">Maior CCA</html:option>
														<html:option value="4">Maior RC</html:option>
													</html:select>
												</td>
											</tr>
										</table>
									</td>
								</tr>
							</table>
						</td>
						<td width="4%">
							&nbsp;
						</td>
					</tr>
					
					<tr>
						<td colspan="3" width="100%" height="5px;">
							&nbsp;
						</td>
					</tr>

					<logic:iterate name="listaBaterias" id="bat" >

						<tr>
							<td width="4%">
								&nbsp;
							</td>
							<td width="92%" align="center">
								<table border="0" style="width: 100%; border-radius: 20px; background-color: #1C1C1C;">
									<tr>
										<td class="titulo2Branco" width="25%" align="center" valign="middle">
											<img alt="" src='<%=request.getContextPath()%>/imgs/baterias/<bean:write name="bat" property="codigo" />.png' style="width: 200" />
										</td>
										<td class="txtBranco" style="padding: 15">
											<table border="0" style="width: 100%; border-radius: 20px; background-color: #363636"> <!-- #1C1C1C, #363636, #4F4F4F -->
												<tr>
													<td width="35%" class="titulo2Branco" align="left" style="padding-left: 30px;">
														Marca:
													</td>
													<td width="65%" class="titulo2Branco" align="left">
														<bean:write name="bat" property="marca.nome" />
													</td>
												</tr>
												<tr>
													<td width="35%" class="titulo2Branco" align="left" style="padding-left: 30px;">
														Código:
													</td>
													<td width="65%" class="titulo2Branco" align="left">
														<bean:write name="bat" property="codigo" />
													</td>
												</tr>
												<tr>
													<td width="35%" class="titulo2Branco" align="left" style="padding-left: 30px;">
														Amperagem:
													</td>
													<td width="65%" class="titulo2Branco" align="left">
														<bean:write name="bat" property="ah" />&nbsp;Ah
													</td>
												</tr>
												<tr>
													<td width="35%" class="titulo2Branco" align="left" style="padding-left: 30px;">
														CCA:
													</td>
													<td width="65%" class="titulo2Branco" align="left">
														<bean:write name="bat" property="cca" />
													</td>
												</tr>
												<tr>
													<td width="35%" class="titulo2Branco" align="left" style="padding-left: 30px;">
														RC:
													</td>
													<td width="65%" class="titulo2Branco" align="left">
														<bean:write name="bat" property="rc" />
													</td>
												</tr>
												<tr>
													<td width="35%" class="titulo2Branco" align="left" style="padding-left: 30px;">
														Polo Positivo:
													</td>
													<td width="65%" class="titulo2Branco" align="left">
														<bean:write name="bat" property="poloPositivo" />
													</td>
												</tr>
												<tr>
													<td width="35%" class="titulo2Branco" align="left" style="padding-left: 30px;">
														Garantia:
													</td>
													<td width="65%" class="titulo2Branco" align="left">
														<bean:write name="bat" property="garantia" />&nbsp;Meses
													</td>
												</tr>
												<tr>
													<td width="35%" class="titulo2Branco" align="left" style="padding-left: 30px;">
														Tamanho:
													</td>
													<td width="65%" class="titulo2Branco" align="left">
														<bean:write name="bat" property="comprimento" /> x <bean:write name="bat" property="largura" /> x <bean:write name="bat" property="altura" />
														<ab class="titulo1BrancoMini">&nbsp;mm&nbsp;(comp x larg x alt) </ab>
													</td>
												</tr>
											</table>
										</td>
										<td width="35%" valign="middle" align="center">
											<table style="width: 100%" border="0">
												<logic:notEqual name="bat" property="valor" value="0">
													<tr>
														<td colspan="2" class="titulo1Branco" align="right" valign="bottom" style="padding-bottom: 2">
															<logic:equal name="bat" property="promocao" value="true">
																<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/promocao.png' style="width: 100px; vertical-align: middle;" />&nbsp;&nbsp;
															</logic:equal>
															R$&nbsp;
															<logic:equal name="bat" property="promocao" value="true">
																<span class="titulo1Vermelho">
															</logic:equal>
															<logic:notEqual name="bat" property="promocao" value="true">
																<span class="titulo1Branco">
															</logic:notEqual>
															<bean:write name="bat" property="valor" />,00
															</span>
														</td>
														<td align="left" width="25%" class="titulo1BrancoMini" style="padding-left: 5; padding-bottom: 6" valign="bottom">
															à vista
														</td>
													</tr>
													<tr>
														<td width="32%" class="titulo1BrancoMini" valign="bottom" align="right" style="padding-bottom: 6">
															ou
														</td>
														<td class="titulo1Branco" align="right" valign="bottom" style="padding-bottom: 2">
															R$ &nbsp;<bean:write name="bat" property="valorParcelado" />,00
														</td>
														<td align="left" class="titulo1BrancoMini" style="padding-left: 5; padding-bottom: 6" valign="bottom">
															em 3x
														</td>
													</tr>
													<tr>
														<td colspan="3" align="center" valign="middle">
															&nbsp;
															<!-- 
															<input type="button" value="Comprar" class="botaoPesquisar2" onmouseover="this.style.cursor='pointer'" title="Pesquisar" onclick="alert('Em desenvolvimento...')" />
															 --> 
														</td>
													</tr>
												</logic:notEqual>
												<logic:equal name="bat" property="valor" value="0">
													<tr>
														<td colspan="3" class="titulo1Branco" align="center" valign="middle">
															<img alt="" src='<%=request.getContextPath()%>/imgs/indisponivel2.png' style="width: 220px" />
														</td>
													</tr>
												</logic:equal>
											</table>
										</td>
									</tr>
								</table>
							</td>
							<td width="4%">
								&nbsp;
							</td>
						</tr>
						
						<tr>
							<td colspan="3" width="100%">
								&nbsp;
							</td>
						</tr>
						
					</logic:iterate>
					
				</table>
			</logic:present>

			<logic:notPresent name="listaBaterias" scope="request">
				&nbsp;
			</logic:notPresent>

		</td>
	</tr>
	
	<tr height="100%">
		<td>
			&nbsp;
		</td>
	</tr>

</table>

</html:form>

</body>

<script>
	showSlides();
</script>

</html:html>
