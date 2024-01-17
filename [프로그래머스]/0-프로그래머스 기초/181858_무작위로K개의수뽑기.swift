//
//  [ 프로그래머스 ] 181858 - 무작위로 K개의 수 뽑기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181858
//

import Foundation

// 나의 풀이
func solution(_ arr:[Int], _ k:Int) -> [Int] {
    
    var newArr: [Int] = []
    
    for i in arr{
        if newArr.count < k {
            if newArr.contains(i) == false {
                newArr.append(i)
            }
        }
    }
    if newArr.count < k {
        (newArr.count...(k-1)).forEach{ _ in  newArr.append(-1) }
    }
    return newArr
}

