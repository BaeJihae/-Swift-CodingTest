import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var count = 0
    var stacks: [[Int]] = Array(repeating: [], count: board.count)
    var bucket: [Int] = []

    board.reversed().forEach {
        $0.enumerated().forEach {
            if $0.1 != 0 {
                stacks[$0.0].append($0.1)
            }
        }
    }

    moves.forEach {
        if let doll = stacks[$0-1].popLast() {
            if let last = bucket.last, last == doll {
                bucket.removeLast(1)
                count += 2
            } else {
                bucket.append(doll)
            }
        }
    }

    return count
}