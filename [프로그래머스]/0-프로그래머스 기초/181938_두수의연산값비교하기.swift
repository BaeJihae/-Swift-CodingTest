//
//  [ 프로그래머스 ] 181938 - 두 수의 연산값 비교하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181938
//

import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    return max( Int(String(a)+String(b))!, 2*a*b )
}
