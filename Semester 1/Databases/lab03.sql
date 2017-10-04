alter session set current_schema = pobyrne;

--Question 1--
select coder_name ,count(s_start) sessions from cd_attendee 
join cd_attends using(coder_id) 
group by(coder_name) having count (s_start) > 1;
--Question 2--
select organizer_name,loc_name from cd_organizer 
join cd_coding_session using(organizer_id) join cd_location 
using(loc_id);
--Question 3--
select organizer_name from cd_organizer
union
select facilitator_name from cd_facilitator;
--Question 4--
SELECT facilitator_name,facilitator_email from cd_facilitator 
minus
SELECT organizer_name,organizer_email from cd_organizer;
--Question 5--
select coder_name from cd_attendee join cd_attends using(coder_id)
where badge_earned != 'null';
--question 6-
 alter session set current_schema = moflanagan;
 
 create or replace view ken_session as(
 select s_start,loc_id,spec_code from pobyrne.cd_session_runs
 join pobyrne.cd_facilitator using(facilitator_id) where facilitator_name
 like '%Ken');
 
 select coder_name from pobyrne.cd_attendee A where not exists(
 select * from ken_session B where not exists (
 select * from pobyrne.cd_attends X where (
 X.coder_id = A.coder_id
 and X.s_start = B.s_start
 and X.loc_id = B.loc_id
 and X.spec_code = B.spec_code)));
 
  
 

