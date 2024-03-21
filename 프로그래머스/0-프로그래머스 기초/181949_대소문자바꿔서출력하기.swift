//
//  main.swift
//  PrintCaseByCase
//
//  Created by 배지해 on 2023/07/05.
//

import Foundation

let s1 = readLine()!

var str: String = ""

for ch in s1{
    if ch.isLowercase == true {
        str.append(ch.uppercased())
    }else{
        str.append(ch.lowercased())
    }
}

print(str)
