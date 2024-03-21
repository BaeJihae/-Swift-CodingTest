//
//  main.swift
//  PlusPolynomial
//
//  Created by 배지해 on 2023/07/06.
//

import Foundation

//"3x + 7 + x" = "4x + 7"

func solution(_ polynomial:String) -> String {
    
    var pA = Array(polynomial.components(separatedBy: " "))
    
    // 일차항, 상수항, 답 변수 선언
    var firstnum = 0, lastnum = 0
    var answer = ""
    
    // 일차항 계수 더하기, 상수항 더하기
    for str in pA{
        if str.contains("x"){
            if str == "x"{
                firstnum += 1
            }else{
                if let a = Int(str.components(separatedBy: ["x"]).joined()){ firstnum += a }
            }
        }else{
            if let b = Int(str){ lastnum += b }
        }
    }
    
    if firstnum > 1 { answer.append( String(firstnum)+"x")
    }else if firstnum == 1 { answer.append("x") }
    
    if firstnum != 0 && lastnum > 0 { answer.append(" + ") }
    
    if lastnum != 0 { answer.append(String(lastnum)) }
    
    return answer
}

print(solution("10x + 7 + 23x + x"))
