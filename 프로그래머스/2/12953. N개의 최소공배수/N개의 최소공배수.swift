import Foundation

func solution(_ arr:[Int]) -> Int {
    
    // 소수 배열
    let a = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
    
    // 최대공약수의 소인수분해
    var maxDic = [Int:Int]()
    
    for num in arr {
        
        var n = num
        
        if n == 1 {
            continue
        }
        
            for i in a {
                var k = 0
                while n % i == 0 {
                    k += 1
                    n = n / i
                    if ( maxDic[i] ?? 0 ) < k {
                        maxDic[i] = ( maxDic[i] ?? 0 ) + 1
                    }
                }
            }
        
    }
    
    return maxDic.reduce(1){ $0 * Int(pow(Float($1.key), Float($1.value)))}
}