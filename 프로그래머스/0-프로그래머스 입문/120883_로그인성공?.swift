//
//  [ 프로그래머스 ] 120883 - 로그인 성공?
//
//  문제 링크
//  https://school.programmers.co.kr/learn/courses/30/lessons/120883
//

import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    
    var dict = Dictionary<String,String>()
    db.forEach{ k in dict.updateValue(k[1], forKey: k[0]) }
    
    guard let pw = dict[id_pw[0]] else { return "fail" }
    return pw == id_pw[1] ? "login" : "wrong pw"
}
