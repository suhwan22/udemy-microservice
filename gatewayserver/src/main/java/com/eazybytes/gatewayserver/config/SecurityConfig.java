package com.eazybytes.gatewayserver.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.reactive.EnableWebFluxSecurity;
import org.springframework.security.config.web.server.ServerHttpSecurity;
import org.springframework.security.web.server.SecurityWebFilterChain;

@Configuration
@EnableWebFluxSecurity
public class SecurityConfig {

	@Bean
	public SecurityWebFilterChain securityWebFilterChain(ServerHttpSecurity serverHttpSecurity) {
		serverHttpSecurity.authorizeExchange((auth)->auth.pathMatchers(HttpMethod.GET).permitAll()
				.pathMatchers("/eazybank/accounts/**").authenticated()
				.pathMatchers("/eazybank/cards/**").authenticated()
				.pathMatchers("/eazybank/loans/**").authenticated())
				.oauth2ResourceServer((oauth)->oauth.jwt(Customizer.withDefaults()));

		serverHttpSecurity.csrf((auth)->auth.disable());

		return serverHttpSecurity.build();
	}
}
