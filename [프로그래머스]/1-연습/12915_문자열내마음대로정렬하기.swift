//
// [프로그래머스] 12915 - 문자열 내 마음대로 정렬하기
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12915
//
import Foundation

// 나의 풀이
func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted{ ( $0[String.Index(encodedOffset: n)] < $1[String.Index(encodedOffset: n)] ) || ($0[String.Index(encodedOffset: n)] == $1[String.Index(encodedOffset: n)] && $0 < $1) }
}

// 다른 사람의 풀이
func solution2(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted{  Array($0)[n] == Array($1)[n] ? $0 < $1 :  Array($0)[n] < Array($1)[n] }
}
