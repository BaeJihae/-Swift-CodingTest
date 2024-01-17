//
//  main.swift
//  PressingCode
//
//  Created by 배지해 on 2023/07/06.
//

import Foundation

//문자열 `code`가 주어집니다.
//`code`를 앞에서부터 읽으면서 만약 문자가 "1"이면 `mode`를 바꿉니다. `mode`에 따라 `code`를 읽어가면서 문자열 `ret`을 만들어냅니다.
//`mode`는 0과 1이 있으며, `idx`를 0 부터 `code의 길이 - 1` 까지 1씩 키워나가면서 `code[idx]`의 값에 따라 다음과 같이 행동합니다.
//
//- `mode`가 0일 때
//    - `code[idx]`가 "1"이 아니면 `idx`가 짝수일 때만 `ret`의 맨 뒤에 `code[idx]`를 추가합니다.
//    - `code[idx]`가 "1"이면 `mode`를 0에서 1로 바꿉니다.
//- `mode`가 1일 때
//    - `code[idx]`가 "1"이 아니면 `idx`가 홀수일 때만 `ret`의 맨 뒤에 `code[idx]`를 추가합니다.
//    - `code[idx]`가 "1"이면 `mode`를 1에서 0으로 바꿉니다.
//
//문자열 `code`를 통해 만들어진 문자열 `ret`를 return 하는 solution 함수를 완성해 주세요.
//단, 시작할 때 `mode`는 0이며, return 하려는 `ret`가 만약 빈 문자열이라면 대신 "EMPTY"를 return 합니다.

func solution(_ code:String) -> String {
    
    var mode = false
    var ret :String = ""
    //let codeArray = code.split(separator: "")
    let codeArray = Array(code.map{String($0)})
    
    for idx in 0...code.count-1{
        if codeArray[idx] == "1" { mode.toggle(); continue }
        if !mode && idx%2 == 0{
            ret.append(codeArray[idx])
        }else if mode && idx%2 == 1 {
            ret.append(codeArray[idx])
        }
    }
    
    return ret.isEmpty ? "EMPTY" : ret
}

print(solution("abc1abc1abc"))
