//
//  [ 프로그래머스 ] 87389 - 나머지가 1이 되는 수 찾기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/87389
//
func solution(_ n:Int) -> Int {
    var i = 2
    while n % i != 1 {
        i += 1
    }
    return i
}
