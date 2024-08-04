def solution(park, routes):
    
    answer = []
    
    di = [0, 1, 0, -1]
    dj = [1, 0, -1, 0]
    
    location_dict = {'E':0, 'S':1, 'W':2, 'N':3}
    
    ci, cj = 0, 0
    
    # 현재 위치 찾기
    for index, pa in enumerate(park):
        if 'S' in pa:
            ci = index
            cj = pa.index('S')
            break
    
    # 좌표 이동하기
    for route in routes:
        l, nm = route.split()
        k = location_dict[l]
        cnt = 0
        
        for n in range(1, int(nm)+1):
            
            ni = ci + di[k] * n
            nj = cj + dj[k] * n
            
            if 0 > ni or ni >= len(park) or 0 > nj or nj >= len(park[0]):
                break
            
            if park[ni][nj] == 'X':
                break
            
            cnt += 1
        
        if cnt == int(nm):
            ci, cj = ni, nj
        
    answer = [ci, cj]
    
    return answer