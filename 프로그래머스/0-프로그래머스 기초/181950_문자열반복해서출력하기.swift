//
//  [ 프로그래머스 ] 181950 - 문자열 반복해서 출력하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181950
//

import Foundation

let inp = readLine()!.components(separatedBy: [" "]).map { $0 }
let (s1, a) = (inp[0], Int(inp[1])!)

var strA : String = ""

for _ in 1...Int(a){
    strA.append(s1)
}
print(strA)
