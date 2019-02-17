from flask import Flask, request, render_template
from yt2predict import predict
import numpy as np

app = Flask(__name__, template_folder='templates')
app.config['DEBUG'] = True

@app.route("/")
def hello():
	return render_template('index.html')

@app.route("/predict_genre/", methods=['GET', 'POST'])
def get_song():

	link = request.form['link']

	prediction, probabilities = predict(link)

	result_message = []

	result_message.append('Your song was {}!'.format(prediction[0]))
	result_message.append('The probabilities for each genre are:')
	result_message.append(np.round(probabilities*100, 1))

	return render_template('index.html', message=result_message)



if __name__ == '__main__':
	app.debug = True
	app.run(debug=True)
	

