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
 
 <!-- #292929  background='< %=request.getContextPath()%>/imgs/bg01.jpg' -->
<body bgcolor="#FFFFFF" style="margin-left: 0; margin-right: 0; margin-top: 3;" >

<html:form action="Home" enctype="multipart/form-data" method="get">
 
<div id="div_header" style="background-color: #FFFFFF; width: 100%; margin: 0 auto; overflow: auto; position: fixed; left: 0; top: 0;">
	<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/Header02.png' style="width: 100%"/>
</div>
 
<div id="div_sub_header" style="background-color: #FFFFFF; width: 100%; margin: 0 auto; overflow: auto; margin-top: 135;">
	<!-- <img alt="" border="0" src='< %=request.getContextPath()%>/imgs/logos/banner_01.jpg' style="width: 100%"/> -->
</div>

 
<div align="center" style="width: 100%; margin-top: 60;">
	<div style="margin: 0 auto; display: inline; margin-rigth: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_HG38JD.png' title="" style="cursor: hand;" />
	</div>
	<div style="margin: 0 auto; display: inline; margin-left: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_HG45JE.png' title="" style="cursor: hand;" />
	</div>
	<div style="margin: 0 auto; display: inline; margin-left: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_HG50JD.png' title="" style="cursor: hand;" />
	</div>
</div>

<div align="center" style="width: 100%; margin-top: 60;">
	<div style="margin: 0 auto; display: inline; margin-rigth: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_HG50GD.png' title="" style="cursor: hand;" />
	</div>
	<div style="margin: 0 auto; display: inline; margin-left: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_HF52GD.png' title="" style="cursor: hand;" />
	</div>
	<div style="margin: 0 auto; display: inline; margin-left: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_HG60DD.png' title="" style="cursor: hand;" />
	</div>
</div>

<div align="center" style="width: 100%; margin-top: 60;">
	<div style="margin: 0 auto; display: inline; margin-rigth: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_HG60HD.png' title="" style="cursor: hand;" />
	</div>
	<div style="margin: 0 auto; display: inline; margin-left: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_HF60DD.png' title="" style="cursor: hand;" />
	</div>
	<div style="margin: 0 auto; display: inline; margin-left: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_HF60HD.png' title="" style="cursor: hand;" />
	</div>
</div>

<div align="center" style="width: 100%; margin-top: 60;">
	<div style="margin: 0 auto; display: inline; margin-rigth: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_S6X60D.png' title="" style="cursor: hand;" />
	</div>
	
	<div style="margin: 0 auto; display: inline; margin-left: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_HF65HD.png' title="" style="cursor: hand;" />
	</div>
	<div style="margin: 0 auto; display: inline; margin-left: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_HG70ND.png' title="" style="cursor: hand;" />
	</div>
</div>

<div align="center" style="width: 100%; margin-top: 60;">
	<div style="margin: 0 auto; display: inline; margin-rigth: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_HG70PD.png' title="" style="cursor: hand;" />
	</div>
	<div style="margin: 0 auto; display: inline; margin-left: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_S6X70D.png' title="" style="cursor: hand;" />
	</div>
	<div style="margin: 0 auto; display: inline; margin-left: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_HF75PD.png' title="" style="cursor: hand;" />
	</div>
</div>

<div align="center" style="width: 100%; margin-top: 60;">

<!-- 

	<div style="margin: 0 auto; display: inline; margin-rigth: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_HF70ND.png' title="" style="cursor: hand;" />
	</div>
	<div style="margin: 0 auto; display: inline; margin-left: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_HF75PD.png' title="" style="cursor: hand;" />
	</div>
	
 -->
 
	<div style="margin: 0 auto; display: inline; margin-left: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_HG90LD.png' title="" style="cursor: hand;" />
	</div>
</div>

<div align="center" style="width: 100%; margin-top: 60;">
	<div style="margin: 0 auto; display: inline; margin-rigth: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_HG95MD.png' title="" style="cursor: hand;" />
	</div>
	<div style="margin: 0 auto; display: inline; margin-left: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_RT100LE.png' title="" style="cursor: hand;" />
	</div>
	<div style="margin: 0 auto; display: inline; margin-left: 70;">
		<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/box/box_RTV150TD.png' title="" style="cursor: hand;" />
	</div>
</div>

</html:form>

</body>

<!-- 
<script>
	showSlides();
</script>
 -->

</html:html>
