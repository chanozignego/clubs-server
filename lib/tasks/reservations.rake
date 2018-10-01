namespace :reservations do
  
  task :initialize => :environment do
    Bookeable.all.each do |bookeable|
      Reservation.create(user: User.first, bookeable: bookeable, date: DateTime.new(2018, 04, 07), start: DateTime.new(2018, 4, 7, rand(0..23), rand(0..57)), end:  DateTime.new(2018, 4, 7, rand(0..23), rand(0..57)), time_used: 10)
      Reservation.create(user: User.last, bookeable: bookeable, date: DateTime.new(2018, 04, 07), start: DateTime.new(2018, 4, 7, rand(0..23), rand(0..57)), end:  DateTime.new(2018, 4, 7, rand(0..23), rand(0..57)), time_used: 10)
      Reservation.create(user: User.first, bookeable: bookeable, date: DateTime.new(2018, 04, 07), start: DateTime.new(2018, 4, 7, rand(0..23), rand(0..57)), end:  DateTime.new(2018, 4, 7, rand(0..23), rand(0..57)), time_used: 10)
      Reservation.create(user: User.last, bookeable: bookeable, date: DateTime.new(2018, 04, 07), start: DateTime.new(2018, 4, 7, rand(0..23), rand(0..57)), end:  DateTime.new(2018, 4, 7, rand(0..23), rand(0..57)), time_used: 10)
      Reservation.create(user: User.first, bookeable: bookeable, date: DateTime.new(2018, 04, 07), start: DateTime.new(2018, 4, 7, rand(0..23), rand(0..57)), end:  DateTime.new(2018, 4, 7, rand(0..23), rand(0..57)), time_used: 10)
      Reservation.create(user: User.last, bookeable: bookeable, date: DateTime.new(2018, 04, 07), start: DateTime.new(2018, 4, 7, rand(0..23), rand(0..57)), end:  DateTime.new(2018, 4, 7, rand(0..23), rand(0..57)), time_used: 10)
      Reservation.create(user: User.first, bookeable: bookeable, date: DateTime.new(2018, 04, 07), start: DateTime.new(2018, 4, 7, rand(0..23), rand(0..57)), end:  DateTime.new(2018, 4, 7, rand(0..23), rand(0..57)), time_used: 10)
      Reservation.create(user: User.last, bookeable: bookeable, date: DateTime.new(2018, 04, 07), start: DateTime.new(2018, 4, 7, rand(0..23), rand(0..57)), end:  DateTime.new(2018, 4, 7, rand(0..23), rand(0..57)), time_used: 10)
    end

  end

end