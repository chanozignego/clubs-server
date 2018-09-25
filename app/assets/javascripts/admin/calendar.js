$(document).ready(function() {
  $('#calendar').fullCalendar({
    schedulerLicenseKey: 'CC-Attribution-NonCommercial-NoDerivatives',
    now: '2018-04-07',
    editable: true,
    aspectRatio: 1.8,
    scrollTime: '00:00',
    header: {
      left: 'today prev,next',
      center: 'title',
      right: 'timelineDay,timelineThreeDays,agendaWeek,month'
    },
    defaultView: 'timelineDay',
    views: {
      timelineThreeDays: {
        type: 'timeline',
        duration: { days: 3 }
      }
    },
    resourceGroupField: 'building',
    resources: [
      { id: 'a', building: '460 Bryant', title: 'Auditorium A' },
      { id: 'b', building: '460 Bryant', title: 'Auditorium B', eventColor: 'green' },
      { id: 'c', building: '460 Bryant', title: 'Auditorium C', eventColor: 'orange' },
      { id: 'd', building: '460 Bryant', title: 'Auditorium D', children: [
        { id: 'd1', title: 'Room D1', occupancy: 10 },
        { id: 'd2', title: 'Room D2', occupancy: 10 }
      ] },
      { id: 'e', building: '460 Bryant', title: 'Auditorium E' },
      { id: 'f', building: '460 Bryant', title: 'Auditorium F', eventColor: 'red' },
      { id: 'z', building: '564 Pacific', title: 'Auditorium Z' }
    ],
    events: [
      { id: '1', resourceId: 'b', start: '2018-04-07T02:00:00', end: '2018-04-07T07:00:00', title: 'event 1' },
      { id: '2', resourceId: 'c', start: '2018-04-07T05:00:00', end: '2018-04-07T22:00:00', title: 'event 2' },
      { id: '3', resourceId: 'd', start: '2018-04-06', end: '2018-04-08', title: 'event 3' },
      { id: '4', resourceId: 'e', start: '2018-04-07T03:00:00', end: '2018-04-07T08:00:00', title: 'event 4' },
      { id: '5', resourceId: 'f', start: '2018-04-07T00:30:00', end: '2018-04-07T02:30:00', title: 'event 5' }
    ]
  });
  var events = [
      { id: '1', resourceId: 'b', start: '2018-04-07T02:00:00', end: '2018-04-07T07:00:00', title: 'event 1' },
      { id: '2', resourceId: 'c', start: '2018-04-07T05:00:00', end: '2018-04-07T22:00:00', title: 'event 2' },
      { id: '3', resourceId: 'd', start: '2018-04-06', end: '2018-04-08', title: 'event 3' },
      { id: '4', resourceId: 'e', start: '2018-04-07T03:00:00', end: '2018-04-07T08:00:00', title: 'event 4' },
      { id: '5', resourceId: 'f', start: '2018-04-07T00:30:00', end: '2018-04-07T02:30:00', title: 'event 5' }
    ];

  $('#calendar').fullCalendar('updateEvents', events );
});
