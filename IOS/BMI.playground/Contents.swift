import UIKit

/*
 func calcBMI(weight:Double ,height:Double) ->String{
 //round可以把double类型的数字化整
    //pow函数可以计算根次式 （height ，2）就是height的二次方
    let BMI=round(weight/pow(height, 2))
    //利用变量message去优化人return的返回
    var message = " "
    
    if BMI>25 {
        message="超重了"
    }else if BMI>=18.5{
        message="正常"
    }else{
        message="太瘦了"
    }
    return  "BMI是:\(BMI),\(message)"
    
}
calcBMI(weight: 80.7, height: 1.83)

*/

//外部参数和内部参数

// use and 是外部参数。weight height是内部参数 外部参数和内部参数要加空格
//外部参数也可以是空或者是_
let b = 1
func aaa (_ b:Int){
    print(aaa(<#T##b: Int##Int#>))
}

func calcBMI(use weight:Double ,and height:Double) ->String{
func calcBMI(_ weight:Double ,_ height:Double) ->String{
   let BMI=round(weight/pow(height, 2))

   var message = " "
   
   if BMI>25 {
       message="超重了"
   }else if BMI>=18.5{
       message="正常"
   }else{
       message="太瘦了"
   }
   return  "BMI是:\(BMI),\(message)"
   
}
calcBMI(64.2, 175)
//calcBMI(use, and)



