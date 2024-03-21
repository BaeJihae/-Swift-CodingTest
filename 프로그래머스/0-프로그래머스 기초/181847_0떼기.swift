//
//  [ 프로그래머스 ] 181847 - 0 떼기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181847
//
import Foundation

func solution(_ n_str:String) -> String {
    var answer = n_str
    while answer.prefix(1) == "0" {
        answer = String(answer.dropFirst())
    }
    return answer
}
