//
//  main.swift
//  LengthOfOverlappingLineSegments
//
//  Created by 배지해 on 2023/07/04.
//

import Foundation

func max(_ a1: Int, _ a2: Int, _ a3: Int) -> (Int, Int, Int){
    var (x1, x2, x3): (Int, Int, Int)
    if a1 >= a2 { // a1 >= a2
        if a2 >= a3 { // a1 >= a2 >= a3
            (x1, x2, x3) = (0, 1, 2)
        }else if a1 >= a3{ // a1 >= a3 > a2
            (x1, x2, x3) = (0, 2, 1)
        }else { // a3 > a1 >= a2
            (x1, x2, x3) = (2, 0, 1)
        }
    }else{ // a2 > a1
        if a1 >= a3 { //a2 > a1 >= a3
            (x1, x2, x3) = (1, 0, 2)
        }else if a2 >= a3{ // a2 >= a3 > a1
            (x1, x2, x3) = (1, 2, 0)
        }else { // a3 > a2 > a1
            (x1, x2, x3) = (2, 1, 0)
        }
    }
    return (x1, x2, x3)
}
func overlapping(_ end1:Int, _ start2:Int, _ end2: Int) -> (Int, Int, Int){
    let a:Int, b:Int, length:Int
    
    if end1 <= start2{
        (a, b, length) = (0,0,0)
    }else {
        if end1 <= end2{
            (a, b, length) = (start2, end1, end1-start2)
        }else{
            (a, b, length) = (start2, end2, end2-start2)
        }
    }
    
    return (a, b, length)
}
func solution(_ lines:[[Int]]) -> Int {
    
    var length: Int = 0
    let (a1, a2, a3) = max(lines[0][0], lines[1][0], lines[2][0])
    let (_, y1): (Int, Int) = (lines[a3][0], lines[a3][1])
    let (x2, y2): (Int, Int) = (lines[a2][0], lines[a2][1])
    let (x3, y3): (Int, Int) = (lines[a1][0], lines[a1][1])
    
    let (_, y4, length1) = overlapping(y1, x2, y2)
    let (x5, y5, length2) = overlapping(y2, x3, y3)
    let (x6, y6, length3) = overlapping(y1, x3, y3)
    
    let (_, _, length4) = overlapping(y4, x5, y5)
    let (_, _, length5) = overlapping(y5, x6, y6)
    
    length = length1 + length2 + length3 - length4 - length5
    
    return length
}

print(solution([[0, 1], [2, 5], [3, 9]]))
