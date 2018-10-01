$(document).ready(function() { // document ready

  $('#calendar').fullCalendar({
    schedulerLicenseKey: 'CC-Attribution-NonCommercial-NoDerivatives',
    locale: 'es',
    now: '2018-04-07',
    editable: true, // enable draggable events
    aspectRatio: 1,
    scrollTime: '07:00', // undo default 6am scrollTime
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
      // TODO!
      $.getScript('/admin/reservations/new')
        .success(function(script, textStatus) {
          $('#new_reservation').on('shown.bs.modal', function(e) {
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
      //calendar.fullCalendar('unselect');
    },

    eventDrop: function(event, delta, revertFunc) {
      // TODO!
      event_data = { 
        event: {
          id: event.id,
          start: event.start.format(),
          end: event.end.format()
        }
      };
      $.ajax({
          url: event.update_url,
          data: event_data,
          type: 'PATCH'
      });
    },
    
    eventClick: function(event, jsEvent, view) {
      // TODO!
      $.getScript("/admin/reservations/" + event.id + "/edit", function() {});
    }

  });

});
// $(document).ready(function() {
//   // $('#calendar').fullCalendar({
//   //   //schedulerLicenseKey: 'CC-Attribution-NonCommercial-NoDerivatives',
//   //   now: '2018-04-07',
//   //   editable: true,
//   //   //aspectRatio: 1.8,
//   //   //scrollTime: '00:00',
//   //   header: {
//   //     left: 'today prev,next',
//   //     center: 'title',
//   //     right: 'timelineDay,timelineThreeDays,agendaWeek,month'
//   //   },
//   //   // defaultView: 'timelineDay',
//   //   // views: {
//   //   //   timelineThreeDays: {
//   //   //     type: 'timeline',
//   //   //     duration: { days: 3 }
//   //   //   }
//   //   // },
//   //   //resourceGroupField: 'building',
//   //   // resources: [
//   //   //   { id: 'a', building: '460 Bryant', title: 'Auditorium A' },
//   //   //   { id: 'b', building: '460 Bryant', title: 'Auditorium B', eventColor: 'green' },
//   //   //   { id: 'c', building: '460 Bryant', title: 'Auditorium C', eventColor: 'orange' },
//   //   //   { id: 'd', building: '460 Bryant', title: 'Auditorium D', children: [
//   //   //     { id: 'd1', title: 'Room D1', occupancy: 10 },
//   //   //     { id: 'd2', title: 'Room D2', occupancy: 10 }
//   //   //   ] },
//   //   //   { id: 'e', building: '460 Bryant', title: 'Auditorium E' },
//   //   //   { id: 'f', building: '460 Bryant', title: 'Auditorium F', eventColor: 'red' },
//   //   //   { id: 'z', building: '564 Pacific', title: 'Auditorium Z' }
//   //   // ],
//   //   events: '/admin/reservations.json'
//   // });


//   $('.calendar').fullCalendar({
//       events: '/admin/reservations.json'
//       // header: {
//       //   left: 'prev,next today',
//       //   center: 'title',
//       //   right: 'month,agendaWeek,agendaDay'
//       // },
//       // selectable: true,
//       // selectHelper: true,
//       // editable: true,
//       // eventLimit: true,
//       //   now: '2018-04-07',
//       // events: '/admin/reservations.json',

//       // select: function(start, end) {
//       //   $.getScript('/events/new', function() {});

//       //   calendar.fullCalendar('unselect');
//       // },

//       // eventDrop: function(event, delta, revertFunc) {
//       //   event_data = { 
//       //     event: {
//       //       id: event.id,
//       //       start: event.start.format(),
//       //       end: event.end.format()
//       //     }
//       //   };
//       //   $.ajax({
//       //       url: event.update_url,
//       //       data: event_data,
//       //       type: 'PATCH'
//       //   });
//       // },
      
//       // eventClick: function(event, jsEvent, view) {
//       //   $.getScript(event.edit_url, function() {});
//       // }
//     });


// });
