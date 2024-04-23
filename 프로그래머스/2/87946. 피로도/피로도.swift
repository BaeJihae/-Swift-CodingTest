import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {

    var answer = 0
    var check = [Bool](repeating: false, count: dungeons.count)
    
    func dfs(now: Int, depth: Int) {
        
        answer = max(depth, answer)
        
        for i in 0..<dungeons.count {
            if !check[i] && now >= dungeons[i][0]{
                check[i] = true
                dfs(now: now - dungeons[i][1], depth: depth+1 )
                check[i] = false
            }
        }
    }
    
    dfs(now: k, depth: 0)
    return answer
}