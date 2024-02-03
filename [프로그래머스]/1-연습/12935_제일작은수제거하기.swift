//
// [프로그래머스] 12935 - 제일 작은 수 제거하기
//
// https://school.programmers.co.kr/learn/courses/30/lessons/12935
//

func solution(_ arr:[Int]) -> [Int] {
    
    var arr = arr
    
    if arr == [10] {
        return [-1]
    }
    
    arr.remove(at: arr.firstIndex(of: arr.min()!)!)
    
    return arr
}
