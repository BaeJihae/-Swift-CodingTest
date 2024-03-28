import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int{
    var answer = 1
    var a = a, b = b, n = n
    
    while n != 1 {
        n /= 2
        a = (a+1)/2
        b = (b+1)/2
        
        if a == b {
            return answer
        }else {
            answer += 1
        }
    }

    return answer
}