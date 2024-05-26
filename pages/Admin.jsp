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

function pesquisarBaterias(){
	var path = ("Home.do?op=abrirTelaPesquisaPorCaracteristicas");
	document.body.style.cursor = 'wait';
	document.forms[0].action = path;
	document.forms[0].submit();
}

function pesquisarBateriasPorVeiculo(){
	var path = ("Home.do?op=abrirTelaPesquisaPorVeiculo");
	document.body.style.cursor = 'wait';
	document.forms[0].action = path;
	document.forms[0].submit();
}

</script>

</head>
 
<body>

<html:form action="Home" enctype="multipart/form-data">

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
						
						<table style="width: 100%; border-collapse: collapse;">
							<tr>
								<td align="left" valign="middle" style="padding: 5px;">
									<font style="font-family: Verdana; color: #E65100; font-size: 16;">
										Produtos
									</font>
								</td>
							</tr>
							<tr>
								<td align="left" valign="middle" style="padding-left: 5px; padding-right: 5px">
									<font style="font-family: Verdana; font-size: 13;">
										<nobr>
											<a href="Admin.do?op=definirTipoProduto" style="text-decoration: none; padding-bottom: 5px; color: white;" onmouseover="this.style.fontWeight='bold'; this.style.color='#E65100'" onmouseleave="this.style.fontWeight='normal'; this.style.color='white'">
												Incluir Produto
											</a>
										</nobr>
									</font>
									<br/>
									<hr style="width: 100%; height: 1px; border: 0px; background-color: gray; margin-top: 0px; margin-bottom: 2px;">
								</td>
							</tr>
							<tr>
								<td align="left" valign="middle" style="padding-left: 5px; padding-right: 5px">
									<nobr>
										<font style="font-family: Verdana; font-size: 13;">
											<a href="" style="text-decoration: none; padding-bottom: 5px; color: white;" onmouseover="this.style.fontWeight='bold'; this.style.color='#E65100'" onmouseleave="this.style.fontWeight='normal'; this.style.color='white'">
												Consultar Produto
											</a>
										</font>
									</nobr>
									<br/>
									<hr style="width: 100%; height: 1px; border: 0px; background-color: gray; margin-top: 4px; margin-bottom: 2px;">
								</td>
							</tr>
							<tr>
								<td align="left" valign="middle" style="padding-left: 5px; padding-right: 5px">
									<nobr>
										<font style="font-family: Verdana; font-size: 13;">
											&nbsp;
										</font>
									</nobr>
									<br/>
									<hr style="width: 100%; height: 1px; border: 0px; background-color: gray; margin-top: 4px; margin-bottom: 2px;">
								</td>
							</tr>
							<tr>
								<td align="left" valign="middle" style="padding-left: 5px; padding-right: 5px">
									<nobr>
										<font style="font-family: Verdana; font-size: 13;">
											<a href="" style="text-decoration: none; padding-bottom: 5px; color: white;" onmouseover="this.style.fontWeight='bold'; this.style.color='#E65100'" onmouseleave="this.style.fontWeight='normal'; this.style.color='white'">
												&nbsp;
											</a> 
										</font>
									</nobr>
									<br/>
									<hr style="width: 100%; height: 1px; border: 0px; background-color: gray; margin-top: 4px; margin-bottom: 2px;">
								</td>
							</tr>
							<tr>
								<td align="left" valign="middle" style="padding-top: 15px; padding-left: 5px; padding-right: 5px; padding-bottom: 5px;">
									<font style="font-family: Verdana; color: #E65100; font-size: 16;">
										Outras Funções
									</font>
								</td>
							</tr>
							<tr>
								<td align="left" valign="middle" style="padding-left: 5px; padding-right: 5px">
									<font style="font-family: Verdana; font-size: 13;">
										<a href="" style="text-decoration: none; padding-bottom: 5px; color: white;" onmouseover="this.style.fontWeight='bold'; this.style.color='#E65100'" onmouseleave="this.style.fontWeight='normal'; this.style.color='white'">
											&nbsp;
										</a>
									</font>
									<br/>
									<hr style="width: 100%; height: 1px; border: 0px; background-color: gray; margin-top: 4px; margin-bottom: 2px;">
								</td>
							</tr>
							<tr>
								<td align="left" valign="middle" style="padding-left: 5px; padding-right: 5px">
									<font style="font-family: Verdana; font-size: 13;">
										<a href="" style="text-decoration: none; padding-bottom: 5px; color: white;" onmouseover="this.style.fontWeight='bold'; this.style.color='#E65100'" onmouseleave="this.style.fontWeight='normal'; this.style.color='white'">
											&nbsp;
										</a>
									</font>
									<br/>
									<hr style="width: 100%; height: 1px; border: 0px; background-color: gray; margin-top: 4px; margin-bottom: 2px;">
								</td>
							</tr>
							<tr>
								<td align="left" valign="middle" style="padding-left: 5px; padding-right: 5px">
									<nobr>
										<font style="font-family: Verdana; font-size: 13;">
											<a href="" style="text-decoration: none; padding-bottom: 5px; color: white;" onmouseover="this.style.fontWeight='bold'; this.style.color='#E65100'" onmouseleave="this.style.fontWeight='normal'; this.style.color='white'">
												&nbsp;
											</a> 
										</font>
									</nobr>
									<br/>
									<hr style="width: 100%; height: 1px; border: 0px; background-color: gray; margin-top: 4px; margin-bottom: 2px;">
								</td>
							</tr>
							<tr>
								<td align="left" valign="middle" style="padding-left: 5px; padding-right: 5px">
									<font style="font-family: Verdana; font-size: 13;">
										<a href="" style="text-decoration: none; padding-bottom: 5px; color: white;" onmouseover="this.style.fontWeight='bold'; this.style.color='#E65100'" onmouseleave="this.style.fontWeight='normal'; this.style.color='white'">
											&nbsp;
										</a>
									</font>
									<br/>
									<hr style="width: 100%; height: 1px; border: 0px; background-color: gray; margin-top: 4px; margin-bottom: 2px;">
								</td>
							</tr>
						</table>
						
					</td>
					<td style="width: 70%; padding-left: 6px; padding-right: 6px;" valign="top">
						
						<table style="width: 100%; border-collapse: collapse;">
							<tr height="30px;">
								<td style="background-color: #E65100; border-radius: 5px; padding-left: 5px;">
									<font style="font-family: Verdana; color: white; font-size: 16;">
										&nbsp;
									</font>
								</td>
							</tr>
							<tr>
								<td>
									&nbsp;
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
