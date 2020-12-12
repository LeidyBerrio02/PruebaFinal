<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
      
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario Actualización Proyecto</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
</head>
<body>

<div class="container">
<h2>Formulario Actualización Proyecto</h2><br>
<a href="../listar">Atrás</a>
<br>

<form:form action="../guardando" method="POST" modelAttribute="proyecto">
<c:forEach items="${lista}" var="proyecto">
<c:choose>
<c:when test="${proyecto.idProyecto == idProyecto}">
<div class="mb-2">
<form:input type="hidden" value="${proyecto.idProyecto }" class="form-control" id="exampleFormControlInput1" placeholder="${proyecto.idProyecto }" name="idProyecto" path="idProyecto"/>
  <label for="exampleFormControlInput1" class="form-label">Nombre Proyecto</label>
  <form:input type="text" value="${proyecto.nombreProyecto }" class="form-control" id="exampleFormControlInput1" placeholder="${proyecto.nombreProyecto}" name="nombreProyecto" path="nombreProyecto"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Area</label>
  <form:input type="text" value="${proyecto.area }" class="form-control" id="exampleFormControlInput1" placeholder="${proyecto.area }" name="area" path="area"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Presupuesto</label>
  <form:input type="number" value="${proyecto.presupuesto }" class="form-control" id="exampleFormControlInput1" placeholder="${proyecto.presupuesto }" name="presupuesto" path="presupuesto"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Responsable</label>
  <form:input type="text" value="${proyecto.responsable }" class="form-control" id="exampleFormControlInput1" placeholder="${proyecto.responsable }" name="responsable" path="responsable"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Duracion</label>
  <form:input type="text" value="${proyecto.duracion }" class="form-control" id="exampleFormControlInput1" placeholder="${proyecto.duracion }" name="duracion" path="duracion"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Fecha Creacion</label>
  <form:input type="Date" value="${proyecto.fechaCreacion }" class="form-control" id="exampleFormControlInput1" placeholder="${proyecto.fechaCreacion }" name="fechaCreacion" path="fechaCreacion"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Fecha Inicio</label>
  <form:input type="Date"  value="${proyecto.fechaInicio }" class="form-control" id="exampleFormControlInput1" placeholder="${proyecto.fechaInicio } }" name="fechaInicio" path="fechaInicio"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Fecha Fin</label>
  <form:input type="Date" value="${proyecto.fechaFin }" class="form-control" id="exampleFormControlInput1" placeholder="${proyecto.fechaFin }" name="fechaFin" path="fechaFin"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Usuario Creador</label>
  <form:input type="text" value="${proyecto.usuarioCreador }" class="form-control" id="exampleFormControlInput1" placeholder="${proyecto.usuarioCreador }" name="usuarioCreador" path="usuarioCreador"/>
</div>
<div class="mb-2">
<form:select path="estado" value="${proyecto.estado }">Ingrese una Opcion
<option value="Creado">Creado</option>
<option value="En proceso">En proceso</option>
<option value="Cancelado">Cancelado</option>
<option value="Finalizado">Finalizado</option>
<option value="Suspendido">Suspendido</option>
</form:select>
</div>

<input type="submit" class="btn btn-primary" value="Actualizar Proyecto">
</c:when>
				<c:otherwise>
					<!--  <h4>No existe</h4>-->
				</c:otherwise>
			</c:choose>
			</c:forEach>
</form:form>
</div>
</body>
</html>