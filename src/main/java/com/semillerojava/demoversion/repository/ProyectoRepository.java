package com.semillerojava.demoversion.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.semillerojava.demoversion.model.Proyecto;

public interface ProyectoRepository extends JpaRepository<Proyecto, Long>{

	@Query(value="Select * from proyecto", nativeQuery=true)
	List<Proyecto> listarTodo();
	
	Optional<Proyecto> findById(Long idProyecto);
	
	Optional<Proyecto> findByNombreProyecto(String nombreProyecto);
	
	Optional<Proyecto> findByEstado(String estado);
	
}
