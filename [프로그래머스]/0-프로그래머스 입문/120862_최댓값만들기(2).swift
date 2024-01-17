//
//  [ 프로그래머스 ] 120862 - 최댓값 만들기(2)
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120862
//
func solution(_ numbers:[Int]) -> Int {
    return max(numbers.sorted().suffix(2).reduce(1, *), numbers.sorted().prefix(2).reduce(1, *))
}
