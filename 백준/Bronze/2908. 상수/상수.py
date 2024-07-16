n, m = input().split()

n = ''.join(reversed(n))
m = ''.join(reversed(m))

print(max(int(n), int(m)))