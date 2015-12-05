# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$.ajaxSetup({
  dataType: 'json'
})

$(document).on "ajax:success", "#formulario",(e, data)->
	console.log data
	
	$('#form-container').hide()
	$('#exito').removeClass('opacity')
	$('#exito').addClass('listo')

$(document).on "ajax:error", "#formulario",(ev, data, status, xhr)->
	console.log(data)
	if data.responseJSON.nombre
		$("#error-nombre").html("<p id='flashError'> #{data.responseJSON.nombre} </p>")
	else
		$("#error-nombre").html("<p> #{data.done.name} </p>")
	if data.responseJSON.email
		$("#error-email").html("<p id='flashError'> #{data.responseJSON.email} </p>")
	else
		$("#error-email").html("<p> #{data.done.name} </p>")

	if data.responseJSON.telefono
		$("#error-telefono").html("<p id='flashError'> #{data.responseJSON.telefono} </p>")
	else
		$("#error-telefono").html("<p> #{data.done.name} </p>")

