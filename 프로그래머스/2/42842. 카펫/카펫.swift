import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    
    var n = brown + yellow
    
    for i in 3...Int(sqrt(Double(n))) {
        if n % i == 0 {
            var y = i
            var x = n / i
            if brown ==  ( 2 * x + 2 * y - 4 ) {
                return [x, y]
            }
        }
    }
    
    return []
}