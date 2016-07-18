import argparse
from time import sleep
from kafka import KafkaProducer

interval = 1
topic = 'topic'
datafile = 'dowjones.csv'

producer = KafkaProducer(bootstrap_servers='localhost:9092')

# first read the datafile
data = []
with open(datafile) as f:
	for line in f:
		data.append(line.strip())

print "data loaded"

pointer = 0
while True:
	producer.send(topic, data[pointer])
	print "sent: {}".format(data[pointer])
	pointer = (pointer + 1) % len(data)
	sleep(interval)
