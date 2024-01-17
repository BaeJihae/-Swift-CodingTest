//
//  [ 프로그래머스 ] 120913 - 잘라서 배열로 저장하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120913
//

import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var answer = [String]()
    var my_str = my_str
    
    while my_str != "" {
        answer.append(String(my_str.prefix(n)))
        my_str = String(my_str.dropFirst(n))
    }
    
    return answer
}

print(solution("abc1Addfggg4556b", 6))
