<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Home</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<style>
	.allDiv{
		width:100%;
		display:flex;
		display:inline-flex;
	}
	.leftDiv{
		width:10%;
	}
	.centerDiv{
		width:80%;
	}
	.rightDiv{
		width:10%;
	}
	.headerTable{
		width:100%;
		padding-top:5%;
	}
	.header-mid-Table{
		width:100%;
		padding-top:5%;
		border-collapse:separate;
		border-spacing:5px;
	}
	.regButton{
		height: 40px;
		float:right;
		background-color:#20ADEE;
		color:white;
		border:0;
	}
	.title{
		font-size:34px;
		transform:rotate(-30deg);
		color:#345461;
	}
	.headerTd{
		width:33.3%;
	}
	.header-mid-Td{
		padding:5px;
		padding-top:15px;
		width:33.3%;
		height:75px;
		color:white;
		background-color:#345461;
	}
	h3{
		font-size: 1.4em;
	}
	.content{
		width:100%;
		display:flex;
		display:inline-flex;
	}
	.content-table{
		width:33.3%;
		border-collapse: separate;
   		border-spacing: 3px;
		
	}
	.content-td{
	    line-height: 200%;
		padding: 15px;
		background-color:#CEE5EF;
		height:75px;
		color:#345461;
	}
	.title-td{
		color:black;
		font-size:18px;
	}
</style>

<script>
	function goReg(){
		document.getElementById("goReg").submit();
	}
	
	function clickButton(id,type,button){
		
		
		$.ajax({
			
			url:"updateTodo",
			data: {
				id:id,
				type:type
			},
			type:"post",
			success:function(returnData){
				
				if(type=="TODO"){
					button.setAttribute("onclick","clickButton("+id+",'DOING',this)");
					var tr=document.getElementById(id);
					var trContent="<tr id="+id+">"+tr.innerHTML+"</tr>";
					document.getElementById("doing").innerHTML+=trContent;
				}else if(type=="DOING"){
					button.setAttribute("onclick","clickButton("+id+",'DONE',this)");
					var tr=document.getElementById(id);
					var trContent="<tr id="+id+">"+tr.innerHTML+"</tr>";
					document.getElementById("done").innerHTML+=trContent;
				}else if(type=="DONE"){
					var tr=document.getElementById(id);
					tr.parentNode.removeChild(tr);
				}
				tr.parentNode.removeChild(tr);
				
			}
			
		});
		
		
		
		
		
	}
</script>
<body>

	<form action="goReg" id="goReg">
	</form>
	<div class="allDiv">
		<div class="leftDiv"></div>
		<div class="centerDiv">
		<table class="headerTable">
		<tr>
			<td class="headerTd"><h2 class="title">나의 해야할 일들</h2></td>
			<td class="headerTd"></td>
			<td class="headerTd"><button onclick="goReg()" class="regButton">새로운 TODO 등록</button></td></tr>
		</table>
		<table class="header-mid-Table">
		<tr>
			<td class="header-mid-Td"><h3>TODO</h3></td>
			<td class="header-mid-Td"><h3>DOING</h3></td>
			<td class="header-mid-Td"><h3>DONE</h3></td></tr>
		</table>
		
		<div class="content">
		
		<table class="content-table" id="todo">
		<c:forEach var="todo" items="${todoList}">
			<c:if test="${todo.type=='TODO'}">
				<tr id="${todo.id}">
					<td class="content-td">
						<b class="title-td">${todo.title}</b><br>
						등록날짜:${todo.regdate},${todo.name},우선순위${todo.seq}<button onclick="clickButton(${todo.id},'${todo.type}',this)">></button>
					</td>
				</tr>
			</c:if>
		</c:forEach>
		</table>
		<table class="content-table" id="doing">
		<c:forEach var="todo" items="${todoList}">
			<c:if test="${todo.type=='DOING'}">
				<tr id="${todo.id}">
					<td class="content-td">
						<b class="title-td">${todo.title}</b><br>
						등록날짜:${todo.regdate},${todo.name},우선순위${todo.seq}<button onclick="clickButton(${todo.id},'${todo.type}',this)">></button>
					</td>
				</tr>
			</c:if>
		</c:forEach>
		</table>
		<table class="content-table" id="done">
		<c:forEach var="todo" items="${todoList}">
			<c:if test="${todo.type=='DONE'}">
				<tr id="${todo.id}">
					<td class="content-td">
						<b class="title-td">${todo.title}</b><br>
						등록날짜:${todo.regdate},${todo.name},우선순위${todo.seq}<button onclick="clickButton(${todo.id},'${todo.type}',this)">></button>
					</td>
				</tr>
			</c:if>
		</c:forEach>
		</table>
		
		
		</div>
		
		
		
		</div>
		<div class="rightDiv"></div>
	</div>


</body>
</html>
