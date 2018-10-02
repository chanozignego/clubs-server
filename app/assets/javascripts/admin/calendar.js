$(document).ready(function() {

  $('#calendar').fullCalendar({
    schedulerLicenseKey: 'CC-Attribution-NonCommercial-NoDerivatives',
    locale: 'es',
    now: '2018-04-07',
    editable: true,
    aspectRatio: 1,
    scrollTime: '07:00',
    header: {
      left: 'today prev,next',
      center: 'title',
      right: 'timelineDay,timelineThreeDays,agendaWeek,month,listWeek'
    },
    defaultView: 'timelineDay',
    views: {
      timelineThreeDays: {
        type: 'timeline',
        duration: { days: 3 }
      }
    },
    resourceLabelText: 'Reservables',
    resourceGroupField: 'bookeable_type',
    resources: '/admin/bookeables.json',
    events: '/admin/reservations.json',
    selectable: true,
    selectHelper: true,
    select: function(start, end) {
      triggerNewForm(start, end);
    },

    eventDrop: function(event, delta, revertFunc) {
      event_data = { 
        reservation: {
          id: event.id,
          bookeable_id: event.resourceId,
          start: event.start.format(),
          end: event.end.format()
        }
      };
      $.ajax({
          url: "/admin/reservations/" + event.id,
          data: event_data,
          type: 'PUT'
      });
    },
    
    eventClick: function(event, jsEvent, view) {
      $.getScript("/admin/reservations/" + event.id + "/edit")
        .success(function(script, textStatus) {
          $('#edit_reservation').on('shown.bs.modal', function(e) {
            startSelects();
            // $('#edit_reservation').find('.start_hidden').value = start.toDate();
            // $('#edit_reservation').find('.start_hidden').val(start.toDate());
            // $('#edit_reservation').find('.end_hidden').value = end.toDate();
            // $('#edit_reservation').find('.end_hidden').val(end.toDate());

            $('#edit_reservation').find('.date-range-picker').daterangepicker({
              timePicker: true,
              startDate: moment().startOf('hour'),
              endDate: moment().startOf('hour').add(32, 'hour'),
              locale: {
                format: 'M/DD hh:mm A'
              }            
            });

          })
        });
    }

  });
  
  $('.new-reservation').on("click", function() {
    triggerNewForm();  
  });
  
  function triggerNewForm(start, end) {
    $.getScript('/admin/reservations/new')
      .success(function(script, textStatus) {
        $('#new_reservation').on('shown.bs.modal', function(e) {
          startSelects();
          $('#new_reservation').find('.start_hidden').value = start.toDate();
          $('#new_reservation').find('.start_hidden').val(start.toDate());
          $('#new_reservation').find('.end_hidden').value = end.toDate();
          $('#new_reservation').find('.end_hidden').val(end.toDate());

          $('#new_reservation').find('.date-range-picker').daterangepicker({
            timePicker: true,
            startDate: moment().startOf('hour'),
            endDate: moment().startOf('hour').add(32, 'hour'),
            locale: {
              format: 'M/DD hh:mm A'
            }            
          });

        })
      });
  };

  function startSelects(context) {
    var context = context || 'body';
    var $self = $(context);
    var placeholder = $('select').attr('placeholder');
    $self.find('.js-select2').each(function(index, element) {
        var $element = $(element);
        var placeholder = $element.attr('placeholder') || $element.data('placeholder') || I18n.t("select2.default_simple_placeholder");
        var width = $element.data('width') ? $element.data('width') : undefined;
        var allowClear = $element.data('allowClear') ? $element.data('allowClear') : true;
        $element.select2({placeholder: placeholder, width: width, allowClear: allowClear, locale: I18n.locale});
    });
  };

});
