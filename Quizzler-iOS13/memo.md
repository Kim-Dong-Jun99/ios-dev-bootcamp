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
