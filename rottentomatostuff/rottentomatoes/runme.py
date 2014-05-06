#!/usr/bin/env python


from rottentomatoes import RT
import json, csv

rt = RT()

#movies = ['toy story 3', 'the lion king', 'the matrix', 'the dark knight', 'inception', 'titanic', 'the godfather', 'the little mermaid', 'the shining', 'avatar']
movies = ['pocahontas', 'shawshank redemption']


json = []
for movie in movies:
	json = json + rt.search(movie)

with open('test2.csv', 'wb+') as f:
    dict_writer = csv.DictWriter(f, fieldnames=['ratings', 'abridged_directors', 'links', 'title', 'critics_consensus', 'release_dates', 'abridged_cast', 'synopsis', 'mpaa_rating', 'year', 'alternate_ids', 'posters', 'runtime', 'id'])
    dict_writer.writeheader()
    dict_writer.writerows(json)
	
	