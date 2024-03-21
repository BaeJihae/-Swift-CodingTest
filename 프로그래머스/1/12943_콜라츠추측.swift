//
//  [ 프로그래머스 ] 12943 - 콜라츠 추측
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/12912
//

func solution(_ num:Int) -> Int {
    func dfs(_ num:Int, _ count: Int) -> Int {
        if num == 1 { return count }
        if count > 500 { return -1 }
        return num % 2 == 0 ? dfs(num / 2, count + 1) : dfs(num * 3 + 1, count + 1)
    }
    return dfs(num, 0)
}
