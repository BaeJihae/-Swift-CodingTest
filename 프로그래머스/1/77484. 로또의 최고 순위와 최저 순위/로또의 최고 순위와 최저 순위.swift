func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    let mine = Set(lottos)
    let winner = Set(win_nums)
    let score = mine.intersection(winner).count
    let joker = lottos.filter { ($0 == 0) }.count
    
    let best = 7 - score - joker
    let worst = 7 - score
    return [ best == 7 ? 6 : best, worst == 7 ? 6 : worst ]
}