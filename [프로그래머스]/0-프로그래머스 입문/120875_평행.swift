//
//  [ 프로그래머스 ] 120875 - 평행
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120875
//

import Foundation

func parallel(_ dots:[[Int]],_ a:Int,_ b:Int,_ c:Int,_ d:Int) -> Int {
    var inclination1 = Double(dots[a][0] - dots[b][0]) / Double(dots[a][1] - dots[b][1])
    var inclination2 = Double(dots[c][0] - dots[d][0]) / Double(dots[c][1] - dots[d][1])
    if inclination1 == inclination2 {
        return 1
    }else{
        return 0
    }
    
}

func solution(_ dots:[[Int]]) -> Int {
    if parallel(dots,0,1,2,3) == 1{
        return 1
    }else if parallel(dots,0,2,1,3) == 1{
        return 1
    }else if parallel(dots,0,3,1,2) == 1{
        return 1
    }else{
        return 0
    }
}
