import Foundation


func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    // 문자의 최소 클릭 수
    var clickOfChar = Dictionary<Character, Int>()
    var count: Int = 0
    var answer = [Int]()
    // 문자의 최소 클릭수 찾기
    func searchMinClick(_ alphabet: Character) -> Int {
        for key in keymap {
            if key.contains(alphabet) {
                let value = Array(key).firstIndex(of: alphabet)! + 1
                if value < clickOfChar[alphabet] ?? -1 || clickOfChar[alphabet] == nil {
                     clickOfChar[alphabet] = value
                }
            } 
        }
        return clickOfChar[alphabet] ?? -1
    }
    // 문자열의 최소 클릭수 구하기
    for str in targets {
        for char in str {
            if let c = clickOfChar[char] {
                count += c
            }else{
                let s = searchMinClick(char)
                if s == -1 {
                    count = -1
                    break
                }else {
                    count += s
                }
            }
        }
        answer.append(count)
        count = 0
    }
    return answer
}