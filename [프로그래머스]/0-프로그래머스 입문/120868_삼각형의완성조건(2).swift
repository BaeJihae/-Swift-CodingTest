//
//  [ 프로그래머스 ] 120868 - 삼각형의 완성조건(2)
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120868
//

import Foundation

func solution(_ sides:[Int]) -> Int {
    var newsides = sides.sorted()
    var count = (newsides[0]...newsides[1]).filter { $0+newsides[0] > newsides[1] }.count
    count += (1..<newsides[0]).filter { $0 + newsides[0] > newsides[1]}.count
    count += (newsides[1]+1..<newsides[0]+newsides[1]).count
    
    return count
}
