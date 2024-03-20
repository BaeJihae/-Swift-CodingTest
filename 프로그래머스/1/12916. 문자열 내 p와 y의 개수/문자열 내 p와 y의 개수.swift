import Foundation


func solution1(_ s:String) -> Bool
{
    let string = s.lowercased()
    s.filter{ $0 == "p" }.count == s.filter{ $0 == "y" }.count
}

func solution2(_ s:String) -> Bool
{
    let string = s.lowercased()
    return string.components(separatedBy: "p").count == string.components(separatedBy: "y").count
}

let start1 = DispatchTime.now()
solution1("pPooweljdslfnxocvhzethksrottyryertyguyqieuyuweyrutsrtyhoyY")
let end1 = DispatchTime.now()

let start2 = DispatchTime.now()
solution2("pPooweljdslfnxocvhzethksrottyryertyguyqieuyuweyrutsrtyhoyY")
let end2 = DispatchTime.now()

let timeElapsed1 = end1.uptimeNanoseconds - start1.uptimeNanoseconds
let timeElapsed2 = end2.uptimeNanoseconds - start2.uptimeNanoseconds

print("첫번째 함수는 \(timeElapsed1)나노초 걸렸습니다.")
print("두번째 함수는 \(timeElapsed2)나노초 걸렸습니다.")
