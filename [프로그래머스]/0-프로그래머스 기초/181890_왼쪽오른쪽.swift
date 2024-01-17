//
//  [ 프로그래머스 ] 181890 - 왼쪽 오른쪽
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181890
//

import Foundation

func solution(_ str_list:[String]) -> [String] {
    
    var lIndex = str_list.firstIndex(of: "l")
    var rIndex = str_list.firstIndex(of: "r")
    
    if lIndex == nil && rIndex == nil { return [] }
    else if lIndex == nil { return Array(str_list[(rIndex!+1)...]) }
    else if rIndex == nil { return Array(str_list[...(lIndex!-1)]) }
    return Int(lIndex!) < Int(rIndex!) ? Array(str_list[...(lIndex!-1)]) : Array(str_list[(rIndex!+1)...])
}
