import Foundation

func solution(_ N: Int, _ stages: [Int]) -> [Int] {
    var failureRates: [(Int, Double)] = []
    var failPlayer = [Int: Int]()
    var totalPlayers = stages.count

    for i in stages {
        failPlayer[i] = ( failPlayer[i] ?? 0 ) + 1
    }
    for i in 1...N {
        guard let failPlayer = failPlayer[i] else {
            failureRates.append((i, 0))
            continue
        }
        
        let failureRate = Double(failPlayer) / Double(totalPlayers)
        failureRates.append((i, failureRate))
        
        totalPlayers -= failPlayer
    }

    let sortedStages = failureRates.sorted { $0.1 == $1.1 ? $0.0 < $1.0 : $0.1 > $1.1 }.map { $0.0 }
    return sortedStages
}