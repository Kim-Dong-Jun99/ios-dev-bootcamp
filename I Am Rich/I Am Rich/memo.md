# First app using story board
xcodeproj 파일을 누르고 타겟을 누르면, 제네럴 정보를 확인할 수 있다. 제네럴 인포에서는 베포 정보도 확인할 수 있고, 미니멀 ios 버전도 지정해줄 수 있다. 디바이스를 돌리면서 실행할 수 잇게, device orientation을 설정할 수 있고, 제한할 수도 있다. 대부분 디폴트 세팅으로 사용할 것인데, 나중에 좀 더 배우면 세팅을 변경할 일이 생길 수도 있다
xcode는 맨 위에 status bar가 놓인다. 왼쪽에는 프로젝트 파일들을 확인할 수 있는데, 현재는 ui를 storyboad로 설정해 두어서 storyboard와 swift 파일들을 확인할 수 있다. 오른쪽 상단 + 버튼으로 다양한 뷰 리소스들을 넣을 수 있다. 오른쪽 화면은 inspector로 컴포넌트의 설정들을 변경할 수 있게 해준다. 위치와 디자인을 원하는 대로 변경할 수 있다. 아래쪽 영역은 디버깅 영역으로, 에러 메시지등을 확인할 수 있다. 
앱의 behavior는 swift 파일을 작성하면서 설정할 수 있다. LaunchScreen에 처음에 로딩할 화면을 디자인할 수 있고, Main.storyboard에 메인 화면을 구성하고 디자인할 수 있다. 컴포넌트의 x,y좌표는 왼쪽 상단 점을 기준으로 잡힌다. 스크린 기준으로 왼쪽 상단 점이 0,0 이고, 오른쪽 하단 점이 max,max이다
엑스코드는 다양한 사이즈의 아이콘 크기를 지정해두었다. 다양한 크기로 아이콘 파일을 받는 이유는 속도때문이다! appicon.co에서 앱 아이콘을 만들 수 있다. 다운로드 된 파일을 살펴보면, 엑스코드 파일 형식으로 보이는 폴더가 있는데, 그 폴더의 내용을 그대로 복사해서 엑스코드 폴더에 붙이면 아이콘이 제대로 설정되는 것을 확인할 수 있다
