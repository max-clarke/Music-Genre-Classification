from feature_extraction import *
from pytube import YouTube
import pickle

from subprocess import call

import os
import re

os.chdir('/Users/maxwellclarke/OneDrive/ds/metis/metisgh/project_mcnulty/genre_predicting_app')

with open('log_reg_model.p', 'rb') as f:
	log_reg_model = pickle.load(f)

to_concat_feats = ['spectral_contrast__std',
					'spectral_contrast__mean',
					'tonnetz__std',
					'tonnetz__mean',
					'chroma_stft__std',
					'chroma_stft__mean',
					'mfcc__std',
					'mfcc__mean',
					'spectral_rolloff__std',
					'spectral_rolloff__mean',
					'spectral_bandwidth__std',
					'spectral_bandwidth__mean',
					'spectral_centroid__std',
					'spectral_centroid__mean',
					'rmse__std',
					'rmse__mean',
					'zcr__std',
					'zcr__mean',
					'chroma_cqt__std',
					'chroma_cqt__mean',
					'chroma_cens__std',
					'chroma_cens__mean']


def link_to_feats(link):

	# DOWLOAD_DIR = '/Users/maxwellclarke/OneDrive/ds/metis/metisgh/project_mcnulty/genre_predicting_app/downloads'  # working dir for now
	# os.chdir(DOWLOAD_DIR)

	try:
		os.chdir('downloads')
	except:
		pass

	yt = YouTube(link)
	yt.streams.filter(only_audio=True).first().download( filename='vid')
	
	call(['mplayer', '-novideo', '-nocorrect-pts', '-ao', 'pcm:waveheader', 'vid.mp4'])
	call(['lame', '-v', 'audiodump.wav', 'vid.mp3'])

	return compute_features('vid.mp3')


def pick_feats(x):
	
	feats = list(feat.split('__')[0] for n, feat in enumerate(to_concat_feats) if n % 2 ==0 )

	new_x = pd.concat([pd.concat([x[feat]['std'], x[feat]['mean']]) for feat in feats]) 

	return new_x


def predict(url):
	
	x = link_to_feats(url)
	x = pick_feats(x).values.reshape(1, -1)
	print(x)

	return log_reg_model.predict(x), log_reg_model.predict_proba(x)

	# - return prediciton (or probabilities)

	# - maybe return graph to display showing similarities



