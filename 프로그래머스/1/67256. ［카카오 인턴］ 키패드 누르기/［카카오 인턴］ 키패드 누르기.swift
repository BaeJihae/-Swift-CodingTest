import CoreFoundation

func solution(_ numbers:[Int], _ hand:String) -> String {
    
    // 숫자에 따른 키패드 위치
    let keypadLocation = [[1,0],[0,3],[1,3],[2,3],[0,2],[1,2],[2,2],[0,1],[1,1],[2,1]]
    // 왼쪽 손가락의 현재 위치
    var currentPositionL = [0,0]
    // 오른쪽 손가락의 현재 위치
    var currentPositionR = [2,0]
    
    return numbers.map{ number -> String in
            if [1,4,7].contains(number) {
                currentPositionL = keypadLocation[number]
                return "L"
            }else if [3,6,9].contains(number){
                currentPositionR = keypadLocation[number]
                return "R"
            }else {
                let intervalL = (0...1).map{ abs(currentPositionL[$0] - keypadLocation[number][$0]) }.reduce(0,+)
                let intervalR = (0...1).map{ abs(currentPositionR[$0] - keypadLocation[number][$0]) }.reduce(0,+)
                
                if intervalL > intervalR || ( intervalL == intervalR && hand == "right" ) {
                    currentPositionR = keypadLocation[number]
                    return "R"
                }else {
                    currentPositionL = keypadLocation[number]
                    return "L"
                }
            }
                     }.joined()
}