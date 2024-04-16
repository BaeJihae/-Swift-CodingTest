import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    
    var array = [[Int]]()
    for i in 0..<arr1.count {
        var tmp = [Int]()
        for j in 0..<arr2[0].count {
            tmp.append((0..<arr1[0].count).reduce(0) { $0 + ( arr1[i][$1] * arr2[$1][j] ) })
        }
        array.append(tmp)
    }
    return array
}