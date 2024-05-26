<script>

function home(){
	var path = ("Home.do?op=inicio");
	document.forms[0].action = path;
	document.forms[0].submit();
}

</script>
			
			
			<table border="0" style="width: 100%; height: 70; background-color: #1C1C1C; border-radius: 20px" onclick="home();" onmouseover="document.body.style.cursor = 'hand';" onmouseout="document.body.style.cursor = 'default';">
				<tr>
					<td align="left" width="55%" class="titulo1Branco">
						&nbsp;&nbsp;&nbsp;
						12 Volts - Baterias Automotivas
					</td>
					<td align="right" width="43%" class="titulo3Branco" valign="middle">
						Ligue agora:
						&nbsp;&nbsp;
						(61) 99953-8425<img alt="" border="0" src='<%=request.getContextPath()%>/imgs/zap.png' style="width: 70px; "  />
					</td>
					<td align="center" width="2%" class="txtBranco">
						&nbsp;
					</td>
				</tr>
			</table>