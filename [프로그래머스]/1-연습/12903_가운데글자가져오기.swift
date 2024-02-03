//
// [프로그래머스] 12903 - 가운데 글자 가져오기 
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12903
//

func solution(_ s:String) -> String {
    let s = Array(s)
    return s.count % 2 == 0 ? String(s[s.count/2-1...s.count/2]) : String(s[s.count/2])
}

// 다른 사람 풀이
func solution2(_ s:String) -> String {
    return String(s[String.Index(encodedOffset: s.count/2-1)...String.Index(encodedOffset: s.count/2)])
}
