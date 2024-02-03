//
// [프로그래머스] 12922 - 수박수박수박수박수박수?
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12922
//

func solution(_ n:Int) -> String {
    var answer = [String]()
    for i in (0..<n) {
        i % 2 == 0 ? answer.append("수") : answer.append("박")
    }
    return answer.joined()
}
