import Foundation

func solution(_ n:Int) -> Int {
    var primeArray = [Bool](repeating: true, count: n-1)
    var i = 2
    while i*i <= n {
        if primeArray[i-2] {
            stride(from:i*i, through: n, by: i).forEach{
                primeArray[$0-2] = false
            }
        }
        i += 1
    }
    return primeArray.filter{ $0 }.count
}