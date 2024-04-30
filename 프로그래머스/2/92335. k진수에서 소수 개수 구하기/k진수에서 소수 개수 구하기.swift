import Foundation

func solution(_ n:Int, _ k:Int) -> Int {

    var count = 0
    
    for i in String(n, radix: k).split(separator: "0") {
        if Int(i)! != 1 {
            if isPrime(n: Int(i)!) {
                count += 1
            }
        }
    }
    
    return count
}

func isPrime(n: Int) -> Bool {
    for i in 2...Int(sqrt(Double(n)))+1 {
        if n % i == 0 && i != n{
            return false
        }
    }
    return true
}