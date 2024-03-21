//
//  [ 프로그래머스 ] 181838 - 날짜 비교하기
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/181838
//

//import Foundation
//
//func solution(_ date1:[Int], _ date2:[Int]) -> Int {
//    
//    if date1[0] < date2[0] {
//        return 1
//    }else if date1[0] > date2[0]{
//        return 0
//    }else {
//        if date1[1] < date2[1] {
//            return 1
//        }else if date1[1] > date2[1]{
//            return 0
//        }else {
//            if date1[2] < date2[2] {
//                return 1
//            }else{
//                return 0
//            }
//        }
//    }
//}
func solution(_ date1:[Int],_ date2:[Int]) -> Int {
    let date1 = date1[0] * 10000 + date1[1] * 100 + date1[2] * 1
    let date2 = date2[0] * 10000 + date2[1] * 100 + date2[2] * 1
    return date1 < date2 ? 1 : 0
}
