(function() {
  var refreshRandom;

  $(function() {
    return refreshRandom();
  });

  $(document).on('click', '#refresh-question', function() {
    return refreshRandom();
  });

  refreshRandom = function() {
    return $.ajax('/api/random', {
      type: 'GET',
      dataType: 'json',
      success: function(data, textStatus, jqXHR) {
        var output, source, template;
        source = $("#quiz-template").html();
        template = Handlebars.compile(source);
        output = template(data[0]);
        return $('#quiz-question .panel-body').html(output);
      }
    });
  };

}).call(this);
