;(function(){

    "use strict";

    $(document).ready(function(){
        app.showFlashMessages({delay: 0});
        app.startRichTextForm();
        app.startClearFormButton();
        app.startSelects();
        app.startAllPickers();
        app.startColorPickers();
        app.startTooltips();
        app.startCommonEvents();
        app.startCheckboxes();
        app.startDateTimeInputs();     
        app.startDateInputs();   
        app.startCollapsedFilters();  
    });


})();