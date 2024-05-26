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
		<td align="center" valign="middle" style="padding-left: 10px; padding-right: 10px; padding-bottom: 3px; padding-top: 5px;">
			<hr style="width: 100%; margin: 0px;">
		</td>
	</tr>
	<tr>
		<td style="height: 20px; padding-left: 10px; padding-right: 10px;">

			<table style="width: 100%; height: 100%; border-collapse: collapse;">
				<tr>
					<td style="width: 10%" align="center" valign="middle">
						<font style="font-family: Verdana; color: black; font-size: 14; font-weight: bold;">
							Teste
						</font>
					</td>
					<td style="width: 10%" align="center" valign="middle">
						<font style="font-family: Verdana; color: black; font-size: 14; font-weight: bold;">
							Teste
						</font>
					</td>
					<td style="width: 10%" align="center" valign="middle">
						<font style="font-family: Verdana; color: black; font-size: 14; font-weight: bold;">
							Teste
						</font>
					</td>
					<td style="width: 10%" align="center" valign="middle">
						<font style="font-family: Verdana; color: black; font-size: 14; font-weight: bold;">
							Teste
						</font>
					</td>
					<td style="width: 60%" align="center" valign="middle">
						&nbsp;
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
										Baterias
									</font>
								</td>
							</tr>
							<tr>
								<td align="left" valign="middle" style="padding-left: 5px; padding-right: 5px">
									<font style="font-family: Verdana; font-size: 13;">
										<nobr>
											<a href="" style="text-decoration: none; padding-bottom: 5px; color: white;" onmouseover="this.style.fontWeight='bold'; this.style.color='#E65100'" onmouseleave="this.style.fontWeight='normal'; this.style.color='white'">
												Encontre sua Bateria
											</a>
											<img alt="Encontre sua bateria pelo modelo do veículo!" src="./imgs/letf_finger.png" width="26px;" style="padding-left: 4px;" onmouseover="this.style.cursor='pointer'" onmouseleave="this.style.cursor='default'">
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
												Baterias Automotivas
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
											<a href="" style="text-decoration: none; padding-bottom: 5px; color: white;" onmouseover="this.style.fontWeight='bold'; this.style.color='#E65100'" onmouseleave="this.style.fontWeight='normal'; this.style.color='white'">
												Baterias Estacionárias
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
											<a href="" style="text-decoration: none; padding-bottom: 5px; color: white;" onmouseover="this.style.fontWeight='bold'; this.style.color='#E65100'" onmouseleave="this.style.fontWeight='normal'; this.style.color='white'">
												Baterias para No-Break
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
										Outras Categorias
									</font>
								</td>
							</tr>
							<tr>
								<td align="left" valign="middle" style="padding-left: 5px; padding-right: 5px">
									<font style="font-family: Verdana; font-size: 13;">
										<a href="" style="text-decoration: none; padding-bottom: 5px; color: white;" onmouseover="this.style.fontWeight='bold'; this.style.color='#E65100'" onmouseleave="this.style.fontWeight='normal'; this.style.color='white'">
											Acessórios
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
											Fontes/Carregadores
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
												Cabo Auxiliar de Partida
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
											Iluminação/Faróis Auxiliares
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
										Baterias em Promoção!
									</font>
								</td>
							</tr>
							<tr>
								<td>

									<table style="border-collapse: collapse; width: 100%">
										<tr>
											<td width="5%">
												&nbsp;
											</td>
											<td align="center" valign="top" style="padding-left: 10px; padding-right: 10px; padding-top: 10px;" width="18%">

												<table style="width: 100%; height: 100%; border-collapse: collapse;" border="0">
													<tr>
														<td align="center" valign="middle" style="padding-left: 0px; padding-right: 0px; padding-top: 0px; padding-bottom: 0px;">

															<table border="1" style="width: 100%; border-collapse: collapse;">
																<tr>
																	<td align="center" valign="middle" height="100px;">
																		<img src="./imgs/baterias/M60GD.png" style="height: 90px;">
																	</td>
																</tr>
															</table>

														</td>
													</tr>
													<tr>
														<td>
															<nobr>
																<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C;">
																	Bateria Moura M60GD
																</font>
															</nobr>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C;">
																60 Amperes
															</font>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C;">
																24 Meses de Garantia
															</font>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C; text-decoration: line-through;">
																R$ 450,00
															</font>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #E65100;">
																R$ 420,00
															</font>
														</td>
													</tr>
												</table>
												
											</td>
											<td align="center" valign="top" style="padding-left: 10px; padding-right: 10px; padding-top: 10px;" width="18%">
											
												<table style="width: 100%; height: 100%; border-collapse: collapse;" border="0">
													<tr>
														<td align="center" valign="middle" style="padding-left: 0px; padding-right: 0px; padding-top: 0px; padding-bottom: 0px;">

															<table border="1" style="width: 100%; border-collapse: collapse;">
																<tr>
																	<td align="center" valign="middle" height="100px;">
																		<img src="./imgs/baterias/S5X90DA.png" style="height: 90px;">
																	</td>
																</tr>
															</table>

														</td>
													</tr>
													<tr>
														<td>
															<nobr>
																<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C;">
																	Bateria Bosch S5X90DA
																</font>
															</nobr>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C;">
																90 Amperes
															</font>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C;">
																18 Meses de Garantia
															</font>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C; text-decoration: line-through;">
																R$ 690,00
															</font>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #E65100;">
																R$ 625,00
															</font>
														</td>
													</tr>
												</table>
											
											</td>
											<td align="center" valign="top" style="padding-left: 10px; padding-right: 10px; padding-top: 10px;" width="18%">

												<table style="width: 100%; height: 100%; border-collapse: collapse;" border="0">
													<tr>
														<td align="center" valign="middle" style="padding-left: 0px; padding-right: 0px; padding-top: 0px; padding-bottom: 0px;">

															<table border="1" style="width: 100%; border-collapse: collapse;">
																<tr>
																	<td align="center" valign="middle" height="100px;">
																		<img src="./imgs/baterias/pioneiro_padrao_18m.png" style="height: 90px;">
																	</td>
																</tr>
															</table>

														</td>
													</tr>
													<tr>
														<td>
															<nobr>
																<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C;">
																	Bateria Pioneiro F52EC
																</font>
															</nobr>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C;">
																52 Amperes
															</font>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C;">
																24 Meses de Garantia
															</font>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C; text-decoration: line-through;">
																R$ 469,00
															</font>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #E65100;">
																R$ 440,00
															</font>
														</td>
													</tr>
												</table>
												
											</td>
											<td align="center" valign="top" style="padding-left: 10px; padding-right: 10px; padding-top: 10px;" width="18%">

												<table style="width: 100%; height: 100%; border-collapse: collapse;" border="0">
													<tr>
														<td align="center" valign="middle" style="padding-left: 0px; padding-right: 0px; padding-top: 0px; padding-bottom: 0px;">

															<table border="1" style="width: 100%; border-collapse: collapse;">
																<tr>
																	<td align="center" valign="middle" height="100px;">
																		<img src="./imgs/baterias/HF60DD.png" style="height: 90px;">
																	</td>
																</tr>
															</table>

														</td>
													</tr>
													<tr>
														<td>
															<nobr>
																<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C;">
																	Bateria Heliar HNP60DD
																</font>
															</nobr>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C;">
																60 Amperes
															</font>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C;">
																24 Meses de Garantia
															</font>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C; text-decoration: line-through;">
																R$ 395,00
															</font>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #E65100;">
																R$ 365,00
															</font>
														</td>
													</tr>
												</table>
												
											</td>
											<td align="center" valign="top" style="padding-left: 10px; padding-right: 10px; padding-top: 10px;" width="18%">

												<table style="width: 100%; height: 100%; border-collapse: collapse;" border="0">
													<tr>
														<td align="center" valign="middle" style="padding-left: 0px; padding-right: 0px; padding-top: 0px; padding-bottom: 0px;">

															<table border="1" style="width: 100%; border-collapse: collapse;">
																<tr>
																	<td align="center" valign="middle" height="100px;">
																		<img src="./imgs/baterias/pioneiro_padrao.png" style="height: 90px;">
																	</td>
																</tr>
															</table>

														</td>
													</tr>
													<tr>
														<td>
															<nobr>
																<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C;">
																	Bateria Pioneiro F60DG
																</font>
															</nobr>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C;">
																60 Amperes
															</font>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C;">
																24 Meses de Garantia
															</font>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #3A3B3C; text-decoration: line-through;">
																R$ 376,00
															</font>
														</td>
													</tr>
													<tr>
														<td>
															<font style="font-family: Verdana; font-size: 10; font-weight: bold; color: #E65100;">
																R$ 339,00
															</font>
														</td>
													</tr>
												</table>
												
											</td>
											<td width="5%">
												&nbsp;
											</td>
										</tr>
										<tr>
											<td colspan="7">
												&nbsp;
											</td>
										</tr>
									</table>

								</td>
							</tr>
							<tr height="30px;">
								<td style="background-color: #E65100; border-radius: 5px; padding-left: 5px;">
									<font style="font-family: Verdana; color: white; font-size: 16;">
										Teste
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
