package br.com.haw.salusmedic.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import br.com.haw.salusmedic.dao.UsuarioDao;

@Service
public class UsuarioService implements UserDetailsService{

	@Autowired
	private UsuarioDao usuarioDao;
	
	@Override
	public UserDetails loadUserByUsername(String login) throws UsernameNotFoundException {
		return  usuarioDao.findOneByLogin(login);
	}
}
