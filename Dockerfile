FROM python:2.7

RUN apt-get update -qqy; \
    apt-get install -qqy \
        ruby \
        ruby-dev \
        rubygems; \
    apt-get clean -qqy;
RUN gem install jekyll

RUN git clone https://github.com/sugarlabs/www-sugarlabs /clone
ADD . /app
RUN pip install -r /app/requirements.txt

WORKDIR /clone
CMD python /app/main.py
