//
// [프로그래머스] 42748 - K번째수
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12915
//
import Foundation

// 나의 풀이
func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    return commands.map{ i in array[i[0]-1...i[1]-1].sorted{$0 < $1}[i[2]-1] }
}
