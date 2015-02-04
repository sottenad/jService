# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->
    qtLength = $("#quiz-template").length
    refreshRandom() if qtLength > 0 
    
    

$(document).on 'click', '#refresh-question', ->
	refreshRandom()
    
setInvalidHandler = () ->
    $(document).on 'click', '#mark-invalid', ->
        $('#mark-invalid').fadeOut(200)
        clueId = $('#clue-id')
        markInvalid(clueId)
    
currData = {}
    
initTooltip = () ->
    $('[data-toggle="tooltip"]').tooltip()

markInvalid = (id) ->
    $.ajax 'api/invalid',
        type: 'POST'
        dataType: 'json'
        data: {'id': currData.id}
        success: (data, textStatus) ->
            if(textStatus=='success')
                $('#invalid-count').fadeOut(250, -> 
                    $(this).text(data.invalid_count)
                    $(this).fadeIn(250))
    false

    
refreshRandom = () ->
	$.ajax '/api/random',
        type: 'GET'
        dataType: 'json'
        success: (data, textStatus, jqXHR) ->
            source = $("#quiz-template").html()
            template = Handlebars.compile(source)
            output = template(data[0])
            currData = data[0]
            $('#quiz-question .panel-body').html(output)
            initTooltip()
            setInvalidHandler()

