<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lista de Proyectos</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1"
	crossorigin="anonymous">
</head>
<body>
	<h2>Listado de Proyectos</h2>
	<br>
	<a href="mostrarFormulario">Crear Nuevo Registro</a>
	<br>
	<br>
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th scope="col">Nombre Proyecto</th>
				<th scope="col">Area Encargada</th>
				<th scope="col">Presupuesto</th>
				<th scope="col">Responsable</th>
				<th scope="col">Duración</th>
				<th scope="col">Fecha Creacion</th>
				<th scope="col">Fecha Inicio</th>
				<th scope="col">Fecha Fin</th>
				<th scope="col">Usuario Creador</th>
				<th scope="col">Estado</th>
				<th scope="col">EDITAR</th>
				<th scope="col">ELIMINAR</th>
				
			</tr>
		</thead>

		<tbody>

			<c:forEach items="${lista }" var="proyecto">
				<tr>
					<td>${proyecto.nombreProyecto}</td>
					<td>${proyecto.area }</td>
					<td>$ ${proyecto.presupuesto }</td>
					<td>${proyecto.responsable }</td>
					<td>${proyecto.duracion }</td>
					<td>${proyecto.fechaCreacion}</td>
					<td>${proyecto.fechaInicio }</td>
					<td>${proyecto.fechaFin }</td>
					<td>${proyecto.usuarioCreador }</td>
					<td>${proyecto.estado }</td>
					<td><a href="actualizar/${proyecto.idProyecto}"><button type="button" class="btn btn-primary" value="${proyecto.idProyecto }">Editar</button></a></td>
					<td><a href="eliminar/${proyecto.idProyecto}"><button type="button" class="btn btn-danger" value="${proyecto.idProyecto }">Eliminar</button></a></td>
									</tr>
			</c:forEach>

		</tbody>


	</table>


</body>
</html>