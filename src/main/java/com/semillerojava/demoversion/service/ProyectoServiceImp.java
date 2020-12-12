package com.semillerojava.demoversion.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.semillerojava.demoversion.model.Proyecto;
import com.semillerojava.demoversion.repository.ProyectoRepository;

@Service
public class ProyectoServiceImp implements ProyectoService {

	// inyecion de dependencias
	@Autowired
	private ProyectoRepository proyectoRepository;

	@Override
	public List<Proyecto> listar() {
		return proyectoRepository.findAll();

	}

	@Override
	public Proyecto crear(Proyecto proyecto) {
		return proyectoRepository.save(proyecto);
	}

	@Override
	public Proyecto actualizar(Proyecto proyecto, Long idProyecto) {
		Proyecto proyectoenBD = proyectoRepository.findById(idProyecto).orElse(null);
		if (proyecto != null) {
			proyectoenBD.setArea(proyecto.getArea());
			proyectoenBD.setDuracion(proyecto.getDuracion());
			proyectoenBD.setEstado(proyecto.getEstado());
			proyectoenBD.setFechaCreacion(proyecto.getFechaCreacion());
			proyectoenBD.setFechaInicio(proyecto.getFechaInicio());
			proyectoenBD.setFechaFin(proyecto.getFechaFin());
			proyectoenBD.setNombreProyecto(proyecto.getNombreProyecto());
			proyectoenBD.setUsuarioCreador(proyecto.getUsuarioCreador());
			proyectoenBD.setPresupuesto(proyecto.getPresupuesto());
			proyectoenBD.setResponsable(proyecto.getResponsable());

		}

		return proyectoRepository.save(proyectoenBD);
	}

	@Override
	public boolean eliminar(Long idProyecto) {
		if (proyectoRepository.existsById(idProyecto)) {
			proyectoRepository.deleteById(idProyecto);
			return true;
		}
		return false;
	}

}
