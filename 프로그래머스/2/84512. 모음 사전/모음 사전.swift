import Foundation

func solution(_ word:String) -> Int {
    
    let alphabet = ["A","E","I","O","U"]
    var count = 0
    var isAnswer: Bool = false
    
    func dfs(tmp: String, num: Int) {
        
        if tmp != word {
            count += 1
        }else {
            isAnswer = true
        }
        
        for w in alphabet {
            if num < 5 && !isAnswer {
                dfs(tmp: tmp+w, num: num+1)
            }
        }
    }
    dfs(tmp: "", num: 0)
    return count
}