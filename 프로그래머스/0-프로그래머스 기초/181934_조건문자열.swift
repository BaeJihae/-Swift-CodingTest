//
//  [ 프로그래머스 ] 181934 - 조건 문자열
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181934
//

import Foundation

func solution(_ ineq:String, _ eq:String, _ n:Int, _ m:Int) -> Int {
    switch (ineq, eq) {
    case (">","=") :
        return n >= m ? 1 : 0
    case ("<","=") :
        return n <= m ? 1 : 0
    case (">","!") :
        return n > m ? 1 : 0
    case ("<","!") :
        return n < m ? 1 : 0
    default :
        return 0
    }
}
