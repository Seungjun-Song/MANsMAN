# 2024-02-26 (월) TIL

# 모바일 애플리케이션

요즘 대부분의 사람들이 컴퓨터보다 모바일 환경에 익숙해져 있다.

특히 저연령층은 PC보다 스마트폰, 테블릿이 훨씬 사용하기 편하다고 한다.

즉 현재 대부분의 사람들이 사용하고 다양한 연령층에서 사용할수 있는 서비스를 개발 하기 위해서는 모바일 서비스를 개발하는것이 유리할 것이다.

---

## 모바일 애플리케이션 종류

|  | 웹 앱 | 네이티브 앱 | 하이브리드 앱 |
| --- | --- | --- | --- |
| 개요 | 모바일 맞춤 웹 | 플랫폼에 종속 | 모바일 + 네이티브 |
| 장점 | 웹 기술 사용 개발, 여러 플랫폼 대응 | 기기성능 100% + 기기 기능 사용 | 다중 플랫폼 대응, 용량 |
| 단점 | 성능 감소 | 플랫폼 각각 개발, 서로 다른 디자인 | 환경에 따른 퍼포먼스 차이 |

---

### 크로스플랫폼 앱

한개의 프레임워크로 여러 플랫폼을 대응하는 개발 방법

네이티브의 경우, 플랫폼간의 디자인 시스템이 서로 다르므로,

UI/UX 디자인부터, 앱 개발, QA, 출시 후 유지보수 모두 각각 해야 하는 반면에,

크로스플랫폼의 경우 한 번에 처리 가능하다는 장점이 있다.

다만, 네이티브 보다 안정성 및 성능 이슈가 있을 수 있다.

대표적인 프레임워크 : **React Native, Flutter**

---

### React Native Vs Flutter

|  | React Native | Flutter |
| --- | --- | --- |
| 출시일 | 2015년 3월 | 2017년 5월 |
| 개발사 | Meta | Google |
| 언어 | JavaScript | Dart |
1. React Native
    
    JavaScript 기반 프레임워크
    
    iOS와 Android에서 똑같이 동작하는 앱을 구현함
    
    <aside>
    💡 **어떻게 한번에 개발 가능?**
    React Native는 런타임 중에 JS 브릿지를 생성하고 JavaScript 코드를 네이티브 코드로 변환해서 컴파일
    
    Objective-C API로 iOS 컴포넌트를, 자바 API로 안드로이드 컴포넌트를 렌더링할 수 있어요. iOS, Android 플랫폼의 표준 렌더링 API를 사용하기 때문에 엔드 유저에게 네이티브 UI를 그대로 제공
    
    </aside>
    
    React 기반이라 JS 및 React 기본 지식을 알고 있으면 큰 어려움 없이 개발 가능
    
2. Flutter
    
    iOS와 Android뿐만 아니라 데스크탑 웹브라우저에서 작동하는 앱을 구현하는 크로스 플랫폼 프레임워크
    
    Dart 언어를 사용, 별도 브릿지가 필요 없음, 성능이 우수 → 구글에서 Dart로 선택!
    
    생소한 언어이지만 C, JS, JAVA 등 여러 언어의 특성을 가지고 있어 학습 용이
    
    <aside>
    💡 **브릿지가  없는데 어떻게 하나의 코드 베이스로 여러 플랫폼 지원?**
    
    Dart는 앱이 빌드되기 전에 코드를 미리 컴파일하는 Ahead-of-time(AOT) 전략을 지원함. **컴파일 타임에 Dart 코드를 네이티브 코드로 컴파일하기 때문에 브릿지가 필요 없이 각 플랫폼과 직접 통신할 수 있다**. 따라서 앱이 시작하는 속도가 빨르고 Flutter는 자체적인 위젯을 Canvas 위에 직접 렌더링하기 때문에 여러 플랫폼에 똑같은 UI를 제공할 수 있다.
    
    </aside>
    
    # 2023 크로스 플랫폼 트랜드
    

![https://velog.velcdn.com/images/tosspayments/post/b1e8c468-a5b2-4645-9369-f1543e6bb74d/image.png](https://velog.velcdn.com/images/tosspayments/post/b1e8c468-a5b2-4645-9369-f1543e6bb74d/image.png)

---

# Flutter를 선택한 이유?

1. 많은 개발자들이 Flutter로 개발을 선호
2. Flutter에 비해 적은 React Native의 사후 지원
3. 무수히 많은 라이브러리
4. 일관된 디자인 가능

등의 이유로써 이번 프로젝트에 있어서 Flutter를 사용 할것입니다.

---

<aside>
💡 특화프로젝트 1주차에 해야할 것 (개인 공부)

1. Dart 언어 익히기 (데이터 타입, 기본 문법, 클래스 작성 방법)
2. Flutter 기본 익히기 (클론코딩)
3. 기획에 따른 필요 기술 스택 정리하기

</aside>

---

# 2024-02-27 (화) TIL

## Flutter란?

Google에서 개발 및 지원하는 오픈 소스 프레임워크

애플리케이션의 사용자 인터페이스(UI)를 단일 코드 베이스로 구축

일관되고 세련된 애플리케이션 UI를 만드는 프로세스를 간소화

Google이 개발한 오픈 소스 프로그래밍 언어인 Dart를 사용

위젯을 사용하여 UI 레이아웃을 구성

<aside>
💡 **위젯? (Widget)**

Flutter 위젯은 개발자가 손쉽게 사용자 지정할 수 있도록 설계되었습니다. Flutter는 구성 접근 방식을 통해 이를 실현합니다. 즉, 대부분의 위젯은 작은 위젯으로 구성되며, 가장 기본적인 위젯은 특정한 용도가 있습니다. 따라서 개발자가 위젯을 결합하거나 편집하여 새 위젯을 만들 수 있습니다.

Flutter는 플랫폼의 기본 제공 위젯을 사용하는 것이 아니라, 자체 그래픽 엔진을 사용하여 위젯을 렌더링합니다. 덕분에 사용자는 플랫폼 전체에 걸쳐 Flutter 애플리케이션에서 유사한 모양과 느낌을 경험할 수 있습니다. 또한 일부 Flutter 위젯은 플랫폼별 위젯에서는 수행할 수 없는 기능을 수행할 수 있으므로, 이러한 접근 방식은 개발자에게 유연성을 제공합니다.

Flutter는 커뮤니티에서 개발한 위젯도 손쉽게 사용할 수 있도록 합니다. Flutter의 아키텍처는 여러 위젯 라이브러리를 적용하는 기능을 지원하며, Flutter는 커뮤니티에서 새로운 위젯 라이브러리를 구축하고 유지 관리하도록 장려합니다.

출처 : [https://aws.amazon.com/ko/what-is/flutter/](https://aws.amazon.com/ko/what-is/flutter/)

</aside>

---

## 내가 느낀 Dart의 다른 언어들과 다른 특징!

1. void 함수 : return이 없는 함수
2. 각 명령 마지막에는 ‘;’ 필수!
3. 객체 지향 프로그래밍 (OOP)
4. Null safety
5. debug mode 와 release mode 의 두 가지 런타임 모드

---

### Flutter를 사용하기 위한 Dart 기본 문법

```dart
// Main 함수 : 앱이 시작되는 곳 즉 처음 호출되는 함수

void main() {
	print("Hello World!");
}
```

```dart
// print함수 : 콘솔에 출력, JS의 console.log와 같은 기능

void main() {
	String hi = '안녕하세요.';
	print(hi);
}
```

### Dart 변수 종류

int, double, String, bool, List, Set, Map

```dart
// int형
int value = 10;

// double형
double value = 2.29;

// String형
String value = '안녕하세요';

// boolean형
bool value1 = true;
bool value2 = false;

// List형
List<String> = ['a', 'b', 'c'];

// Set형
Set<String> = {'a', 'b', 'c'};

// MAP형
Map<String, int> = {'a': 1, 'b': 2, 'c': 3}
```

### Dart 상수 종류

- final
    - 컴파일 후 처리가 실행
    
    ```dart
    // final 한정자
    final String test1 = '문자열';
    final test2 = '문자열';
    ```
    
- const
    - 컴파일 시 처리가 실행
    
    ```dart
    // const 한정자
    const String test1 = '문자열';
    const test2 = '문자열';
    ```
    

### Dart 함수

```dart
// void형 함수, 인수 없을 때
void hi() {
print('안녕하세요');
}

// 리턴 유형이 존재하는 함수
String getHello() {
	return '안녕하세요';
}

// 명명된 파라미터를 이용하는 함수
void main() {
	printHello(name: 'flutter');
	printHello2();
}

void printHello({String? name}) {
	print("Hello! $name");
}

void printHello2({String? name="Dart"}) {
	print("Hello! $name");
}

// 화살표 함수
void main() {
	int added = add(num1: 1, num2: 2);
	total(total: added);
}

int add({int num1 = 0, int num2 = 0}) => num1 + num2;
void total({int total = 0}) => print("합계는 $total")
```

### Dart 연산자

- 산술 연산자: +, -, *, /, ~/, %, ++, --
- 대입 연산자: +=, -=, *=, /=, ~/=, %=
- 비교 연산자: >, >=, ==, <, <=, !=
- 논리 연산자:&&, ||, !
- 유형 테스트 연산자: is, is!
- 삼항 연산자: 판별식 ? A문 : B문
