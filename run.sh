#!/bin/bash
apt-get update
apt-get install -y unixodbc-dev
ACCEPT_EULA=Y apt-get install msodbcsql17
nginx -t &&
service nginx start &&
streamlit run project_contents/app/app.py --theme.base "dark"