import UIKit

func love(male:String , famale:String) -> String{
    
    let num = Int.random(in: 0...100)
    
    if num > 80 {
        return"匹配程度：\(num)%合适"
    }else if num>=40{
        return"匹配程度\(num)%还有机会"
    }
    else {
        return"匹配程度\(num)%不合适"
    }
    
}

print(love(male: "", famale: ""))


