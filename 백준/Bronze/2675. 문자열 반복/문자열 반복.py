n = int(input())

for _ in range(n):
    r, s = input().split()
    for a in s:
        print(a*int(r), end = "")
    print()