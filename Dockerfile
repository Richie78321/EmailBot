FROM python

COPY . ./

VOLUME bot.db

RUN pip install -r requirements.txt

CMD ["python", "-u", "./bot.py"]