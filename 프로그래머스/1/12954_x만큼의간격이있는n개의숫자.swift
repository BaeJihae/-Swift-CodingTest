//
//  [ 프로그래머스 ] 12954 - x만큼의 간격이 있는 n개의 숫자
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/12954
//
func solution(_ x:Int, _ n:Int) -> [Int64] {
    return x == 0 ? (0..<n).map{_ in 0} : stride(from: x, through: x*n, by: x).map{ Int64($0) }
}
