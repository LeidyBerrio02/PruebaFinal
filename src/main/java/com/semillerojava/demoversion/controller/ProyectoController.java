package com.semillerojava.demoversion.controller;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import com.semillerojava.demoversion.model.Proyecto;
import com.semillerojava.demoversion.service.ProyectoService;

@Controller
@RequestMapping("/proyecto")
public class ProyectoController {

	// inyeccion de dependencias
	@Autowired
	private ProyectoService proyectoService;

	/*@GetMapping("/listar")
	public List<Proyecto> listarProyecto() {
		return proyectoService.listar();
	}
	
	@PostMapping
	public Proyecto crearProyecto(@RequestBody Proyecto proyecto) {
		return proyectoService.crear(proyecto);
	}
	
	@PutMapping("/{idProyecto}")
	public Proyecto actulizarProyecto(@RequestBody Proyecto proyecto,@PathVariable Long idProyecto) {
		return proyectoService.actualizar(proyecto, idProyecto);
	}*/
	
	@GetMapping("eliminar/{idProyecto}")
	public String eliminarProyecto(@PathVariable Long idProyecto) {
		 proyectoService.eliminar(idProyecto);
		 return "redirect:/proyecto/listar";
	}
	
	@GetMapping("/listar")
	public String listarProyecto(Model modelo) {
		List<Proyecto> lista = proyectoService.listar();
		modelo.addAttribute("lista",lista);
		return "listarProyecto";
	}
	
	@GetMapping("/mostrarFormulario")
	public String mostrarFormulario(Model modelo){
		Proyecto proyecto = new Proyecto();
		modelo.addAttribute("proyecto", proyecto);
		return "FormularioProyecto";
	}
	
	@PostMapping("/guardando")
	public String registrarProyecto(@ModelAttribute("proyecto")Proyecto proyectoNuevo) {
		proyectoService.crear(proyectoNuevo);
		return "redirect:/proyecto/listar";
	}
	
	
	@GetMapping("/actualizar/{idProyecto}")
	public String formularioActualizar(Model modelo, @PathVariable("idProyecto") Long idProyecto){
		List<Proyecto> lista = proyectoService.listar();
		Proyecto proyect = new Proyecto();
		modelo.addAttribute("lista",lista);
		System.out.println("idProyecto "+ idProyecto);
		modelo.addAttribute("proyecto", proyect);
		modelo.addAttribute("idProyecto", idProyecto);
		
		return "FormularioActualizacionProyecto";
	}

	
}
