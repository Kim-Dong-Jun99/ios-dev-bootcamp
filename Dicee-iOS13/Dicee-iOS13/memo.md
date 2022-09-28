#  Second app
깃허브로 베이스 프로젝트를 클론해서 이미 필요한 리소스는 세팅되어 있었다. 우선 메인 스토리보드에 배경을 먼저 지정해줘야하는데, GreenBackground라는 이미지로 지정하려고했었다. 이미지를 배경으로 지정하려고 보니, 이미지를 화면에 꽉 차게 확대했는데, 화면에 꽉 차게 나오지 않고, 흰색 여백을 남기는 것을 확인하였다. 이때 이미지의 contentmode를 scaletofill로 변경하니, 화면에 녹색 배경이 꽉 차는 것을 확인할 수 있었다.
* aspect fit - 전체 이미지가 보인다
* scale fill - 전체 이미지를 화면 비율에 맞춘다
* aspect fill - 이미지를 화면에 맞게 키우는데, 이미지 원래 비율은 유지한 채로 키운다

엑스코드 꿀팁 alt 키를 누르고 드래그하면 그대로 복사된다. main storyboard에서 adjust editor 오픈 하면 메인 스토리보드랑 연관되어있는 코드 파일을 바로 옆에서 수정할 수 있게 나온다. 

디자인된 화면을 코드랑 어떻게 연결시킬까? 멀티뷰를 키고, 컨트롤을 누른체로, 코드에 끌어 놓고 이름을 지정하면 끝이다. 그러면 InterfaceBuilder라는 태그가 붙여진 변수가 생성된다.그리고 변수 이름은 변경하면 안된다. 변경하려면 디자인에서도 이름을 동일하게 변경해줘야한다. 
```swift

    @IBOutlet weak var diceImageView1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        diceImageView1.image = UIImage(imageLiteralResourceName: "DiceSix")
    }
``` 
UIImage(imageLiteralResourceName)을 사용해서 동적으로 첫번째 주사위를 6으로 설정하였다. userInteraction은 어떻게 감지하고 정의할까. 버튼을 코드에다가 끌어다보면 자동으로 액션으로 잡힌다. outlet으로 변경해서 디자인을 변경할 수도 있다. 이벤트에는 여러가지가 있는데, TouchUpInside가 일반적인 터치이다. 
const, let, var 으로 나눠지는 이유는?? let은 여기서는 상수인 것 같아. let을 주로 사용하고 값이 변할때만 var을 사용하자. 스위프트가 최적화를 해서 let이 더 유리한 것 같다.

레이아웃과 제약 조건에 대해서 알아보자. 화면을 돌려도 화면이 안깨지게 하려면 어떻게 해야할까?

제약조건을 추가하면된다. 근데 제약 조건을 다 추가해도, 화면을 돌리면 아직 여백이 존재하는 것을 확인할 수 있다. 그것은 제약조건이 safearea에 추가돼서 그렇다. 이제 로고는 어떻게 레이아웃할것인지 공부해보자

앱 로고를 화면을 돌려도 중앙에 오게 해보자. alignment를 추가하면 쉽게 동작한다. alignment는 좌표계 느낌이다. constraint랑 alignment를 조합해서 사용할 수도 있다. 메인화면은 어떻게 구성해야될까?? 컨테이너를 사용해서, 화면을 3구역으로 나눠 사용할 수 있다. 직접 뷰를 라이브러리에서 끌어다가 임베드해도되는데, 더 간단한 방법들도 존재한다. 그다음 컨테이너 배경을 투명색으로 지정하고, 제약조건을 걸어주면된다. 

스택뷰를 쓰면 가로 혹은 세로로 뷰를 정렬할 수 있다. stack view의 axis를 확인하면, horizontal 혹은 vertical하게 정렬하였는지 확인할 수 있다. 그리고 distribution으로 스택뷰 공간을 뷰들에게 균등하게 나눠줄 수도 있다. 스택 뷰를 div 같이 사용하면 될 것 같다. 그리고 레이아웃은 제약 조건으로 설정하게하면 될 것 같다
