#변수와 


``` swift
//변수
var toggle = 0

toggle = 0 //값 변경 가능

//상수
let constnant = 0

constnant = 0 //값 변경 불가능

//자료형

//정수

var toggle2: Int = 0
let constnant2: Int = 0

//실수

var toggle3: Float = 1.1
var toggle4: Double = 1.1212

//문자
var  toggle5 String = "Hello"


//타입 추론

var toggle6 = 0
var toggle7 = "Hello"
var toggle8 = 0.11

``` 
#

``` 

//배열

var arr1 = ["Hello","World"]
var arr2[String] = ["Hello","World","hihi"]
var arr2[1] = "hi"
var arr5[String] = []
var arr7[String]()
//딕셔너리

var arr3 = [
    "초등학교": "남초",
    "중학교": "무등중",
    "고등학교": "GSM",
]

var arr4 [String:String] = [
"초등학교": "남초",
    "중학교": "무등중",
    "고등학교": "GSM",
]
var arr6 [String:String] = [:]
var arr8[String:String]()

``` 

#
``` 
//조건문

//if문
if toggle == 0{
    print("0")
}else if toggle == 1{
printf("1")
}else{
    print("나머지")
}
//swich문

switch toggle5 {
case 8..<14:
print("초")
case 14..<17
print("중")
case 17..<20
print("고")    
default:
print("성인")
    
}

//for문

for i /* i자리에 _ 가능*/ in 0..<100{
    print(i)
} 
for language in languages {
  print("저는 \(language) 언어를 다룰 수 있습니다.")
}

for (country, capital) in capitals {
  print("\(country)의 수도는 \(capital)입니다.")
}

//while
var i = 0
while i < 100 {
  i += 1
```
#옵셔널
``` 
  //옵셔널 (Optional) nil 값

var a:String?
a = "dkskdkdk"
var b:String = a // 불가능 

//옵셔널에 값 가져오기

if var c = a{

}// ","로 여러개 가능


let isEmptyArray = array?.isEmpty == true //배열의 값가져오기

//옵셔널을 버낄때는 !사용 선언시에 ?대신 !사용가능
``` 
