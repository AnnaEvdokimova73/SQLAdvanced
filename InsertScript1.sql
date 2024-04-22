insert into performer (performer_nick) values('Lana Del Rey');
insert into performer (performer_nick) values('The Weeknd');
insert into performer (performer_nick) values('Chase Atlantic');
insert into performer (performer_nick) values('Ashnikko');
insert into performer (performer_nick) values('Bring Me The Horizon');
insert into performer (performer_nick) values('IC3PEAK');
insert into performer (performer_nick) values('Troye Sivan');

insert into genre (genre_name) values('Alt Pop');
insert into genre (genre_name) values('Pop');
insert into genre (genre_name) values('R&B');
insert into genre (genre_name) values('Pop Punk');
insert into genre (genre_name) values('Hip Hop');
insert into genre (genre_name) values('Electropop');
insert into genre (genre_name) values('Metalcore');
insert into genre (genre_name) values('Alternative Rock');
insert into genre (genre_name) values('Electronic Rock');
insert into genre (genre_name) values('Rock');
insert into genre (genre_name) values('Electronic');

insert into album (album_name, album_year) values('Lust For Life', '2017');
insert into album (album_name, album_year) values('Norman Fucking Rockwell!', '2019');
insert into album (album_name, album_year) values('Starboy', '2016');
insert into album (album_name, album_year) values('After Hours', '2020');
insert into album (album_name, album_year) values('Nostalgia - EP', '2015');
insert into album (album_name, album_year) values('Chase Atlantic', '2017');
insert into album (album_name, album_year) values('DEMIDEVIL', '2021');
insert into album (album_name, album_year) values('Thats the Spirit', '2015');
insert into album (album_name, album_year) values('POST HUMAN: SURVIVAL HORROR', '2020');
insert into album (album_name, album_year) values('Сказка', '2018');
insert into album (album_name, album_year) values('До Свидания', '2020');
insert into album (album_name, album_year) values('Blue Neighbourhood', '2016');
insert into album (album_name, album_year) values('Bloom', '2018');

insert into track (track_name, track_album_id) values('Lust for Life', 2);
insert into track (track_name, track_album_id) values('13 Beaches', 2);
insert into track (track_name, track_album_id) values('Doin time', 3);
insert into track (track_name, track_album_id) values('California', 3);
insert into track (track_name, track_album_id) values('False Alarm', 4);
insert into track (track_name, track_album_id) values('Sidewalks', 4);
insert into track (track_name, track_album_id) values('Blinding Lights', 5);
insert into track (track_name, track_album_id) values('Save your tears', 5);
insert into track (track_name, track_album_id) values('Friends', 6);
insert into track (track_name, track_album_id) values('Consume', 7);
insert into track (track_name, track_album_id) values('Slumber Party', 8);
insert into track (track_name, track_album_id) values('Happy Song', 9);
insert into track (track_name, track_album_id) values('Throne', 9);
insert into track (track_name, track_album_id) values('Смерти больше нет', 11);
insert into track (track_name, track_album_id) values('YOUTH', 13);
insert into track (track_name, track_album_id) values('My My My!', 14);
insert into track (track_name, track_album_id) values('Dance To This!', 14);
insert into track (track_name, track_album_id) values('Teardrops', 15);
insert into track (track_name, track_album_id) values('Kingslayer', 15);

insert into collection (collection_name, collection_year) values('Best Pop', '2015');
insert into collection (collection_name, collection_year) values('Electronics', '2022');
insert into collection (collection_name, collection_year) values('Fresh', '2016');
insert into collection (collection_name, collection_year) values('Hits', '2020');

insert into performer_album (album_id, performer_id) values(2, 1);
insert into performer_album (album_id, performer_id) values(3, 1);
insert into performer_album (album_id, performer_id) values(4, 2);
insert into performer_album (album_id, performer_id) values(5, 2);
insert into performer_album (album_id, performer_id) values(6, 3);
insert into performer_album (album_id, performer_id) values(7, 3);
insert into performer_album (album_id, performer_id) values(8, 4);
insert into performer_album (album_id, performer_id) values(9, 5);
insert into performer_album (album_id, performer_id) values(11, 6);
insert into performer_album (album_id, performer_id) values(12, 6);
insert into performer_album (album_id, performer_id) values(13, 7);
insert into performer_album (album_id, performer_id) values(14, 7);
insert into performer_album (album_id, performer_id) values(15, 5);

insert into performer_genre (genre_id, performer_id) values(1, 2);
insert into performer_genre (genre_id, performer_id) values(2, 1);
insert into performer_genre (genre_id, performer_id) values(2, 7);
insert into performer_genre (genre_id, performer_id) values(3, 1);
insert into performer_genre (genre_id, performer_id) values(3, 2);
insert into performer_genre (genre_id, performer_id) values(3, 7);
insert into performer_genre (genre_id, performer_id) values(5, 3);
insert into performer_genre (genre_id, performer_id) values(6, 2);
insert into performer_genre (genre_id, performer_id) values(6, 3);
insert into performer_genre (genre_id, performer_id) values(7, 4);
insert into performer_genre (genre_id, performer_id) values(8, 5);
insert into performer_genre (genre_id, performer_id) values(9, 2);
insert into performer_genre (genre_id, performer_id) values(9, 3);
insert into performer_genre (genre_id, performer_id) values(9, 1);
insert into performer_genre (genre_id, performer_id) values(10, 5);
insert into performer_genre (genre_id, performer_id) values(10, 6);
insert into performer_genre (genre_id, performer_id) values(11, 5);
insert into performer_genre (genre_id, performer_id) values(12, 6);

select track.track_id, track.track_name, album.album_id, album.album_name, album.album_year  from track
left join album on track.track_album_id = album.album_id; 

insert into track_collection (collection_id, track_id) values(1, 9);
insert into track_collection (collection_id, track_id) values(2, 5);
insert into track_collection (collection_id, track_id) values(2, 6);
insert into track_collection (collection_id, track_id) values(2, 16);
insert into track_collection (collection_id, track_id) values(3, 6);
insert into track_collection (collection_id, track_id) values(3, 7);
insert into track_collection (collection_id, track_id) values(3, 8);
insert into track_collection (collection_id, track_id) values(3, 10);
insert into track_collection (collection_id, track_id) values(3, 16);
insert into track_collection (collection_id, track_id) values(3, 17);
insert into track_collection (collection_id, track_id) values(4, 11);
insert into track_collection (collection_id, track_id) values(4, 14);
insert into track_collection (collection_id, track_id) values(4, 15);
insert into track_collection (collection_id, track_id) values(4, 19);
insert into track_collection (collection_id, track_id) values(4, 20);



