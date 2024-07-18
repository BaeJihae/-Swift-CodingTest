import math

n = int(input())

order = int((-1 + int(math.sqrt(1+8*(n-1))))/2 + 1)

n_max = int(order * (order+1) / 2)
n_interval = n_max - n

if order % 2 == 0:
    print(f'{order-n_interval}/{1+n_interval}')
else:
    print(f'{1+n_interval}/{order-n_interval}')