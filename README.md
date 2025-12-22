## query-1

##### craft a new table and show expected table from this table after inner join table useres, vehicles , booking and as a foreign key i have used user_id and vehicle_id

```sql

select booking.booking_id , users.name as customer_name , vehicles.name as vehicle_name , booking.start_date , booking.end_date , booking.status   from booking
inner join users using(user_id)
inner join vehicles using(vehicle_id)

```

## query-2

##### list all vehicles which are not booked yet by not exist clause .in this query i have used vehicle.id from vehicles table as primary key and vehicle.id from booking table as foreign key and try to fetch all vehicles which are not booked yet

```sql
-- query-2
  select vehicle_id , name , type , model , registration_number , rental_price ,availability_status as status from vehicles
  where not exists(
  select * from booking
  where booking.vehicle_id = vehicles.vehicle_id
  )order by vehicle_id asc
```

## query-3

##### list all available car type vehicles from vehicles table by using where , select , and from clause

```sql
--query-3
select * from vehicles
where type='car' and availability_status='available'
```

## query-4

##### list all vehicles which are booked more than 2 times from booking table by using group by and having clause.i used grouop by for grouping on vehicle name and having clause after grouping to give condition on grouped data

```sql
--query-4
select name as vehicle_name , count(*)  as tottal_bookings from vehicles
inner join booking using(vehicle_id)
group by(name) having count(*)>2
```
