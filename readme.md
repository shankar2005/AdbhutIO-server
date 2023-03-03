
# Adbhut Backend API Server

What is Adbhut

This is Adbhut.io which is a platform to hire artists and produce content. With this, users can produce content including social media posts, graphical and animated content, camera shot videos, music tracks, entire songs, documentaries, short fictional films, reality series, podcasts, campaign websites, and creatively written content. Our business servicing function offers the best-suited Artists with the required skills to get the content project done with the best quality, within the timelines and budgetary requirements.



## API Reference

#### API Schema URL

```http
  dev.nsnco.in/api/schema/docs/
```



## Installation

Install Adbhutio-server

```bash
  mkdir Adbhut
  git clone https://github.com/shankar2005/AdbhutIO-server.git
  cd AdbhutIO-server
  py -m venv .venv
  pip install -r requirements.txt
  python manage.py makemigrations
  python manage.py migrate
  python manage.py runserver

```

## Deployment

To deploy this project run

```bash
  git push origin master
  # in AWS EC2 console terminal, go to server dir
  git pull origin master
  # restart server


```

[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/psf/black)
drf-spectucular
flake8
pre-commit
