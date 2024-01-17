//
//  [ 프로그래머스 ] 181836 - 그림 확대
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181836
//

import Foundation

func solution(_ picture:[String], _ k:Int) -> [String] {
    return picture.flatMap { Array(repeating: $0.map { String(repeating: $0, count: k) }.joined(), count: k) }
}
