func solution(_ s:String, _ n:Int) -> String {
    var answer = ""
    for char in s{
        if char.isLetter{
            if char.isUppercase {
                let scal = UnicodeScalar(String(char))!.value + UInt32(n)
                answer += scal > 90 ? "\(UnicodeScalar(scal - UInt32(26))!)" : "\(UnicodeScalar(scal)!)"
            } else {
                let scal = UnicodeScalar(String(char))!.value + UInt32(n)
                answer += scal > 122 ? "\(UnicodeScalar(scal - UInt32(26))!)" : "\(UnicodeScalar(scal)!)"
            }
        }else {
            answer += " "
        }
    }
    return answer
}