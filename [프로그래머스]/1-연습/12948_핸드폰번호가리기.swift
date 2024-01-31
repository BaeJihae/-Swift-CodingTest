//
//  [ 프로그래머스 ] 12948 - 핸드폰 번호 가리기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/12948
//

// 나의 풀이
func solution1(_ phone_number:String) -> String {
    return phone_number.enumerated().map{ $0.offset < phone_number.count-4 ? String("*") : String($0.element) }.joined()
}

// 다른 사람 풀이
func solution2(_ phone_number:String) -> String {
    return String("\(String(repeating: "*", count: phone_number.count - 4))\(phone_number.suffix(4))")
}
