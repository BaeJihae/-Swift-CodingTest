//
//  [ 프로그래머스 ] 12925 - 문자열을 정수로 바꾸기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/12925
//

//func solution(_ s:String) -> Int { Int(s)! }

func solution(_ s:String) -> Int {
    switch s.prefix(1) {
    case "+":
        return Int(s.suffix(s.count-1))!
    case "-":
        return -Int(s.suffix(s.count-1))!
    default:
        return Int(s)!
    }
}
