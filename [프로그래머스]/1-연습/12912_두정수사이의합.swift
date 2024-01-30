//
//  [ 프로그래머스 ] 12912 - 두 정수 사이의 합
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/12912
//

// 나의 풀이
func solution(_ a:Int, _ b:Int) -> Int64 {
    if a+b == 0 {
        return 0
    }else {
        return Int64((min(a,b)...max(a,b)).reduce(0,+))
    }
}

// 다른 사람의 풀이 - 등차수열의 합 공식 이용
func solution2(_ a:Int, _ b:Int) -> Int64 {
    return Int64(a+b)*Int64(max(a,b)-min(a,b)+1)/Int64(2)
}

