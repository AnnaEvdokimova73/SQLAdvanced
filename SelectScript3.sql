--Задание 3

--1
select g.genre_name, count(pg.performer_id) as performer_count from genre g
left join performer_genre pg on g.genre_id = pg.genre_id 
group by g.genre_name
order by performer_count asc;

--2
select count(t.track_id) as track_count from track as t
left join album as a on a.album_id = t.track_album_id 
where a.album_year between 2019 and 2020;

--3
select a.album_name, AVG(t.track_duration) as avg_track_duration from album as a
left join track as t on a.album_id = t.track_album_id 
group by a.album_name;

--4
select p.performer_nick from performer p 
where p.performer_id not in (
	select pa.performer_id from performer_album as pa 
	left join album as a on pa.album_id = a.album_id 
	where a.album_year = 2020 
);

--5
select c.collection_name from collection as c
left join track_collection as tc on c.collection_id = tc.collection_id
left join track as t on tc.track_id = t.track_id
left join performer_album as pa on t.track_album_id = pa.album_id 
left join performer as p on pa.performer_id = p.performer_id
where p.performer_nick = 'The Weeknd'
group by c.collection_name;

