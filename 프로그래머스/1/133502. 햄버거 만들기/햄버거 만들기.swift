import Foundation

func solution(_ ingredient:[Int]) -> Int {
    
    // 빈 배열 만들기
    var array: [Int] = []
    
    // 만들어지는 햄버거의 개수
    var count = 0
    
    var n = 0
    
    for i in ingredient {
        array.append(i)
        
        if array.count < 4 {
            continue
        }
        n = array.count
        if array[n-4..<n] == [1, 2, 3, 1]{
            count += 1
            array = Array(array[0..<n-4])
        }
    }
    return count
}