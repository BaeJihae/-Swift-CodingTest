import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var isVisited = [Bool](repeating: false, count: dungeons.count)
    var answer = 0
    func dfs(now: Int, depth: Int) {
        answer = max(depth, answer)
        for i in 0..<dungeons.count {
            if !isVisited[i] && now >= dungeons[i][0] {
                isVisited[i] = true
                dfs(now: now-dungeons[i][1], depth: depth+1)
                isVisited[i] = false
            } 
        }
    }
    dfs(now: k, depth: 0)
    return answer
}