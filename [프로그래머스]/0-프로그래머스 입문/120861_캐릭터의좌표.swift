//
//  [ 프로그래머스 ] 120861 - 캐릭터의 좌표
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120861

import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    
    let turn = ["left","right","up","down"]
    let move = [[-1,0],[1,0],[0,1],[0,-1]]
    
    var answer = [0,0]
    var offset = 0
    
    keyinput.forEach{ a in
        
        turn.enumerated().filter{ $0.element == a }.forEach{ offset = $0.offset }
        
        let (tmpX, tmpY) = (answer[0] + move[offset][0], answer[1] + move[offset][1])
        if tmpX >= -(board[0]/2) && tmpX <= board[0]/2 && tmpY >= -(board[1]/2) && tmpY <= board[1]/2 {
            ( answer[0], answer[1] ) = ( tmpX, tmpY )
        }
    }
    
    return answer
}
