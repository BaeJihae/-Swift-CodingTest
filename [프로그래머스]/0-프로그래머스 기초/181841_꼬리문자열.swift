//
//  [ 프로그래머스 ] 181841 - 꼬리 문자열
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181841
//

import Foundation

func solution(_ str_list:[String], _ ex:String) -> String {
    return str_list.filter{ !$0.contains( ex ) }.reduce ("", +)
}
