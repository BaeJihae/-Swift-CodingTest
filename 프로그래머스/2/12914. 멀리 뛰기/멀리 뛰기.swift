func solution(_ n:Int) -> Int {
    
    if n == 1 {
        return 1
    }else if n == 2 {
        return 2
    }
    
    var dp = [Int](repeating: 0, count: n)
    
    dp[0] = 1
    dp[1] = 2
        
    for i in 2..<n {
        dp[i] = ( dp[i-1] + dp[i-2] ) % 1234567
    }
    
    
    return dp[n-1] % 1234567
}