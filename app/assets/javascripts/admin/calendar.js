$(document).ready(function() { // document ready

  $('#calendar').fullCalendar({
    schedulerLicenseKey: 'CC-Attribution-NonCommercial-NoDerivatives',
    locale: 'es',
    now: '2018-04-07',
    editable: true, // enable draggable events
    aspectRatio: 1.8,
    scrollTime: '00:00', // undo default 6am scrollTime
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
    resourceLabelText: 'Rooms',
    resources: [
      { id: 'a', title: 'Auditorium A' },
      { id: 'b', title: 'Auditorium B', eventColor: 'green' },
      { id: 'c', title: 'Auditorium C', eventColor: 'orange' },
      { id: 'd', title: 'Auditorium D', children: [
        { id: 'd1', title: 'Room D1' },
        { id: 'd2', title: 'Room D2' }
      ] },
      { id: 'e', title: 'Auditorium E' },
      { id: 'f', title: 'Auditorium F', eventColor: 'red' },
      { id: 'g', title: 'Auditorium G' },
      { id: 'h', title: 'Auditorium H' },
      { id: 'i', title: 'Auditorium I' },
      { id: 'j', title: 'Auditorium J' },
      { id: 'k', title: 'Auditorium K' },
      { id: 'l', title: 'Auditorium L' },
      { id: 'm', title: 'Auditorium M' },
      { id: 'n', title: 'Auditorium N' },
      { id: 'o', title: 'Auditorium O' },
      { id: 'p', title: 'Auditorium P' },
      { id: 'q', title: 'Auditorium Q' },
      { id: 'r', title: 'Auditorium R' },
      { id: 's', title: 'Auditorium S' },
      { id: 't', title: 'Auditorium T' },
      { id: 'u', title: 'Auditorium U' },
      { id: 'v', title: 'Auditorium V' },
      { id: 'w', title: 'Auditorium W' },
      { id: 'x', title: 'Auditorium X' },
      { id: 'y', title: 'Auditorium Y' },
      { id: 'z', title: 'Auditorium Z' }
    ],
    events: [
      { id: '1', resourceId: 'b', start: '2018-04-07T02:00:00', end: '2018-04-07T07:00:00', title: 'event 1' },
      { id: '2', resourceId: 'c', start: '2018-04-07T05:00:00', end: '2018-04-07T22:00:00', title: 'event 2' },
      { id: '3', resourceId: 'd', start: '2018-04-06', end: '2018-04-08', title: 'event 3' },
      { id: '4', resourceId: 'e', start: '2018-04-07T03:00:00', end: '2018-04-07T08:00:00', title: 'event 4' },
      { id: '5', resourceId: 'f', start: '2018-04-07T00:30:00', end: '2018-04-07T02:30:00', title: 'event 5' }
    ]
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
