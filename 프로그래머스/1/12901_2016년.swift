//
//  [ 프로그래머스 ] 12901 - 2016년
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/12901
//
func solution(_ a:Int, _ b:Int) -> String {
    let week = ["THU","FRI","SAT","SUN","MON","TUE","WED"]
    let day = [0,31,29,31,30,31,30,31,31,30,31,30,31]
    return week[ ( (0..<a).reduce(0) { $0 + day[$1] } + b ) % 7 ]
}
