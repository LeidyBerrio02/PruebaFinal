<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Crear Persona</title>
</head>
<body>

<div class="container">
<br><br>	
<h2>Registrar Persona</h2>
<br><br>
<form:form action="guardando" method="POST" modelAttribute="proyecto">

<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Nombre</label>
  <form:input type="text" class="form-control" id="exampleFormControlInput1" placeholder="nombre" name="nombreProyecto" path="nombreProyecto"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Area</label>
  <form:input type="text" class="form-control" id="exampleFormControlInput1" placeholder="area" name="area" path="area"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Presupuesto</label>
  <form:input type="number" class="form-control" id="exampleFormControlInput1" placeholder="presupuesto" name="presupuesto" path="presupuesto"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Responsable</label>
  <form:input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Responsabe" name="responsable" path="responsable"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Duracion</label>
  <form:input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Duracion" name="duracion" path="duracion"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Fecha de Creacion</label>
  <form:input type="date" class="form-control" id="exampleFormControlInput1" placeholder="" name="fechaCreacion" path="fechaCreacion"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Fecha Inicio</label>
  <form:input type="Date" class="form-control" id="exampleFormControlInput1" placeholder="Fecha de Inicio" name="fechaInicio" path="fechaInicio"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Fecha Fin</label>
  <form:input type="Date" class="form-control" id="exampleFormControlInput1" placeholder="Fecha Finalizacion" name="fechaFin" path="fechaFin"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Usuario creador</label>
  <form:input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Usuario Creador" name="usuarioCreador" path="usuarioCreador"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Estado</label>
  <form:select path="estado">
<form:option value="Creado">Creado</form:option>
<form:option value="En proceso">En proceso</form:option>
<form:option value="Cancelado">Cancelado</form:option>
<form:option value="Finalizado">Finalizado</form:option>
<form:option value="Suspendido">Suspendido</form:option>
</form:select>
  </div>



<br>
<input type="submit" class="btn btn-primary" value="Registrar">
</form:form>
</div>

</body>
</html>

<!--  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario Registro Proyecto</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
</head>
<body>

<div class="container">
<h2>Formulario Registro Proyecto</h2><br>
<a href="listar">Atrás</a>
<br>

<form:form action="guardando" modelAttribute="proyecto" method="POST">

<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Nombre Proyecto</label>
  <form:input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre del proyecto" name="nombreProyecto" path="nombreProyecto"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Area</label>
  <form:input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Área" name="area" path="area"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Presupuesto</label>
  <form:input type="number" class="form-control" id="exampleFormControlInput1" placeholder="Presupuesto" name="presupuesto" path="presupuesto"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Responsable</label>
  <form:input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Responsable" name="responsable" path="responsable"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Duracion</label>
  <form:input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Duracion" name="duracion" path="duracion"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Fecha Creacion</label>
  <form:input type="Date" class="form-control" id="exampleFormControlInput1" placeholder="Fecha de Creacion" name="fechaCreacion" path="fechaCreacion"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Fecha Inicio</label>
  <form:input type="Date" class="form-control" id="exampleFormControlInput1" placeholder="Fecha de Inicio" name="fechaInicio" path="fechaInicio"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Fecha Fin</label>
  <form:input type="Date" class="form-control" id="exampleFormControlInput1" placeholder="Fecha Finalizacion" name="fechaFin" path="fechaFin"/>
</div>
<div class="mb-2">
  <label for="exampleFormControlInput1" class="form-label">Usuario Creador</label>
  <form:input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Usuario Creador" name="usuarioCreador" path="usuarioCreador"/>
</div>
<div class="mb-2">
<select>
<option value="Creado">Creado</option>
<option value="En proceso">En proceso</option>
<option value="Cancelado">Cancelado</option>
<option value="Finalizado">Finalizado</option>
<option value="Suspendido">Suspendido</option>
</select>
</div><br>
<input type="submit" class="btn btn-primary" value="Registrar">

</form:form>


</div>
</body>
</html>-->
