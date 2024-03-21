//
//  [ 프로그래머스 ] 181911 - 부분 문자열 이어 붙여 문자열 만들기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181911
//
import Foundation

func solution(_ my_strings:[String], _ parts:[[Int]]) -> String {
    var str = ""
    (0...my_strings.count-1).forEach { i in
        var arr = my_strings[i].map{ String($0) }
        str = str + arr[parts[i][0]...parts[i][1]].joined()
    }
    return str
}
