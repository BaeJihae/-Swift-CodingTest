import Foundation

var surveyTotalScore: [String:Int] = ["R":0, "T":0, "C":0, "F":0, "J":0, "M":0, "A":0, "N":0]
                                     
var Score: [Int] = [ 3, 2, 1, 0, 1, 2, 3]

func compare(_ a:String,_ b:String) -> String{
    if surveyTotalScore[a]! > surveyTotalScore[b]! {
        return a
    }else if surveyTotalScore[a]! < surveyTotalScore[b]! {
        return b
    }else {
        return a
    }
}

func solution(_ survey:[String], _ choices:[Int]) -> String {
    
    var mbti:String = ""
    
    var updatevalue = 0
    
    for i in 0...survey.count-1 {
        if choices[i] == 4 {
            continue
        }else if choices[i] < 4 {
            updatevalue = surveyTotalScore[String(survey[i].prefix(1))]! + Score[choices[i]-1]
            surveyTotalScore.updateValue(updatevalue, forKey: String(survey[i].prefix(1)))
        }else if choices[i] > 4 {
            updatevalue = surveyTotalScore[String(survey[i].suffix(1))]! + Score[choices[i]-1]
            surveyTotalScore.updateValue(updatevalue, forKey: String(survey[i].suffix(1)))
        }
        updatevalue = 0
    }
    
    mbti.append(compare("R", "T"))
    mbti.append(compare("C", "F"))
    mbti.append(compare("J", "M"))
    mbti.append(compare("A", "N"))
    
    return mbti
}