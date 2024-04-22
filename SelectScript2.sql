--Задание 2

--1
select t.track_name, t.track_duration from track as t
where t.track_duration = (select max(track.track_duration) from track);

--2
select t.track_name, t.track_duration from track as t
where t.track_duration >= 3.5
order by t.track_duration asc;

--3
select collection_name, collection_year from collection 
where collection_year between '2018' and '2020';

--4
select performer_nick from performer
where performer_nick not like '% %';

--5
select track_name from track 
where track_name like '%My%';
