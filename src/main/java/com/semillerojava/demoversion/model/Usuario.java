package com.semillerojava.demoversion.model;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Entity(name="usuario")
@Table(name="usuario")
public class Usuario {
	
	@Id
	@GeneratedValue (strategy = GenerationType.IDENTITY)
	private Long idUsuario;
	
	@NotBlank(message="Ingrese usuario valido")
	@NotNull(message="Ingrese usuario valido")
	@Column(name="usuario")
	private String usuario;

	@NotNull(message="Ingrese contrase�a valido")
	@NotBlank(message="Ingrese contrase�a valida")
	@Column(name="contrase�a")
	private String contrase�a;
	
	@Column(name="estado")
	private boolean estado;

	public Long getIdUsuario() {
		return idUsuario;
	}

	public void setIdUsuario(Long idUsuario) {
		this.idUsuario = idUsuario;
	}

	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getContrase�a() {
		return contrase�a;
	}

	public void setContrase�a(String contrase�a) {
		this.contrase�a = contrase�a;
	}

	public boolean isEstado() {
		return estado;
	}

	public void setEstado(boolean estado) {
		this.estado = estado;
	}
	
	
	

}
