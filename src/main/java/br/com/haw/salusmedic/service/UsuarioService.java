package br.com.haw.salusmedic.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationCredentialsNotFoundException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import br.com.haw.salusmedic.dao.PerfilDao;
import br.com.haw.salusmedic.dao.UsuarioDao;
import br.com.haw.salusmedic.model.Perfil;
import br.com.haw.salusmedic.model.Usuario;

@Service
public class UsuarioService implements UserDetailsService{

	@Autowired private UsuarioDao usuarioDao;
	@Autowired private PerfilDao perfilDao;
	private List<Perfil> perfis;
	
	@Override
	public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
		return  usuarioDao.findOneByLogin(login);
	}
	
	public Usuario criarPrestador(String cpf, List<Perfil> perfis){
		Usuario novoUsuario = new Usuario();
		novoUsuario.setLogin(cpf.replaceAll("[^0-9]*", ""));
		novoUsuario.setSenha("$2a$04$qP517gz1KNVEJUTCkUQCY.JzEoXzHFjLAhPQjrg5iP6Z/UmWjvUhq");
		novoUsuario.setAlterouAsenha(false);
		novoUsuario.setPerfis(perfis);
		return novoUsuario;
	}
	
	public Usuario criarPaciente(String cpf, List<Perfil> perfis){
		Usuario novoUsuario = new Usuario();
		novoUsuario.setLogin(cpf.replaceAll("[^0-9]*", ""));
		novoUsuario.setSenha("$2a$04$qP517gz1KNVEJUTCkUQCY.JzEoXzHFjLAhPQjrg5iP6Z/UmWjvUhq");
		novoUsuario.setAlterouAsenha(false);
		novoUsuario.setPerfis(perfis);
		return novoUsuario;
	}
	
	public Usuario getUsuarioLogado(){
		Authentication autenticado = SecurityContextHolder.getContext().getAuthentication();
		if(autenticado == null) throw new AuthenticationCredentialsNotFoundException("Usuario não logado");
		UserDetails usuarioLogado = (UserDetails) autenticado.getPrincipal();
		return usuarioDao.findOneByLogin(usuarioLogado.getUsername());
	}
}
