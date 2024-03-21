//
//  [ 프로그래머스 ] 181908- 접미사인지 확인하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181908
//

import Foundation

func solution(_ my_string:String, _ is_suffix:String) -> Int {
    return my_string.suffix(is_suffix.count) == is_suffix ? 1 : 0
}
print(solution("banana", "ana"))
