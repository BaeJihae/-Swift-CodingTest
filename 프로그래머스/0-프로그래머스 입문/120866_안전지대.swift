//
//  main.swift
//  SafetyZone
//
//  Created by 배지해 on 2023/07/04.
//

import Foundation

func solution(_ board:[[Int]]) -> Int {
    
    let move: [[Int]] = [[-1,-1], [0,-1], [1,-1], [-1,0], [1,0], [-1,1], [0,1], [1,1]]
    var answer: [[Int]] = board
    var n = board.count
    var count = 0
    
    for x in 0...n-1{
        for y in 0...n-1{
            if board[x][y] == 1{
                for i in 0...7{
                    if 0 <= x+move[i][0] && x+move[i][0] < n && 0 <= y+move[i][1] && y+move[i][1] < n {
                        answer[x+move[i][0]][y+move[i][1]] = 1
                    }
                }
            }
        }
    }
    for x in answer{
        for y in x{
            if y == 0{
                count += 1
            }
        }
    }
    
    return count
    
}

print(solution([[1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [0, 0, 0, 0, 0], [0, 0, 1, 1, 0], [0, 0, 0, 0, 0]]))
