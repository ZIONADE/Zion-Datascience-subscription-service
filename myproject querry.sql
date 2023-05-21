show databases;
use action;
select * from actions2load;
select count(*)from actions2load; 
select distinct year(event_time) as "unique Years" from actions2load;
select distinct account_id from actions2load;
select count(distinct account_id) from actions2load; 

select date_format(event_time, '%H;%i') as time_of_the_day, count(*) as event_count
from actions2load
GROUP BY time_of_the_day
ORDER BY time_of_the_day;

#checking for the frequency of account_id events
select account_id, count(*) as event_count
from actions2load
group by account_id
order by account_id ASC;

#checking for common event_type
select event_type, count(*) as event_count
from actions2load
group by event_type
order by event_type ASC;
