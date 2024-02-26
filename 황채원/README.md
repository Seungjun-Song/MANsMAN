> **main.dart 파일에 코드짜면 됩니다**

lib 폴더 안에 있는 main.dart 파일을 열어봅시다. 그게 우리 앱 메인페이지입니다.

프로젝트 처음 만들면 코드가 많이 채워져있습니다.

나름 구글에서 초보자들 이해를 돕기 위해 만들어준 예제인데

우리 빡대가리들에겐 전혀 도움이 되지 않으니 일단 이 코드만 남기고 다 지우면 됩니다.

```dart
import 'package:flutter/material.dart';

void main() {
	// runApp 앱 시작해주세요. (const 앱 메인페이지)
  runApp(const MyApp());
}
```

일부 프로그래밍 언어들은 main() 함수가 있습니다.

거기 안에 코드짜셔야 실행이 됩니다.

void는 "이 함수는 아무것도 return 하지 말아주세요~" 라는 뜻인데 알 필요 없습니다.

runApp() 이건 "앱 시작해주세요~" 라는 기본 함수입니다.

runApp() 소괄호 안에 여러분들이 만든 앱 레이아웃을 넣으면 진짜로 앱으로 보여줍니다.

실은 MyApp() 이라는 레이아웃이 기본적으로 채워져있는데 그건 하단에서 구경가능합니다.

> **MyApp 메인페이지 만들기**

첫 몇강에서 배우게될 내용은 레이아웃 디자인입니다.

void main() { } 하단에 있는 기본 코드들 전부 지우랬죠?

그럼 이제 다음과 같은 코드를 하단에 추가해줍니다.

```java
// 앱의 메인페이지
// stless+ tab 세팅에 필요한 앱 생성해줌
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Text('안녕'),
    );

  }
}
```

(실은 에디터에서 stless라고 치고 탭키 누르면 저거 자동완성 됩니다.)

class부터 시작하는 4줄은 그냥 앱의 메인페이지를 셋팅하기 위해 채우는 기본 문법인데

뜻은 일단 개무시하고 지나가면 됩니다. 나중에 배우게될 것임

home: 옆에다가 글자넣고 그림넣고 쭉 디자인하면 됩니다.

근데 그냥 넣는게 아니라 **위젯**으로 넣어야합니다.

위젯이 뭐냐고요?

> **위젯 만들기**

HTML 개발방식은 <태그> 사용입니다.

글자 넣고 싶으면 <p> 이미지 넣고 싶으면 <img> 네모박스 넣고 싶으면 <div>

이렇게 태그를 사용합니다.

Flutter 개발방식은 위젯() 사용입니다.

**글자** 넣고 싶으면 **Text() 이미지** 넣고 싶으면 **Image() 네모박스** 넣고 싶으면 **Container()**

이렇게 위젯을 사용합니다.

Flutter에서 위젯 4개만 잘 외워두면 거의 모든 레이아웃을 만들 수 있는데

글자, 이미지, 아이콘, 박스 이렇게 4개 위젯 외워두면 됩니다.

인스타같은 앱 켜보셈 이거 4개 아닌거 있습니까 거의 없을걸요

> **글자넣고 싶으면 Text()**

```dart
// 1. 글자를 넣는 방법
//Text('안녕')

MaterialApp(
  home: Text('안녕')
)
```

앱에 글 적고 싶으면 Text() 위젯 하나 넣어보시면 됩니다.

Text() 위젯 안에 파라미터로 적고싶은 글 넣어주시면 실제로 앱으로 보여줍니다. 에디터 상단 재생버튼 눌러서 미리보기 띄워보십시오

안보이면 파일저장이나 미리보기 화면 새로고침 해보셈

둘째 파라미터부터는 텍스트의 색, 크기, 폰트종류같은 스타일을 넣어줄 수 있습니다.

스타일넣는건 나중에 합시다.

> **아이콘 넣고 싶으면 Icon()**

Icon() 위젯을 쓰면 됩니다. 내부엔 아이콘 이름을 적으면 되는데

아이콘 이름은 https://api.flutter.dev/flutter/material/Icons-class.html 여기서 직접 찾으면 됩니다.

거기서 찾은 아이콘 이름을 Icon(Icons.아이콘이름) 이렇게 첨부하면 아이콘 넣기 끝입니다.

```dart
//2. 아이콘을 넣는 방법
// Icon(Icons.아이콘 이름)

MaterialApp(
  home: Icon(Icons.star)
)
```

별 모양 아이콘이 보입니다.

> **이미지 넣고싶으면**

1. 프로젝트 내에 assets 폴더 만들고 이미지 파일을 거기 넣어둡니다

2. pubspec.yaml 파일을 찾습니다. 앱만드는데 필요한 파일과 라이브러리들을 기록하는 파일입니다.

(pubspec.yaml 파일)

```
flutter:
  assets:
    - assets/
```

3. 중간 부분에 flutter: 하위항목에 님들의 폴더를 등록해줍니다. 그럼 이제 그 폴더에 있는 이미지들 전부 사용가능

!https://codingapple.com/wp-content/uploads/2021/11/%EC%BA%A1%EC%B2%984.jpg

▲ 그래서 전 dog.png 파일을 넣어뒀는데 이걸 쓰고 싶으면

```css
MaterialApp(
  home: Image.asset('assets/dog.png')
)
```

Image.asset('이미지경로') 이렇게 위젯을 넣으면 됩니다.

그럼 이제 이미지가 보이겠군요.

브라우저로 미리볼 땐 dog.png만 써도 될 수도 있습니다

> **네모 박스 넣고 싶으면 Container()**

```css
MaterialApp(
  home: Container()
)
```

Container() 아니면 SizedBox() 둘 중 하나 쓰면 네모 박스가 생성됩니다.

근데 안보인다고요? 색상같은 스타일을 넣으면 보입니다.

> 폭 높이 조절하는 법

!https://codingapple.com/wp-content/uploads/2021/11/%EC%BA%A1%EC%B2%985.png

▲ 작고 귀여운 파란 박스를 하나 배치하고 싶어진겁니다.

박스와 이미지 위젯들의 사이즈 조정은 어떻게 하냐면

width, height 이런 파라미터를 위젯에 집어넣으면 됩니다.

width, height에는 정수, 실수 넣을 수 있고 단위는 적지 않습니다.

```css
MaterialApp(
  home: Container(width : 50, height : 50, color: Colors.blue)
)
```

그래서 Container 안에 width, height, color 주려면 저렇게 쓰면 됩니다.

**50의 단위가 뭐임 px임?**

**Q. width, height, color를 줘봤는데 박스가 아직도 화면에 꽉차고 큰데요?**

- 꽉차는 이유는 원래 Container 그냥 쓰면 자리를 최대한 차지하려고 합니다
- width, height가 안먹는 이유는 "컴퓨터가 박스를 어디서부터 가로세로 50만큼 그려야할지 모르기 때문에" 그렇습니다.

그래서 width, height를 주고 싶으면 어디서부터 채울 지 좌표를 주어야합니다.

(X, Y position을 주어야합니다)

근데 그건 직접 줄 필요 없고 보통 Center() 혹은 Align() 이런 위젯을 이용합니다.

이런 위젯 안에 담으면 자동으로 X, Y position을 잡아주기 때문에 이제 width, height가 잘 먹을겁니다.

```css
MaterialApp(
  home: Center(
    child: Container(width : 50, height : 50, color: Colors.blue)
  )
)
```

그래서 Center 안에 Container를 하나 넣어봤습니다.

Center() 위젯은 자식 child 위젯의 position을 정가운데로 잡아주는 유용한 위젯일 뿐입니다. 그게 다임

> 위젯 안에 위젯넣기

위 예제처럼 위젯 안에 위젯을 넣을 수 있습니다.

예를 들어 박스 안에 글자넣고 싶으면

Container( Text() ) 이렇게 쓰는 것인데 그냥 넣으면 안되고

**child 라는 이름의 파라미터로 집어넣으셔야합니다.**

그럼 위젯 안에 위젯넣을 수 있음

```css
MaterialApp(
  home: Container(
    child: Text('박스안 글자임ㅅㄱ')
  )
)
```

child: 파라미터를 이용하면

위젯 안에 위젯을 넣을 수 있다는 사실 잘 기억해두십시오

HTML로 비유하자면 <div><p>바보야<p></div> 이런거 만든겁니다.

다른 앱개발 프레임워크로 비유하자면 <View><Text>바보야</Text><View> 이런거 만든겁니다.

누리끼리한 밑줄, 워닝같은건 중요한 문제가 아니라 Lint 라서 일단 무시하도록 합시다.
