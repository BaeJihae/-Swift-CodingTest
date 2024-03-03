//
// [프로그래머스] 134240 - 푸드 파이트 대회
//
// https://school.programmers.co.kr/learn/courses/30/lessons/134240
//
import Foundation

// 나의 풀이
func solution(_ food:[Int]) -> String {
    
    var answer: String = "0"
    
    for (i, food) in food.enumerated().reversed() {
        var j = 0
        while ( j < food / 2 ){
            answer = "\(i)" + answer + "\(i)"
            j += 1
        }
    }
    
    return answer
}

func solution2(_ food:[Int]) -> String {
    
    var answer: String = "0"
    
    for (i, food) in food.enumerated().reversed() {
        let addStr = String(repeating: "\(i)", count: food / 2)
        answer = addStr + answer + addStr
    }
    
    return answer
}

// 다른 사람의 풀이

func solution3(_ food:[Int]) -> String {
var result = ""
for i in food.indices {
    result += String(repeating: String(i), count: food[i] / 2)
}
return result + "0" + result.reversed()
}

