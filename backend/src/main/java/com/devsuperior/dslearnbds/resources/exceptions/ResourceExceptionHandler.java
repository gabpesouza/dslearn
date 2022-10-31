package com.devsuperior.dslearnbds.resources.exceptions;

import java.time.Instant;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.devsuperior.dslearnbds.services.exceptions.DataBaseException;
import com.devsuperior.dslearnbds.services.exceptions.ResourceNotFoundException;

@ControllerAdvice
public class ResourceExceptionHandler {
	
	
	@ExceptionHandler(ResourceNotFoundException.class)
	public ResponseEntity<StandardError> entityNotFound(ResourceNotFoundException e, HttpServletRequest request){
		
		StandardError se =  new StandardError();
		se.setTimestamp(Instant.now());
		se.setStatus(HttpStatus.NOT_FOUND.value());
		se.setError("Resource not found");
		se.setMessage(e.getMessage());
		se.setPath(request.getRequestURI());
		
		return ResponseEntity.status(HttpStatus.NOT_FOUND).body(se);
		
	}
	
	@ExceptionHandler(DataBaseException.class)
	public ResponseEntity<StandardError> dataBaseException(DataBaseException e, HttpServletRequest request){
		
		StandardError se =  new StandardError();
		se.setTimestamp(Instant.now());
		se.setStatus(HttpStatus.BAD_REQUEST.value());
		se.setError("Data base integrity violation");
		se.setMessage(e.getMessage());
		se.setPath(request.getRequestURI());
		
		return ResponseEntity.status(HttpStatus.BAD_REQUEST).body(se);
		
	}
	
	@ExceptionHandler(MethodArgumentNotValidException.class)
	public ResponseEntity<ValidationError> validationException(MethodArgumentNotValidException e, HttpServletRequest request){
		
		ValidationError ve = new ValidationError();
		ve.setTimestamp(Instant.now());
		ve.setStatus(HttpStatus.UNPROCESSABLE_ENTITY.value());
		ve.setError("Validation exception");
		ve.setMessage(e.getMessage());
		ve.setPath(request.getRequestURI());
		
		for(FieldError error : e.getBindingResult().getFieldErrors()) {
			ve.addError(error.getField(), error.getDefaultMessage());
		}
		
		return ResponseEntity.status(HttpStatus.UNPROCESSABLE_ENTITY).body(ve);
	}
	
	
	
	

}
