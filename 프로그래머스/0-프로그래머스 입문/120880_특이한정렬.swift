//
//  [ 프로그래머스 ] 120880 - 특이한정렬
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120880
//

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    return numlist.sorted(by: <).sorted { abs($0-n) <= abs($1-n) }
}
