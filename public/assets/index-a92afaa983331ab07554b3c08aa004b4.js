(function() {
  var currData, initTooltip, markInvalid, refreshRandom, setInvalidHandler;

  $(function() {
    var qtLength;
    qtLength = $("#quiz-template").length;
    if (qtLength > 0) {
      return refreshRandom();
    }
  });

  $(document).on('click', '#refresh-question', function() {
    return refreshRandom();
  });

  setInvalidHandler = function() {
    return $(document).on('click', '#mark-invalid', function() {
      var clueId;
      $('#mark-invalid').fadeOut(200);
      clueId = $('#clue-id');
      return markInvalid(clueId);
    });
  };

  currData = {};

  initTooltip = function() {
    return $('[data-toggle="tooltip"]').tooltip();
  };

  markInvalid = function(id) {
    $.ajax('api/invalid', {
      type: 'POST',
      dataType: 'json',
      data: {
        'id': currData.id
      },
      success: function(data, textStatus) {
        if (textStatus === 'success') {
          return $('#invalid-count').fadeOut(250, function() {
            $(this).text(data.invalid_count);
            return $(this).fadeIn(250);
          });
        }
      }
    });
    return false;
  };

  refreshRandom = function() {
    return $.ajax('/api/random', {
      type: 'GET',
      dataType: 'json',
      success: function(data, textStatus, jqXHR) {
        var output, source, template;
        source = $("#quiz-template").html();
        template = Handlebars.compile(source);
        output = template(data[0]);
        currData = data[0];
        $('#quiz-question .panel-body').html(output);
        initTooltip();
        return setInvalidHandler();
      }
    });
  };

}).call(this);
