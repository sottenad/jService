# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
	refreshRandom()

$(document).on 'click', '#refresh-question', ->
	refreshRandom()


refreshRandom = () ->
	$.ajax '/api/random',
        type: 'GET'
        dataType: 'json'
        success: (data, textStatus, jqXHR) ->
            source = $("#quiz-template").html()
            template = Handlebars.compile(source)
            output = template(data[0])
            $('#quiz-question .panel-body').html(output)

