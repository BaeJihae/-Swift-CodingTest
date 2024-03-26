func solution(_ n:Int) -> Int {
    
    var x = 0
    var y = 1
    
    for i in 1...n/2 {
        x = ( x + y ) % 1234567 
        y = ( y + x ) % 1234567
    }
    
    return n % 2 == 0 ? x % 1234567 : y % 1234567
}