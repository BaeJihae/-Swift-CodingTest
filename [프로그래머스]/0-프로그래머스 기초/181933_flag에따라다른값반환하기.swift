//
//  [ 프로그래머스 ] 181933 - flag에 따라 다른 값 반환하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181933
//

import Foundation

func solution(_ a:Int, _ b:Int, _ flag:Bool) -> Int {
    return flag ? a+b : a-b
}
