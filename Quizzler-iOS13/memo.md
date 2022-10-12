# Structure

스위프트로 클래스를 만드는 것을 알아보자 
```swift
struct myStruct{

}
```
위와 같이 생성할 수 있다. 

```swift
struct Town{
    let name = "myCity"
    var citizens = ["djkim", "hspark"]
    var resources = ["Grain":100, "Ore":42, "Wool":75]
    
    init(townName, people:[String], stats:[String:Int]){
        self.name = townName
        self.citizens = people
        self.resources = stats
    }
    
    func fortify(){
        print("fortify!!")
    }
}

var myTown = Town()

myTown.citizens.append("guest")
```

Structure를 외부에서 생성해서 사용할 경우, 파일명과 스트럭처 이름이 동일해야한다.

스트럭트 내에서 값을 변경하려고하니, immutable이라는 메시지와 함께 처리할 수 없는 요청이라고 나온다. 스트럭트 안의 내용을 업데이트하려면 어떻게 하면될까?
스트럭트는 기본적으로 Immutable이다. Mutating 키워드를 추가하면 변경할 수 있다. 왜냐면 기본적으로 struct는 let으로 생성된다
