//
//  [ 프로그래머스 ] 138477 - 명예의 전당(1)
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/138477
//
import Foundation

func solution(_ k:Int, _ score:[Int]) -> [Int] {
    // k등까지의 점수를 담을 배열
    var scoreArray = [Int]()
    return score.map{ score in
        if scoreArray.count < k {
            scoreArray.append(score)
        }else if score > scoreArray.last! {
            scoreArray.removeLast()
            scoreArray.append(score)
        }
        scoreArray = scoreArray.sorted{ $0 > $1 }
        return scoreArray.last!
    }
}

print(solution(3, [10,100,20,150,1,100,200]))
