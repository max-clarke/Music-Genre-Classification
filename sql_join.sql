select *
from chroma_cens__mean t1 inner join chroma_cens__skew t2 on t1.track_id = t2.track_id
inner join chroma_cens__std t3 on t2.track_id=t3.track_id
inner join chroma_cqt__mean t4 on t3.track_id=t4.track_id
inner join chroma_cqt__skew t5 on t4.track_id=t5.track_id
inner join chroma_cqt__std t6 on t5.track_id=t6.track_id
inner join chroma_stft__mean t7 on t6.track_id=t7.track_id
inner join chroma_stft__skew t8 on t7.track_id=t8.track_id
inner join mfcc__mean t9 on t8.track_id=t9.track_id
inner join mfcc__skew t10 on t9.track_id=t10.track_id
inner join mfcc__std t11 on t10.track_id=t11.track_id
inner join rmse__mean t12 on t11.track_id=t12.track_id
inner join rmse__skew t13 on t12.track_id=t13.track_id
inner join rmse__std t14 on t13.track_id=t14.track_id
inner join spectral_bandwidth__mean t15 on t14.track_id=t15.track_id
inner join spectral_bandwidth__skew t16 on t15.track_id=t16.track_id
inner join spectral_bandwidth__std t17 on t16.track_id=t17.track_id
inner join spectral_centroid__mean t18 on t17.track_id=t18.track_id
inner join spectral_centroid__skew t19 on t18.track_id=t19.track_id
inner join spectral_centroid__std t20 on t19.track_id=t20.track_id
inner join spectral_contrast__mean t21 on t20.track_id=t21.track_id
inner join spectral_contrast__skew t22 on t21.track_id=t22.track_id
inner join spectral_contrast__std t23 on t22.track_id=t23.track_id
inner join spectral_rolloff__mean t24 on t23.track_id=t24.track_id
inner join spectral_rolloff__skew t25 on t24.track_id=t25.track_id
inner join spectral_rolloff__std t26 on t25.track_id=t26.track_id
inner join tonnetz__mean t27 on t26.track_id=t27.track_id
inner join tonnetz__skew t28 on t27.track_id=t28.track_id
inner join tonnetz__std t29 on t28.track_id=t29.track_id
inner join chroma_cens__std t30 on t29.track_id=t30.track_id
inner join chroma_cens__std t31 on t30.track_id=t31.track_id
inner join chroma_cens__std t32 on t31.track_id=t32.track_id
inner join chroma_cens__std t33 on t32.track_id=t33.track_id
inner join chroma_cens__std t34 on t33.track_id=t34.track_id
inner join chroma_cens__std t35 on t34.track_id=t35.track_id


chroma_cens__mean.csv  genres.csv                    spectral_bandwidth__std.csv  spectral_rolloff__std.csv
chroma_cens__skew.csv  mfcc__mean.csv                spectral_centroid__mean.csv  tonnetz__mean.csv
chroma_cens__std.csv   mfcc__skew.csv                spectral_centroid__skew.csv  tonnetz__skew.csv
chroma_cqt__mean.csv   mfcc__std.csv                 spectral_centroid__std.csv   tonnetz__std.csv
chroma_cqt__skew.csv   rmse__mean.csv                spectral_contrast__mean.csv  track.csv
chroma_cqt__std.csv    rmse__skew.csv                spectral_contrast__skew.csv  zcr__mean.csv
chroma_stft__mean.csv  rmse__std.csv                 spectral_contrast__std.csv   zcr__skew.csv
chroma_stft__skew.csv  spectral_bandwidth__mean.csv  spectral_rolloff__mean.csv   zcr__std.csv
chroma_stft__std.csv   spectral_bandwidth__skew.csv  spectral_rolloff__skew.csv
