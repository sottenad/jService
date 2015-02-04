(function() {
  var showAnswer;

  $(document).on('click', '#show-answer', function() {
    return showAnswer();
  });

  showAnswer = function() {
    $('#show-answer').hide();
    return $('#answer').css('display', 'inline-block');
  };

}).call(this);
