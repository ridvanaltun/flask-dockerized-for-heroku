# Dockerized Flask for Heroku

> The project aims to save your time from publish Flask apps in Heroku.

Fire up a Flask application on [Heroku](https://www.heroku.com/) with a single click:

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy)

## Manual Deployment

```bash
# Login to Heroku Container Registry
heroku container:login

# Create a Heroku project (random-app-name.herokuapp.com)
heroku create

# ...or create project with name given by you (unique-app-name.herokuapp.com)
heroku create unique-app-name

# Clone the project
git clone https://github.com/ridvanaltun/flask-dockerized-for-heroku.git

# Go to the project
cd flask-dockerized-for-heroku

# Build the image and push to Container Registry
heroku container:push web --app app-name

# Then release the image to your app
heroku container:release web --app app-name

# Open the app in your browser (same as go to https://app-name.herokuapp.com)
heroku open
```