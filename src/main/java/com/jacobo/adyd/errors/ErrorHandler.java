package com.jacobo.adyd.errors;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.HttpStatusCode;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

import lombok.extern.slf4j.Slf4j;

@ControllerAdvice
@Slf4j
public class ErrorHandler extends ResponseEntityExceptionHandler {


	@Override
	protected ResponseEntity<Object>
	handleMethodArgumentNotValid(MethodArgumentNotValidException ex, HttpHeaders headers, HttpStatusCode status, WebRequest request){
		for(ObjectError error :  ex.getAllErrors()) {
			return new ResponseEntity<Object>(new ErrorRecord(error.getDefaultMessage(), 400), HttpStatus.BAD_REQUEST);
		}
		return null;
	}

//	@Override
//	protected ResponseEntity<Object> handleHttpMessageNotReadable(HttpMessageNotReadableException ex,
//			HttpHeaders headers, HttpStatus status, WebRequest request) {
//		LOGGER.error(ex.getMessage());
//		com.hpe.lyntia.model.Error err = new com.hpe.lyntia.model.Error();
//		if (ex.getCause() instanceof InvalidFormatException) {
//			InlineResponse400Result error400 = new InlineResponse400Result();
//			error400.setCode(errorbundle.getString("fachada.2.code"));
//			error400.setInfo(errorbundle.getString("fachada.2.message") + ex.getMostSpecificCause());
//			error400.setHttpCode(errorbundle.getString("fachada.2.httpCode"));
//			err.setResult(error400);
//			return new ResponseEntity(err, HttpStatus.UNPROCESSABLE_ENTITY);
//		} else {
//			InlineResponse400Result error400 = new InlineResponse400Result();
//			error400.setCode(errorbundle.getString("fachada.1.code"));
//			error400.setInfo(errorbundle.getString("fachada.1.message"));
//			error400.setHttpCode(errorbundle.getString("fachada.1.httpCode"));
//			err.setResult(error400);
//			return new ResponseEntity(err, HttpStatus.BAD_REQUEST);
//		}
//
//	}

}
