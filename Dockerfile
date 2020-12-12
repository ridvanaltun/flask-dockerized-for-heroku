FROM python:alpine3.12

# Arguments
ARG BUILD_DATE
ARG VCS_REF

# Environments (This variables can will use with the application as well)
ENV FLASK_VERSION 1.1.2
ENV PROJECT_URL https://github.com/ridvanaltun/flask-dockerized-for-heroku
ENV WEB_SERVER_PORT 5000

# Set Image Metadata (@see https://microbadger.com/labels)
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.vcs-url=$PROJECT_URL

# Copy app to container
COPY . /app
WORKDIR /app

# Install the Flask
RUN pip install Flask==$FLASK_VERSION

# Install requirements for application
RUN pip install --no-cache-dir -r requirements.txt

# Expose web server port
# the expose port randomly assigned and then mapped to port 80 by the Heroku
# random port can accessable from environment variables as $PORT
# @see https://devcenter.heroku.com/articles/container-registry-and-runtime#dockerfile-commands-and-runtime
# EXPOSE $WEB_SERVER_PORT

# Start the application
CMD ["python3", "app.py"]