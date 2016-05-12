import csv
with open('data_1_129.432.123.3_80.csv','rb') as f:
	reader = csv.reader(f)
	for row in reader:
		print row