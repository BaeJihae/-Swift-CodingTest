import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    var players = players
    //<value:0, key:"mumu">
    var dict:Dictionary<String, Int> = [String: Int]()
    for i in 0..<players.count{
        dict.updateValue(i, forKey: players[i])
    }
    for overtake in callings{
        var index = dict[overtake]!
        var tmp = players[index-1]
        players.swapAt( index-1, index)
        dict.updateValue(index-1, forKey: overtake)
        dict.updateValue(index, forKey: tmp)
    }
    return players
}