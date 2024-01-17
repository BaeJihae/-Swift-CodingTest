//
//  main.swift
//  SpiralArrangementOfIntegers
//
//  Created by 배지해 on 2023/07/02.
//

import Foundation

func solution(_ n:Int) -> [[Int]] {
    
    // n*n 이차원 배열 선언 - 값을 넣기 전 모든 요소 0으로 초기화
    var answer : [[Int]] = Array(repeating: Array(repeating: 0,count:n ), count: n)
    // 행(x), 열(y)을 이동시킬 move 배열 선언
    let move : [[Int]] = [[0,1], [1,0], [0,-1], [-1,0]]
    
    // 값을 증가, 감소 시킬 x, y / 정수값을 넣어줄 realX, realY 모두 0으로 초기화하여 선언
    var x = 0, y = 0, realX = 0, realY = 0
    // move의 행값을 이동시킬 변수 i 선언
    var i = 0
    
    // 1 부터 n*n까지 반복문
    for k in 1...Int( pow( Double(n), 2.0) ){

        // 이차원 배열에 정수값을 차례대로 입력
        answer[realX][realY] = k
        
        // move 배열을 이용해 행과 열 바꿔줌.
        x = realX + move[i][0]
        y = realY + move[i][1]
        
        // 만약 행과 열이 0 ~ n-1 값을 벗어나거나 이차원 배열이 비어있지 않다면, move 배열을 증가
        if x < 0 || x >= n || y < 0 || y >= n || answer[x][y] != 0 {
            i = (i+1)%4
            realX += move[i][0]
            realY += move[i][1]
        }else{
            // 아니라면 realX와 realY에 변화된 값 넣어주기
            realX = x; realY = y
        }
        
    }
    return answer
}

print(solution(6))
