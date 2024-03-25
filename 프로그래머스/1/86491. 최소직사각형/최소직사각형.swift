import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var w = [Int](), h = [Int]()
    for i in sizes {
        w.append(i.max()!)
        h.append(i.min()!)
    }
    return w.max()! * h.max()!
}