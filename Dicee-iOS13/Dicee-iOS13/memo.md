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
