from flask import Flask, request, render_template
import os
import requests

app = Flask('scrabble', template_folder='templates')

@app.route("/")
def hello():
	return 'Please enter a YouTube link'

@app.route("/<url>")
def get_song(url):
	# GO TO https://ytmp3.cc/
	ytmp3 = 'https://ytmp3.cc/'



app.run(debug=True)