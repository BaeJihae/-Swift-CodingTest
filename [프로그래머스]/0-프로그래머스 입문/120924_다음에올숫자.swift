//
//  [ 프로그래머스 ] 120924 - 다음에 올 숫자
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120924
//

import Foundation

func solution(_ common:[Int]) -> Int {
    var d = 0
    var r = 1
    if (common[1]-common[0]) == (common[2]-common[1]) {
        d = common[1]-common[0]
        return common[common.count-1] + d
    }else if(common[1]/common[0]) == (common[2]/common[1]) {
        r = common[1]/common[0]
        return common[common.count-1] * r
    } else{
        return 0
    }
}
