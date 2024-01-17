//
//  [ 프로그래머스 ] 120895 - 인덱스 바꾸기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120895
//

import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var my_string_array = Array(my_string)
//    let tmp1 = my_string_array[num1]
//    let tmp2 = my_string_array[num2]
//    my_string_array.remove(at: num1)
//    my_string_array.insert(tmp2, at: num1)
//    my_string_array.remove(at: num2)
//    my_string_array.insert(tmp1, at: num2)
    my_string_array.swapAt(num1, num2)
    return String(my_string_array)
}
print(solution("Iloveyou", 1, 4))
