FROM python:3.10-slim

WORKDIR /app

COPY . .

ENV BOT_TOKEN=
ENV SPOTIFY_ID=
ENV SPOTIFY_SECRET=
ENV BOT_PREFIX=d!
ENV VC_TIMEOUT=600
ENV MAX_SONG_PRELOAD=5
ENV ENABLE_SLASH_COMMANDS=False
ENV VC_TIMOUT_DEFAULT=True
ENV MAX_HISTORY_LENGTH=10
ENV MAX_TRACKNAME_HISTORY_LENGTH=15
ENV HEROKU=0

RUN pip --no-cache-dir install -r requirements.txt \
    && apt-get update \
    && apt-get install --no-install-recommends ffmpeg -y

CMD ["python", "run.py"]