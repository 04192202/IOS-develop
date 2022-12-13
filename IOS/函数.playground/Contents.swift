import UIKit

//func getmilk(){
//    print("去商店")
//    print("买一箱牛奶")
//    print("给十块钱")
//}
//
//getmilk()

//形式参数 numbers 定义了这个函数的类型
//func getmilk(numbers:Int){
//    print("去商店")
//    print("买\(numbers)箱牛奶")
//    let price = 10 * numbers
//    print("给\(price)块钱")
//
//}
////实际参数 定义了函数类型的具体数据
//getmilk(numbers: 4)
//getmilk(numbers: 8)

//函数的返回值

func getmilk(numbers:Int ,total:Int) -> Int{
    print("去商店")
    print("买\(numbers)箱牛奶")
    let price = 10 * numbers
    print("给\(price)块钱")
    let res = total - price
    return res
}
let abc (_ sender : any?)
print(abc)
let res = getmilk(numbers: 1, total :100)

print(res)



