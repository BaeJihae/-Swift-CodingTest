import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    
    var answer = 0
    func dfs(now: Int, i: Int){
        if i == numbers.count && now == target {
            answer += 1
        }
            if numbers.count > i {
                dfs(now: now-numbers[i], i: i+1)
                dfs(now: now+numbers[i], i: i+1)
            }
    }
    dfs(now: 0, i: 0)
    return answer
}