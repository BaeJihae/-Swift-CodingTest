//
//  [ 프로그래머스 ] 155652 - 둘만의 암호
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/155652
//
import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    
    // skip의 알파벳을 제외한 알파벳 배열
    var array = [Character]()
    for i in UnicodeScalar("a").value...UnicodeScalar("z").value {
        let alphabet = Character(UnicodeScalar(i)!)
        if !Array(skip).contains(alphabet){
            array.append(alphabet)
        }
    }
    
    // s 변경 시키기
    return s.map{ String(array[(array.firstIndex(of: $0)! + index) % array.count ]) }.joined()
}
