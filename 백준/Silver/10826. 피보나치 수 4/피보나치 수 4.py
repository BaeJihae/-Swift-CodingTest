a = int(input())

def f(n):
    if n == 1 or n == 2:
        return 1
    prev2, prev1 = 1, 1
    current = 0
    for _ in range(3, n + 1):
        current = prev1 + prev2
        prev2, prev1 = prev1, current
    return current

print(f(a))