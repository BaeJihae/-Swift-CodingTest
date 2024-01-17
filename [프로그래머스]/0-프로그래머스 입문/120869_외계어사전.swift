//
//  main.swift
//  codingTest_programmers-962
//
//  Created by 배지해 on 12/20/23.
//

import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    dic.map { String($0.sorted()) }.contains(spell.sorted().joined()) ? 1 : 2
}

print(solution( ["p", "o", "s"], ["sod", "eocd", "qixm", "adio", "soo"]))
print(solution( ["z", "d", "x"], ["def", "dww", "dzx", "loveaw"]))
print(solution( ["s", "o", "m", "d"], ["moos", "dzx", "smm", "sunmmo", "som"]))

