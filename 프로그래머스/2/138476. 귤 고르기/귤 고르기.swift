func solution(_ k: Int, _ tangerine: [Int]) -> Int {
    return Dictionary(grouping: tangerine) { $0 }.values
        .sorted { $0.count > $1.count }
        .reduce((0, 0)) { acc, array in acc.1 >= k ? acc : (acc.0 + 1, acc.1 + array.count) }
        .0
}