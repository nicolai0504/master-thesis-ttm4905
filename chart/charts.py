import csv
import random

ipadresses = ['129.432.123.3', '129.987.123.422', '987.654.432.123','456.423.0.124','126.674.234.543','129.432.123.3', '129.987.123.422', '987.654.432.123','456.423.0.124','126.674.234.543','129.432.123.3', '129.987.123.422', '987.654.432.123','456.423.0.124','126.674.234.543']
ports = ['80','8080','8000','7000','9000','8888','80','8080','8000','7000','9000','8888']


lines = [line.rstrip('\n') for line in open('2012.txt')]

datalist2 = []
for i in range(len(lines)-1):
	for j in range (1,16):
		for s in range (1,13):
			with open(str(lines[i-1])+'_'+str(ipadresses[j-1])+'_'+str(ports[s-1])+'.csv','w') as fp:
				reader = csv.writer(fp,delimiter=',')
				datalist2.append(['date','close'])
				for k in range (0,24):
					datalist2.append([k,int(random.random()*500)])
				reader.writerows(datalist2)
				datalist2 = []

