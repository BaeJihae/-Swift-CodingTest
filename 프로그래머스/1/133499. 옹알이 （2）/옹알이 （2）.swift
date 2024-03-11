import Foundation

func solution(_ babbling:[String]) -> Int {
    let strArr = ["aya", "ye", "woo", "ma"]

    var answer = 0
    func checkWord(_ str: String) -> Bool {
        var b = str

        for s in strArr {
            b = b.replacingOccurrences(of: s, with: "-")
            if b.contains("--") { return false }
            b = b.replacingOccurrences(of: "-", with: " ")

        }

        return b.replacingOccurrences(of: " ", with: "").isEmpty
    }

    for babble in babbling {
        if checkWord(babble) {
            answer += 1
        }
    }

    return answer
}