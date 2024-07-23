import sys

n = int(input())

gcd_list = []

def e(a, b):
    while b != 0:
        [a, b] = [b, a%b]
    return a

for _ in range(n):
    a, b = map(int, sys.stdin.readline().split())
    gcd_list.append((a * b, e(a, b)))

for gcd in gcd_list:
    print(gcd[0]//gcd[1])