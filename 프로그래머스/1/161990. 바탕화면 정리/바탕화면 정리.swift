func solution(_ wallpaper:[String]) -> [Int] {
    
    // wallpaper 이중 배열 변수
    var wallpaperN: [[Character]] = []
    
    // wallpaper 이중 배열로 만들기
    for string in wallpaper{
        let i = Array(string.map { $0 })
        wallpaperN.append(i)
    }
    
    // #이 포함된 x, y값 모을 배열
    var x:[Int] = []
    var y:[Int] = []
    
    // for 문 이용해 "#"의 인덱스 번호 찾기
    for i in 0..<wallpaperN.count{
        for j in 0..<wallpaperN[i].count {
            if wallpaperN[i][j] == "#" {
                x.append(i)
                y.append(j)
            }
        }
    }

    return [x.min()!, y.min()!, x.max()!+1, y.max()!+1]
}