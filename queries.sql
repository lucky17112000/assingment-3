query-1

select booking.booking_id , users.name as customer_name , vehicles.name as vehicle_name , booking.start_date , booking.end_date , booking.status   from booking
inner join users using(user_id)
inner join vehicles using(vehicle_id)





query-2

 select vehicle_id , name , type , model , registration_number , rental_price ,availability_status as status from vehicles
  where not exists(
  select * from booking
  where vehicles.vehicle_id=booking.vehicle_id
  )order by vehicle_id asc



query-3

  
select vehicle_id , name , type , model , registration_number , rental_price , availability_status as status from vehicles
where type='car' and availability_status='available'


query-4

select name as vehicle_name , count(*)  as tottal_bookings from vehicles
inner join booking using(vehicle_id)
group by(name) having count(*)>2