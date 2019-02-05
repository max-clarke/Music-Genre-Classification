Copy 

(select *
from  track t1 inner join audio_features t2 on t1.track_id = t2.track_id
inner join mfcc__mean t3 on t2.track_id = t3.track_id
inner join genres t4 on t1.genre_top = t4.title)

To '/tmp/processed_data.csv' With CSV DELIMITER ',';