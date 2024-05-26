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
 
<body background="<%=request.getContextPath()%>/imgs/default_background.jpg">

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
			<table border="0" style="width: 100%">
				<tr>
					<td colspan="5">
						&nbsp;
					</td>
				</tr>
				<tr>
					<td width="2%">
						&nbsp;
					</td>
					<td width="47%" align="center" valign="middle">
						<input type="button" value="Pesquisar Baterias pelo Veículo" class="btn_pesquisar3" onmouseover="this.style.cursor='pointer'" title="Pesquisar" onclick="pesquisarBateriasPorVeiculo()" />
						<br/><br/><br/>
						<input type="button" value="Pesquisar Baterias pelas Caracteríticas" class="btn_pesquisar3" onmouseover="this.style.cursor='pointer'" title="Pesquisar" onclick="pesquisarBaterias()" />
					</td>
					<td width="2%">
						&nbsp;
					</td>
					<td align="center" valign="top" width="47%">

						<!-- Slideshow container -->
						<div class="slideshow-container">

						  <!-- Full-width images with number and caption text -->
						  <div class="mySlides fade">
						    <jsp:include page="tabelaPromocao1.jsp" />
						  </div>

						  <div class="mySlides fade">
						    <jsp:include page="tabelaPromocao2.jsp" />
						  </div>

						  <div class="mySlides fade">
						    <jsp:include page="tabelaPromocao3.jsp" />
						  </div>

						</div>

						<br>

						<!-- The dots/circles -->
						<div style="text-align:center">
						  <span class="dot" onclick="currentSlide(1)"></span> 
						  <span class="dot" onclick="currentSlide(2)"></span> 
						  <span class="dot" onclick="currentSlide(3)"></span> 
						</div>


					</td>
					<td width="2%">
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
	<tr height="60px">
		<td>
			<jsp:include page="rodape.jsp" />
		</td>
		
	</tr>
</table>

</html:form>

</body>

<script>
	showSlides();
</script>

</html:html>
