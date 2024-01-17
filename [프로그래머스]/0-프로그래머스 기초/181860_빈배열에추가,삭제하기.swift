//
//  [ 프로그래머스 ] 181860 - 빈 배열에 추가, 삭제하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181860
//

import Foundation

func solution(_ arr:[Int], _ flag:[Bool]) -> [Int] {
    var x: [Int] = []
    flag.enumerated().forEach{ $0.element ? x.append(contentsOf: repeatElement(arr[$0.offset], count: arr[$0.offset]*2)) : x.removeLast(arr[$0.offset]) }
    return x
}
