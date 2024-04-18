import Foundation

func solution(_ clothes:[[String]]) -> Int {
    
    var clothesDic = [String:Int]()
    
    clothes.forEach{ clothesDic[$0[1]] = ( clothesDic[$0[1]] ?? 0 ) + 1 }
    
    return clothesDic.values.reduce(1) { $0 * ($1 + 1) } - 1
}