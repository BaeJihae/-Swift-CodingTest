//
//  [ 프로그래머스 ] 12933 - 정수 내림차순으로 배치하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/12933
//
func solution(_ n:Int64) -> Int64 {
    return Int64(String(String(n).sorted(by: >))) ?? 0
}
