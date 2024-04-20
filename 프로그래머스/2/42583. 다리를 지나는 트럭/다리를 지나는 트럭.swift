import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    
    var count = 0
    var truckWeights = truck_weights
    var currentBridge = [Int](repeating: 0, count: bridge_length)
    var currentBridgeSum = 0
    
    while !truckWeights.isEmpty {
        
        if currentBridgeSum + truckWeights[0] <= weight {
            
            currentBridge.append(truckWeights[0])
            currentBridgeSum += truckWeights[0]
            truckWeights.removeFirst()
            
            currentBridge.removeFirst()
            currentBridgeSum -= currentBridge[0]
            
        }else {
            currentBridge.append(0)
            
            currentBridge.removeFirst()
            currentBridgeSum -= currentBridge[0]

        }
        count += 1
    }
    
    var numberOfZero = currentBridge.filter{ $0 == 0 }.count
    
    if numberOfZero != bridge_length {
        count += bridge_length
    }
    
    return count
}