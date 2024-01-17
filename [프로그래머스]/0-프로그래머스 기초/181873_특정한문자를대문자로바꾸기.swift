//
//  [ 프로그래머스 ] 181873 - 특정한 문자를 대문자로 바꾸기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181873
//

import Foundation

func solution(_ my_string:String, _ alp:String) -> String {
    return my_string.replacingOccurrences(of: alp, with: alp.uppercased())
}
