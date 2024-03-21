//
//  181916_주사위게임3
//
//  https://school.programmers.co.kr/learn/courses/30/lessons/181916
//
//  Created by 배지해 on 2023/07/05.
//

import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    
    // 오름차순으로 정리
    // 같은 개수 출력
    // 3366 (2, 2) ->
    // 1111 (4) ->
    // 1234 (1, 1, 1, 1) ->
    // 3455 (1, 1, 2) ->
    // 3345 (2, 1, 1)
    
    var diceNum: [Int] = [a, b, c, d]
    var dice: [Int] = [0, 0, 0, 0, 0, 0]
    diceNum = diceNum.sorted()
    
    for num in diceNum{
        switch num{
        case 1: dice[0] += 1
        case 2: dice[1] += 1
        case 3: dice[2] += 1
        case 4: dice[3] += 1
        case 5: dice[4] += 1
        case 6: dice[5] += 1
        default: break
        }
    }
    dice.removeAll(where: { $0 == 0 })
    var count: Int = 0
    switch dice{
    case [4]:
        count = a*1111
    case [3,1]:
        count = Int(pow( Double( 10*diceNum[0] + diceNum[3]), 2))
    case [1,3]:
        count = Int(pow( Double( diceNum[0] + 10*diceNum[1]), 2))
    case [2,2]:
        count = (diceNum[0] + diceNum[2]) * abs(diceNum[0]-diceNum[2])
    case [1,1,2]:
        count = diceNum[0]*diceNum[1]
    case [1,2,1]:
        count = diceNum[0]*diceNum[3]
    case [2,1,1]:
        count = diceNum[2]*diceNum[3]
    case [1,1,1,1]:
        count = diceNum[0]
    default:
        break
    }
    return count
}


print(solution( 2, 2, 2, 2))
print(solution( 4, 1, 4, 4))
print(solution( 6, 3, 3, 6))
