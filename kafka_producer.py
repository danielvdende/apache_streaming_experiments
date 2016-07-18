from kafka import KafkaProducer

producer = KafkaProducer(bootstrap_servers='localhost:9092')

# first read the datafile
data = []
with open('data.json') as f:
	for line in f:
		data.append(line)

pointer = 0
while True:
	producer.send('topic', data[pointer])
	pointer += 1 % len(data)