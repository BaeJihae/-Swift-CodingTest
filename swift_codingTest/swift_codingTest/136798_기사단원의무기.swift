//
//  [ 프로그래머스 ] 136798 - 기사단원의 무기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/136798
//
import Foundation

func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var answer = 0
    for n in (1...number) {
        var c = 0
        for i in (1...Int(sqrt(Double(n)))) {
            if n % i == 0 {
                c += ( i * i == n ? 1 : 2 )
            }
        }
        answer += ( c <= limit ? c : power )
    }
    return answer
}
