import os
import pandas as pd

class Data:

    def __init__(self, nrows=None):
        self.tracks = pd.read_csv('tracks.csv', header=[0,1], nrows=nrows)
        self.genres = pd.read_csv('genres.csv', header=[0], nrows=nrows)
        self.features = pd.read_csv('features.csv', header=[0,1,2], nrows=nrows)
        self.echonest = pd.read_csv('echonest.csv', header=[0,1,2], nrows=nrows)

        self.segmented_dfs = None # to be initialized in segment method

    def clean(self):

        # clean up track index and columns
        self.tracks = self.tracks.drop(0)
        ix = self.tracks['Unnamed: 0_level_0']['Unnamed: 0_level_1'].rename('track_id')
        self.tracks = self.tracks.set_index(ix).drop('Unnamed: 0_level_0', axis=1)
        
        # clean genre
        self.genres = self.genres.set_index('genre_id')
        
        # clean features
        ix = self.features.feature.statistics['number'].rename('track_id')
        self.features = self.features.set_index(ix).drop('feature', axis=1).drop('track_id')
        
        # clean echonest
        ix = self.echonest['Unnamed: 0_level_0']['Unnamed: 0_level_1']['Unnamed: 0_level_2'].rename('track_id')
        self.echonest = self.echonest.set_index(ix).drop('Unnamed: 0_level_0', axis=1).drop('track_id')
        
    def segment(self):
        
        # segmenting tracks df
        tracks_groups = {}
        
        for group in self.tracks.columns.levels[0][1:]:
            tracks_groups[group] = self.tracks[group]
        
        # segmenting features df
        groups = set(group[0] for group in self.features.columns)
        features_groups = {group: self.features[group] for group in groups} 
        
        features_subgroups = {}

        for key in features_groups.keys():
            sub_groups = set(sub_group[0] for sub_group in features_groups[key].columns)

            for sub_group in sub_groups:
                features_subgroups[key + '__' + sub_group] = features_groups[key][sub_group]
                
        # segmenting echonest df
        echonest_groups = {group: self.echonest['echonest'][group] for group in self.echonest.columns.levels[1][1:]}

        self.segmented_dfs = {
            'tracks': tracks_groups,
            'genres': self.genres,
            'features': features_subgroups,
            'echonest': echonest_groups
        }


    def segment2csv(self):
        # make new folder and save each segemented dataframe as csv for loading to AWS
        pass


def main():
    
    try:
        PATH = r'/Users/maxwellclarke/Documents/data/fma_metadata/'
        os.chdir(PATH)
    except:
        PATH = r'C:\Users\james\Documents\data\fma_metadata'
        os.chdir(PATH)
        
    data = Data(nrows=None)
    data.clean()
    data.segment()
    
    os.mkdir('segmented_csvs')
    os.chdir('segmented_csvs')
    
    data.segment2csv()


if __name__ == '__main__':
    main()
