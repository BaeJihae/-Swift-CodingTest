def calculate(a, b, c):
    if a == b == c:
        return 10000 + a * 1000
    elif a != b and b != c and a != c:
        max_num = max(a, b, c)
        return max_num * 100
    else:
        if a == b:
            return a*100 + 1000
        elif b == c:
            return b*100 + 1000
        else:
            return c*100 + 1000

n = int(input())

answer = 0

for _ in range(n):
    dice = list(map(int, input().split()))
    answer = max(answer, calculate(dice[0], dice[1], dice[2]))
    
print(answer)