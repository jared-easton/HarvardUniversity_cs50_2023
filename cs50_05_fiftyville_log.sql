-- Keep a log of any SQL queries you execute as you solve the mystery.

select description from crime_scene_reports
where year = "2021" and month = "07" and day = "28"
and street = "Humphrey Street";


select name, transcript
from interviews
where year = "2021" and month = "07" and day = "28"
and transcript like "%bakery%";


select bakery_security_logs.license_plate, bakery_security_logs.activity, bakery_security_logs.hour, bakery_security_logs.minute, people.name from people
join bakery_security_logs on bakery_security_logs.license_plate = people.license_plate
where bakery_security_logs.year = "2021"
and bakery_security_logs.month = "07"
and bakery_security_logs.day = "28"
and bakery_security_logs.hour = "10"
and bakery_security_logs.minute >= "15"
and bakery_security_logs.minute <= "25"
order by bakery_security_logs.hour asc, bakery_security_logs.minute asc;


select atm_transactions.transaction_type, atm_transactions.atm_location, atm_transactions.account_number, atm_transactions.amount, bank_accounts.person_id from bank_accounts
join atm_transactions on atm_transactions.account_number = bank_accounts.account_number
where atm_location = "Leggett Street" and transaction_type = "withdraw"
and year = "2021"
and month = "07"
and day = "28"
order by bank_accounts.person_id asc;


select id, name, phone_number, passport_number from people
where id in (395717, 467400, 396669, 438727, 449774, 458378, 514354, 686048)
order by id asc;


select phone_calls.caller, phone_calls.duration, people.name from people
join phone_calls on phone_calls.caller = people.phone_number
where phone_calls.year = 2021
and phone_calls.month = 07
and phone_calls.day = 28
and phone_calls.duration < 60
order by duration asc;


select phone_calls.receiver, phone_calls.duration, people.name from people
join phone_calls on phone_calls.receiver = people.phone_number
where phone_calls.year = 2021
and phone_calls.month = 07
and phone_calls.day = 28
and phone_calls.duration < 60
order by duration asc;


select flights.origin_airport_id, flights.destination_airport_id, flights.hour, flights.minute, airports.city from airports
join flights on flights.destination_airport_id = airports.id
where flights.year = 2021
and flights.month = 07
and flights.day = 29
and flights.hour <= 11
and flights.minute <= 59
order by hour asc, minute asc;


select flights.origin_airport_id, flights.destination_airport_id, flights.id, passengers.flight_id, passengers.seat from passengers
join flights on flights.id = passengers.flight_id
where flights.year = 2021
and flights.month = 07
and flights.day = 29
and flights.hour = 8
and flights.minute = 20;


select people.name
from bakery_security_logs
join people on people.license_plate = bakery_security_logs.license_plate
join bank_accounts on bank_accounts.person_id = people.id
join atm_transactions on atm_transactions.account_number = bank_accounts.account_number
join phone_calls on phone_calls.caller = people.phone_number
where bakery_security_logs.year = 2021 and bakery_security_logs.month = 07 and bakery_security_logs.day = 28 and bakery_security_logs.minute between 15 and 25
and atm_transactions.atm_location = "Leggett Street" and atm_transactions.transaction_type = "withdraw" and atm_transactions.year = 2021 and atm_transactions.month = 07 and atm_transactions.day = 28
and phone_calls.year = 2021 and phone_calls.month = 07 and phone_calls.day = 28 and phone_calls.duration <= 59;


select people.name
from people
join passengers on people.passport_number = passengers.passport_number
where passengers.flight_id = "36"
and people.name in ("Bruce", "Diana");


select r1.name as receiver
from phone_calls
join people c1 on phone_calls.caller = c1.phone_number
join people r1 on phone_calls.receiver = r1.phone_number
where c1.name = "Bruce" and phone_calls.year = 2021 and phone_calls.month = 07 and phone_calls.day = 28 and phone_calls.duration <= 59;
