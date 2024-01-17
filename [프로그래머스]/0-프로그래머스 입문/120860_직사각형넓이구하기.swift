//
//  [ 프로그래머스 ] 120860 - 직사각형 넓이 구하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120860

func solution(_ dots:[[Int]]) -> Int {
    var height = 0
    var weight = 0

    for i in 1..<4 {
        if dots[0][0] == dots[i][0] {
            height = abs( dots[0][1] - dots[i][0] )
        }
        if dots[0][1] == dots[i][1] {
            weight = abs( dots[0][0] - dots[i][0] )
        }
    }
    return height * weight
}
