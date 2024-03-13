import Foundation
//Data Types

//String - "hi how are u"

//Int- 12, 34

//Double - 64bit 'double is double' - joanne - 2.3246378215
//Float - 32bit

//Boolean true, false

//var is changeable, but only to the same data type
var a:String = "lalala";
var b = "okayokay";

print(a);
print(b);

var myInt:Int = 20
myInt+=1
print(myInt)

var cVar = "hi"
print(cVar)

let myConst:String = "hello"
print(myConst)

var a1 = 20
var b1 = 5
var c1 = b1%a1
print(c1)

var a2:Double = 2.1
var b2:Double = 5
var c2 = abs(a2)
print(c2)

var c3 = pow(a2, b2) //doesnt work if a2 and b2 are Ints, only works if theyre Decimal type
print(c3)

var c4 = sqrt(a2)
print(c4)

var up:Double = 2.3;
var dn:Double = 2.6
var d = floor(up)
var u = ceil(dn)

var withoutTax:Double = 15
var taxRate:Double = 8.33/100
var total:Double = withoutTax + (withoutTax*taxRate)
var costPerPerson:Double = total/3.0

let str:String = String(format: "%.2f", costPerPerson)
print("$"+str)


//Function
func myFunc1(){
    let val1 = 10
    let val2 = 5
    
    print(val1 + val2)
}
myFunc1()

func myFunc2(a:Int){
//    let a = 10
    let b = 5
    
    print(a + b)
}
myFunc2(a: 10)

func myFunc3(a:Int)->Int{
//    let a = 10
    let b = 5
    
    return a+b
}
print(myFunc3(a: 10))

//lexical analyzer - aka a dictionary that understands the keywords - the basis for a compiler

func anotherOne(a:Int, b:Int = 0)->Int{ //default parameter b
    return (a+b)
}

//Function Calling
print(anotherOne(a: 20))
print(anotherOne(a: 10, b: 5))


func myFuncUno(_ a:Int, _ b:Int = 0)->Int{ //default parameter b
    return (a+b)
}
print(myFuncUno(20)) //underscore in func avoids redecl w the var:
print(myFuncUno(10, 5))

func myFuncUno(first a:Int, second b:Int = 0)->Int{ //default parameter b
    return (a-b)
}
//first just provides another name for the var outside of the function

//myFuncUno shows function overloading
print(myFuncUno(5)) //calls the first one, underscore so directly passing a value
print(myFuncUno(first: 10)) //calls the second one

func payUpBro(_ withoutTax:Double, _ taxRate:Double, _ numPeople:Double)->Double{
    var total:Double = withoutTax + (withoutTax*(taxRate/100.0))
    var costPerPerson:Double = total/numPeople

    return costPerPerson;
}

print(payUpBro(15, 8.33, 3))


//NO camel case for struct
struct ChatView {
    //variables and conditions: PROPERTIES
    var msg:String = "hi there" //stored property
    //this var can be accessed in any of the functs in the struct
    
    var msgWithPrefix:String{ //computed property
        return "jack says..."+msg
    }

    
    //UI code: View Code
    
    
    //functions: METHODS
    func sendChat(){
        //code to send the chat
        print(msg)
    }
    
    func deleteChat(){
        //code
        print(msg)
        
    }
}



/*satellite imagery
//AI to detect large, red, circular shapes, if we know the dimensions
//a database

crowdsource - tell ppl u will give them some money if they identify a real balloon

*/



