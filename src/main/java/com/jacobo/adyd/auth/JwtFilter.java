package com.jacobo.adyd.auth;



import java.io.IOException;

import org.springframework.http.HttpStatus;
import org.springframework.web.filter.OncePerRequestFilter;
import org.springframework.web.server.ResponseStatusException;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.exceptions.AlgorithmMismatchException;
import com.auth0.jwt.exceptions.InvalidClaimException;
import com.auth0.jwt.exceptions.JWTDecodeException;
import com.auth0.jwt.exceptions.SignatureVerificationException;
import com.auth0.jwt.exceptions.TokenExpiredException;
import com.google.common.base.Strings;

import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.val;

public class JwtFilter extends OncePerRequestFilter {

	private final JWTVerifier verifier;
	
	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {
		if(request.getRequestURI().startsWith(("/login"))){
			filterChain.doFilter(request, response);
			return;
		}
		val requestTokenHeader = request.getHeader("Authorization");

	        if (Strings.isNullOrEmpty(requestTokenHeader)) {
	            throw new ResponseStatusException(HttpStatus.UNAUTHORIZED, "log first");
	        }
	        try {
	        	validateToken(request, response, filterChain, requestTokenHeader);
	        } catch (AlgorithmMismatchException e) {
	            log.atSevere().withCause(e).withStackTrace(StackSize.SMALL).log("Wrong algorithm. The algorithm used does not match the corresponding one in the token header");
	            throw new TokenValidityException(e);
	        } catch (SignatureVerificationException e) {
	            log.atSevere().withCause(e).withStackTrace(StackSize.SMALL).log("Invalid signature. The value of secret is incorrect");
	            throw new TokenValidityException(e);
	        } catch (InvalidClaimException e) {
	            log.atSevere().withCause(e).withStackTrace(StackSize.SMALL).log("Wrong audience. Required audiences are missing");
	            throw new TokenValidityException(e);
	        } catch (JWTDecodeException e) {
	            if (e.getMessage().contains("token was expected")) {
	                log.atSevere().withCause(e).withStackTrace(StackSize.SMALL).log("JWT decoding failed. The token does not contain the necessary three distinct parts.");
	            } else {
	                log.atSevere().withCause(e).withStackTrace(StackSize.SMALL).log("Invalid decoding. The token format is incorrect.");
	            }
	            throw new TokenValidityException(e);
	        } catch (TokenExpiredException e) {
	            log.atSevere().withCause(e).withStackTrace(StackSize.SMALL).log(e.getMessage());
	            val jwt = JWT.decode(requestTokenHeader.substring(7));
	            closeSession(jwt);
	            throw new TokenValidityException(e);
	        }

	}

	private void validateToken(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain,
			String requestTokenHeader) {
		verifier.verify(requestTokenHeader);
		
	}

}
