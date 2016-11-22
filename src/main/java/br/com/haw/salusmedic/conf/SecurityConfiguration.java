package br.com.haw.salusmedic.conf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.csrf.CsrfFilter;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.web.filter.CharacterEncodingFilter;

import br.com.haw.salusmedic.service.UsuarioService;

@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {
	
	@Autowired
	private UsuarioService usuarioService;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		 auth.userDetailsService(usuarioService)
	       	 .passwordEncoder(new BCryptPasswordEncoder());
	}
	
	@Override
    protected void configure(HttpSecurity http) throws Exception {
		CharacterEncodingFilter encodingFilter = new CharacterEncodingFilter();
		encodingFilter.setEncoding("UTF-8");
		encodingFilter.setForceEncoding(true);
		http.addFilterBefore(encodingFilter, CsrfFilter.class);
        http.authorizeRequests()
    		.antMatchers("/resources/**").permitAll()
        	.anyRequest().authenticated()
        	.antMatchers("/").permitAll()
        	.and().formLogin().loginPage("/login").permitAll().defaultSuccessUrl("/dashboard")
        	.and().logout().logoutRequestMatcher(new AntPathRequestMatcher("/logout"));
	}

}