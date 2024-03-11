func solution(_ babbling: [String]) -> Int {
    return babbling.filter { $0.range(of: "^(aya(?!aya)|ye(?!ye)|woo(?!woo)|ma(?!ma))+$", options: .regularExpression) != nil }.count
}