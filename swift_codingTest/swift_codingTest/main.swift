//
// [프로그래머스] 77484 - 로또의 최고 순위와 최저 순위
//
// https://school.programmers.co.kr/learn/courses/30/lessons/77484
//

import Foundation


func solution1(_ s:String) -> Bool
{
    let s = s.lowercased()
    return s.filter{ $0 == "p" }.count == s.filter{ $0 == "y" }.count
}

func solution2(_ s:String) -> Bool
{
    let string = s.lowercased()
    return string.components(separatedBy: "p").count == string.components(separatedBy: "y").count
}

var timeElapsed1: UInt64 = 0
var timeElapsed2: UInt64 = 0

for _ in 1...100 {
    let start1 = DispatchTime.now()
    print(solution1("pPooweljdslfnxocvhzethksrEFLKSJODIFJSEVBVNJ0UKKGLHNJIVJttyryertyguyqieuyuweyrutsrtyhoyY"))
    let end1 = DispatchTime.now()
    
    let start2 = DispatchTime.now()
    print(solution2("pPooweljdslfnxocvhzethksrEFLKSJODIFJSEVBVNJ0UKKGLHNJIVJttyryertyguyqieuyuweyrutsrtyhoyY"))
    let end2 = DispatchTime.now()
    
    timeElapsed1 += ( end1.uptimeNanoseconds - start1.uptimeNanoseconds )
    timeElapsed2 += ( end2.uptimeNanoseconds - start2.uptimeNanoseconds )
}

print("첫번째 함수는 평균 \(timeElapsed1/100)나노초 걸렸습니다.")
print("두번째 함수는 평균 \(timeElapsed2/100)나노초 걸렸습니다.")
