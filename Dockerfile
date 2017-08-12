FROM python:3.6-alpine3.6

MAINTAINER nkijak@gmail.com

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt


COPY lib ./lib
COPY nypTracks.py .
COPY nyp_track_events.py .
VOLUME ./vd_data

CMD ["python", "nypTracks.py"]
