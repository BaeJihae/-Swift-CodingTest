import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    
    var carDict = [Int:(isIn: Bool, minute: Int)]()
    var feeDict = [Int:Int]()
    
    for record in records {
        let carInOut = record.split(separator: " ")
        let clock = carInOut[0].split(separator: ":")
        let minute = Int(clock[0])! * 60 + Int(clock[1])!
        let carNum = Int(String(carInOut[1]))!
        let isIn = carInOut[2] == "IN" ? true : false

        if !(carDict[carNum] ?? (isIn: false, minute: 0)).isIn {
            carDict[carNum] = (isIn: isIn, minute: minute)
        }else if !isIn {
            feeDict[carNum] = ( feeDict[carNum] ?? 0 ) + ( minute - carDict[carNum]!.minute )
            carDict[carNum] = (isIn: isIn, minute: minute)
        }
    }
    
    for car in carDict {
        if car.value.isIn {
            feeDict[car.key] = ( feeDict[car.key] ?? 0 ) + ( 1439 - car.value.minute )
        }
    }
    print(feeDict)
    
    for fee in feeDict {
        if fee.value > fees[0]{
            var value = Double(fee.value-fees[0])/Double(fees[2])
            feeDict[fee.key] = fees[1] + Int(ceil(value))*fees[3]
        }else {
            feeDict[fee.key] = fees[1]
        }
    }
    return feeDict.sorted{ $0.key < $1.key }.map{ $0.value }
}