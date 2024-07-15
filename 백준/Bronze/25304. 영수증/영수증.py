x = int(input())
n = int(input())

for i in range(n):
    price, count = map(int, input().split())
    x -= price * count

if x == 0:
    print('Yes')
else:
    print('No')