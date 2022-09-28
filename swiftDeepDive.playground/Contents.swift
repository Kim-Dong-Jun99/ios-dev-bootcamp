import UIKit

var greeting = "Hello, playground"
// This is a comment


print("Hello \(2+3) world")

func getMilk(){
    print("milk")
}
// 이렇게 함수를 생성하고 사용할 수 있다.

getMilk()
func calculator() {
  let a = Int(readLine()!)! //First input
  let b = Int(readLine()!)! //Second input
  
  add(n1: a, n2: b)
  subtract(n1: a, n2: b)
  multiply(n1: a, n2: b)
  divide(n1: a, n2: b)
  
}

//Write your code below this line to make the above function calls work.

func add(n1:Int,n2:Int){
    print(n1+n2)
}

func subtract(n1:Int,n2:Int){
    print(n1-n2)
}

func multiply(n1:Int,n2:Int){
    print(n1*n2)
}

func divide(n1:Int, n2:Int){
    print(n1/n2)
}

calculator()
