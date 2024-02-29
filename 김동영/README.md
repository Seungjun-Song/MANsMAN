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
---
# 2024-02-28 (수) TIL
[Flutter 클론코딩](https://lab.ssafy.com/s10-bigdata-recom-sub1/S10P21E106/-/tree/master/%EA%B9%80%EB%8F%99%EC%98%81/flutter/toonfilx?ref_type=heads)
---

# 2024-02-29 (목) TIL

## 모바일 애플리케이션을 만들기 위해서?

Flutter 만으로 애플리케이션 개발이 가능한가…?

정답 : X

Flutter는 모바일 애플리케이션 UI를 만드는 프레임워크…

즉 모바일 기기의 리소스 및 센서에 접근하기 위해서는 다른 방법이 필요하다

그래서 사용하는 것이 Kotlin

## Kotlin?

코틀린은 자바 플랫폼에서 돌아가는 새로운 프로그래밍 언어

코틀린은 기존 자바 라이브러리나 프레임워크와 함께 잘 작동하며, 성능도 자바와 같은 수준

맛보기

```kotlin
// 데이터 클래스
data class Person(
    val name: String,
    val age: Int? = null // 널이 될 수 있는 타입과 파라미터 디폴트 값
)

// 최상위 함수
fun main(args: Array<String>) {
    val persons = listOf(
        Person("Alice"),
        Person("Bob", age = 29) // 이름 붙은 파라미터
    )

    val oldest = persons.maxBy { it.age ?: 0 } // 람다 식과 엘비스 연산자
    println("The oldest is: $oldest") // 문자열 템플릿
}
```

### 코틀린의 특성?

1. 서버, 안드로이드 등 자바가 실행되는 모든 곳
    - 서버상의 코드
    - 안드로이드 디바이스에서 실행되는 모바일 애플리케이션
2. 정적 타입 언어
    - 모든 프로그램 구성 요소의 타입을 컴파일 시점에 알 수 있음
    - 프로그램 안에서 객체의 필드나 메소드를 사용할 때마다 컴파일러가 타입을 검증
3. 함수형 프로그래밍과 객체지향 프로그래밍
    - 불변성
        - 내부 상태가 절대로 바뀌지 않는 불변 객체를 사용해 프로그램을 작성
    - 1급 시민 함수
        - 함수(프로그램의 행동을 나타내는 코드 조각)를 일반 값처럼 다룰 수 있다. 함수를 변수에 저장할 수 있고, 함수를 인자로 다른 함수에 전달할 수 있으며, 함수에서 새로운 함수를 만들어서 반환할 수 있다.
    - Side Effect 없음
        - 입력이 같으면 항상 같은 출력을 내놓고 다른 객체의 상태를 변경하지 않으며, 함수 외부나 다른 바깥 환경과 상호작용하지 않는 순수 함수를 사용
4. 무료 오픈소스
    - 무료다!

### 코틀린 안드로이드 프로그래밍

코틀린도 컴파일 언어다!

즉 코드 실행전 컴파일 필수

<aside>
💡 **코틀린 코드 컴파일**

코틀린 소스코드를 저장할 때는 보통 .kt라는 확장자를 파일에 붙인다. 코틀린 컴파일러는 자바 컴파일러가 자바 소스코드를 컴파일할 때와 마찬가지로 코틀린 소스코드를 분석해서 .class 파일을 만들어낸다. 코틀린 코드를 컴파일한 다음 java 명령으로 그 코드를 실행하는것

</aside>

![https://lovia98.github.io/blog/assets/img/kotlin/kotlin_build.jpg](https://lovia98.github.io/blog/assets/img/kotlin/kotlin_build.jpg)

---

# 요약

- 코틀린은 타입 추론을 지원하는 정적 타입 지정 언어다. 따라서 소스코드의 정확성과 성능을 보장하면서도 소스코드를 간결하게 유지할 수 있다.
- 코틀린은 객체지향과 함수형 프로그래밍 스타일을 모두 지원한다. 코틀린에서는 일급 시민 함수를 사용해 수준 높은 추상화가 가능하고, 불변 값 지원을 통해 다중 스레드 애플리케이션 개발과 테스트를더 쉽게 할 수 있다.
- 코틀린을 서버 애플리케이션 개발에 잘 활용할 수 있다. 코틀린은 기존 자바 프레임워크를 완벽하게 지원하는 한편, HTML 생성기나 영속화등의 일반적인 작업을 위한 새로운 도구를 제공한다.
- 코틀린은 무료며 오픈소스다. 또한 주요 IDE와 빌드 시스템을 완전히 지원한다.
- 코틀린은 실용적이며 안전하고, 간결하며 상호운용성이 좋다. 이는 코틀린을 설계하면서 일반적인 작업에 대해 이미 잘 알려진 해법을 채택하고, NullPointerException과 같이 흔히 발생하는 오류를 방지하며, 읽기 쉽고 간결한 코드를 지원하면서 자바와 아무런 제약 없이 통합될 수 있는 언어를 만드는데 초점을 맞췄다는 뜻이다.
