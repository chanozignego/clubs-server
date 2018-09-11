;(function(){

  "use strict";

  $(document).on('cocoon:after-insert',function(event, container){
      var $container = $(container);
      app.startClearFormButton($container);
      app.startSelects($container);
      app.startSelects($container);
      app.startColorPickers($container);
      app.startAllPickers($container);
      app.startTooltips($container); 
      app.startCheckboxes($container);     
      app.startDateTimeInputs($container);     
      app.startDateInputs($container);     
  });



})();