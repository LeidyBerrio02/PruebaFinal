package com.semillerojava.demoversion.service;

import java.util.List;

import com.semillerojava.demoversion.model.Proyecto;

public interface ProyectoService{
	
	List<Proyecto> listar();
	Proyecto crear(Proyecto proyecto);
	Proyecto actualizar(Proyecto proyecto, Long idProyecto);
	boolean eliminar(Long idProyecto);

}
