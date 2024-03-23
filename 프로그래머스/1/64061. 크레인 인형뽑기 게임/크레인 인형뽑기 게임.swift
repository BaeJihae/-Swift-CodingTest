import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    
    // board를 행의 값을 key로 받은 Dictionary로 전환
    var boardDic = [Int: [Int]]()
    
    // moves에 따른 인형 인덱스를 넣을 배열
    var stack = [Int]()
    
    // 정답
    var count = 0
    
    // board -> Dic
    (0..<board.count).forEach{ i in
        boardDic[i+1] = (0..<board.count).filter{ board[$0][i] != 0 }
                                         .map{ board[$0][i] }
    }
    
    for move in moves {
        var calum = boardDic[move] ?? []
        guard let doll = calum.first else { continue }
        
        calum.removeFirst()
        boardDic[move] = calum
        
        if ( stack.last ?? 0 ) == doll {
            stack.removeLast()
            count += 2
        } else {
            stack.append(doll)
        }
        
    }
    return count
}