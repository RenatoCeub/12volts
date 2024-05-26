<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>

<html:html locale="true">
<head>
<link rel="icon" href="<%=request.getContextPath()%>/imgs/icone.png" type="image/x-icon" />
<link rel="stylesheet" href="css/baterias.css" type="text/css" />

<title>12 Volts - Baterias Automotivas</title>

<meta name="url" content="www.12volts.net.br">
<meta name="robots" content="index, follow">
<meta name="description" content="Peças e Serviços Elétricos Automotivos">
<meta name="keywords" content="Bateria, Bateria Automotiva, Bateria Brasilia, Bateria Heliar Brasilia, Bateria Lago Sul, Bateria Jardim Botânico">

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

function carregarTiposProduto(){
	var path = ("Admin.do?op=carregarDemaisCamposInclusao");
	document.body.style.cursor = 'wait';
	document.forms[0].action = path;
	document.forms[0].submit();
}

</script>

</head>
 
<body>

<html:form action="Admin" enctype="multipart/form-data">

<table style="width: 100%; height: 100%; border-collapse: collapse;">
	<tr>
		<td style="background-color: black; height: 33px; border-top-left-radius: 5px; border-top-right-radius: 5px;">
			<jsp:include page="Headerlinks.jsp"></jsp:include>
		</td>
	</tr>
	<tr>
		<td style="height: 80px; background-image: linear-gradient(#e65100, #EB6C29, #e65100);" align="left" valign="middle">
			<jsp:include page="Header.jsp"></jsp:include>
		</td>
	</tr>
	<tr>
		<td style="background-color: #E65100; height: 40px; border-bottom-left-radius: 5px; border-bottom-right-radius: 5px;">

			<table style="width: 100%; border-collapse: collapse;">
				<tr>
					<td width="12%" align="right" valign="middle" style="padding-right: 10px;">
						<nobr>
							<font style="font-family: Verdana; color: white; font-weight: bold;">
								Busca no site
							</font>
						</nobr>
					</td>
					<td width="38%" align="left" valign="middle">
						<input type="text" style="border-radius: 5px;" size="30px">
						<img alt="Pesquisar" src="./imgs/lupa.png" width="28px;" onmouseover="this.style.cursor='pointer'" onmouseleave="this.style.cursor='default'">						
					</td>
					<td width="50%" align="right" valign="middle" style="padding-right: 20px;">
						<font style="font-family: Verdana; color: white; font-weight: bold;">
							Ligue agora! (61) 99953-8425 &nbsp;
							<img title="Atendimento preferencial pelo Whatsapp!" src="./imgs/WhatsAppIcon.png" width="28px;" onmouseover="this.style.cursor='pointer'" onmouseleave="this.style.cursor='default'">
						</font>
					</td>
				</tr>
			</table>

		</td>
	</tr>
	<tr>
		<td align="center" valign="middle" style=" padding-left: 10px; padding-right: 10px; padding-bottom: 5px; padding-top: 3px;">
			<hr style="width: 100%; margin: 0px;">
		</td>
	</tr>

	<tr height="100%">
		<td valign="top">

			<table style="width: 100%; height: 100%; border-collapse: collapse;">
				<tr>
					<td style="width: 15%; background-color: black;  border-radius: 5px;" align="left" valign="top">
						&nbsp;
					</td>
					<td style="width: 70%; padding-left: 6px; padding-right: 6px;" valign="top">

						<table style="width: 100%; border-collapse: collapse;">
							<tr height="30px;">
								<td colspan="2" style="background-color: #E65100; border-radius: 5px; padding-left: 5px;">
									<font style="font-family: Verdana; color: white; font-size: 16;">
										Tipo de produto
									</font>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<br/><br/>
									&nbsp;
								</td>
							</tr>
							<tr>
								<td width="20%" align="right" valign="middle">
									Categoria:
									&nbsp;
								</td>
								<td width="80%" align="left" valign="middle">
									<html:select property="idCategoria" style="width: 250px" onchange="carregarTiposProduto();">
										<html:option value="-1">Selecione</html:option>
										<logic:present name="listaCategorias">
											<html:options collection="listaCategorias" property="idCategoria" labelProperty="descricao"  />
										</logic:present>
									</html:select>
								</td>
							</tr>
							<tr>
								<td width="20%" align="right" valign="middle">
									Tipo de Produto:
									&nbsp;
								</td>
								<td width="80%" align="left" valign="middle">
									<html:select property="idCategoria" style="width: 250px">
										<html:option value="-1">Selecione</html:option>
										<logic:present name="listaTiposProduto">
											<html:options collection="listaTiposProduto" property="idTipoProduto" labelProperty="descricao"  />
										</logic:present>
									</html:select>
								</td>
							</tr>
						</table>

					</td>
					<td style="width: 15%; background-color: black;  border-radius: 5px;">
						&nbsp;
					</td>
				</tr>
			</table>
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

</html:html>
