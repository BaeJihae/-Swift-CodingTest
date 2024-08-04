T = int(input())

for tc in range(1, T+1):

    N = int(input())

    answer = [[0]*N for _ in range(N)]

    ci, cj = 0, 0

    pi = [0, 1, 0, -1]
    pj = [1, 0, -1, 0]

    k = 0

    for i in range(1, ( N ** 2 ) + 1):
        
        answer[ci][cj] = i

        ni = ci + pi[k]
        nj = cj + pj[k]

        if 0 > ni or ni >= N or 0 > nj or nj >= N:
            k = ( k + 1 ) % 4 
            ci += pi[k]
            cj += pj[k]
            continue

        if answer[ni][nj] != 0:
            k = ( k + 1 ) % 4 
            ci += pi[k]
            cj += pj[k]
            continue

        ci, cj = ni, nj

    print(f'#{tc}')

    for ans in answer:
        print(*ans)