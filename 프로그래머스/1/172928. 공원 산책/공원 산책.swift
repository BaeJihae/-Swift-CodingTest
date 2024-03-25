import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    
    var (h, w) :(Int, Int) = (0, 0)
    var count = 0
    
    // park 이중 배열로 나타내기
    var newPark: [[String]] = []
    for element in park{
        var ap: [String] = []
        ap = element.map { String($0) }
        // 현재위치 파악하기
        if let x = ap.firstIndex(of: "S"){
            ( h, w) = ( count, Int(x))
        }
        newPark.append(ap)
        count += 1
    }
    
    // 동서남북으로 이동할 배열 만들기
    let op = ["N", "S", "W", "E"]
    let move = [[-1, 0], [1, 0], [0, -1], [0, 1]]
    
    // routes 배열을 위치와 칸 수로 구분하기
    for order in routes{
        let a = (order.components(separatedBy: " ").map {$0})
        let ( currentOp, n) = (a[0], Int(a[1])!)
        let index = op.firstIndex(of: currentOp)!
        
        var (hx, wx) = (h, w)
        var c = 0
        for _ in 1...n{
            hx += (move[index][0])
            wx += (move[index][1])
            // 1. 공원 벗어나는지 확인
            // 2. 장애물 만나는지 확인
            if hx >= 0 && hx < newPark.count && wx >= 0 && wx < newPark[0].count && newPark[hx][wx] != "X"{
                c += 1
            }
            if c == n {
                ( h, w ) = ( hx, wx )
            }
        }
    }
    return [h, w]
}