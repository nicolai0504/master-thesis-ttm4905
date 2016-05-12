import csv
import random

ipadresses = ['129.432.123.3', '129.987.123.422', '987.654.432.123','456.423.0.124','126.674.234.543','129.432.123.3', '129.987.123.422', '987.654.432.123','456.423.0.124','126.674.234.543','129.432.123.3', '129.987.123.422', '987.654.432.123','456.423.0.124','126.674.234.543']
ports = ['80','8080','8000','7000','9000','8888','80','8080','8000','7000','9000','8888']


lines = [line.rstrip('\n') for line in open('2012.txt')]

for i in range (len(lines)-1):
	with open(str(lines[i])+'.csv','w') as fp:
		reader = csv.writer(fp,delimiter='	')
		datalist = [['day','hour','value','ip','port']]
		for j in range (1,16):
			for s in range(1,8):
				datalist.append([s,j,int(random.random()*1000),ipadresses[j-1],ports[s-1]])

		reader.writerows(datalist)





























# for i in range (1,10):
# 	for j in range (1,5):
# 		with open('test'+str(i)+'_'+str(j)+'.csv','w') as fp:
# 			reader = csv.writer(fp,delimiter=',')
# 			datalist = []
# 			for s in range (1,100):
# 				datalist.extend([str (int(random.random()*10000)), ipadresses[int(random.random()*len(ipadresses))]])

# 			data=[['stock','sales'],datalist]
# 			reader.writerows(data)