# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'click', '#refresh-question', ->
	$.ajax '/api/random',
        type: 'GET'
        dataType: 'json'
        success: (data, textStatus, jqXHR) ->
            console.log(data)
            source   = $("#quiz-template").html()
            template = Handlebars.compile(source)
            output = template(data)
            $('#quiz-question').html(output)

###      
$(document).on 'click', '#submit-answer', ->
	myval = $('#my-answer').val()
	correctval = $('#correct-answer').val()
	$('#show-answer').html(correctval)
###	