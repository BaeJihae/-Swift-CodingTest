//
//  main.swift
//  OXquiz
//
//  Created by 배지해 on 2023/07/05.
//

import Foundation

// 입력예시 ["3 - 4 = -3", "5 + 6 = 11"]
// 출력예시 ["X", "O"]

// 연산을 계산해 맞으면 "O", 틀리면 "X" 출력
func calculater(_ x:String, _ op:String, _ y:String, _ z:String) -> String{
    switch op{
    case let op where op == "+":
        if Int(z) == ( Int(x)! + Int(y)! ){
            return "O"
        }else{
            return "X"
        }
    case let op where op == "-":
        if Int(z) == (Int(x)! - Int(y)!){
            return "O"
        }else{
            return "X"
        }
    default:
        break
    }
    return ""
}

func solution(_ quiz:[String]) -> [String] {
    
    var answer: [String] = []
    
    // 입력받은 문자열 분리해서 연산에 저장
    for str in quiz{
        let k = str.components(separatedBy: [" "]).map { $0 }
        answer.append(calculater(k[0], k[1], k[2], k[4]))
    }
    
    return answer
}

print(solution(["3 - 4 = -3", "5 + 6 = 11"]))
