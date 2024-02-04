//
// [프로그래머스] 12950 - 행렬의 덧셈
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12950
//

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return zip(arr1, arr2).map{ a, b in zip(a,b).map{ $0 + $1 } }
}
