//
//  [ 프로그래머스 ] 12947 - 하샤드 수
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/12947
//

func solution(_ x:Int) -> Bool {
    return x % String(x).map{ Int(String($0))! }.reduce(0,+) == 0 ? true : false
}
