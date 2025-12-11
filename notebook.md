# COBOL

## GnuCOBOL 설치

WSL Archlinux 배포판

- AUR 패키지
- yay 설치 후 `yay -S gnucobol`

## 컴파일

- `cobc -x {filename.cob}`

## 4 Division

- IDENTIFICATION
  - 프로그램 이름과 같은 프로그램에 대한 메타데이터 제공
  - 저자, 설치 상세 사항과 같은 다른 내용도 포함 가능
  - 프로그램 실행에 영향을 주지 않음
- ENVIRONMENT
  - Machine-dependent한 내용
  - 외부 시스템 리소스에 프로그램 내부의 이름을 링크함
  - 프로그램이 실행될 물리적 환경 정의
- DATA
  - 프로그램이 처리 중 사용할 모든 자료 항목, 변수, 자료 구조 설명
  - file records: `FILE SECTION`
  - internal variables: `WORKING-STORAGE SECTION`
- PROCEDURE
  - DATA division에서 정의된 데이터를 다루는 실제 로직과 실행 가능한 지시(statements/verbs)를 포함함
  - 실행 코드 구역

## PIC

- PICTURE Clause의 약어
- 프로그램이 처리할 데이터 변수 선언에 사용됨
- 순서: 레벨 번호 - 데이터 이름 - PICTURE Clause
- 기본 데이터 유형 및 형식 지정 기호

  | Symbol | Data Type    | Description           |
  | ------ | ------------ | --------------------- |
  | 9      | Numeric      | 숫자(0 - 9). 최대 18자리 |
  | X      | Alphanumeric | 문자, 숫자, 특수 문자     |
  | A      | Alphabetic   | 알파벳 및 공백           |

- 숫자 데이터의 형식을 정의하는 중요한 기호

  | Symbol | Data Type             | Description                                     |
  | ------ | --------------------- | ----------------------------------------------- |
  | V      | Assumed Decimal Point | 소수점의 논리적 위치                                 |
  | S      | Sign                  | 숫자에 부호가 있음을 나타냄. PICTURE 절의 시작 부분에 사용 |

- Edited Pictures
  - 데이터 항목을 화면이나 프린터로 출력하기 위해 최종적으로 형식화하는 데 사용 됨
  - 계산의 결과나 출력의 대상으로만 사용 됨

  | Type                               | Symbol  | Description                                    |
  | ---------------------------------- | ------- | ---------------------------------------------- |
  | Insertion Editing                  | .       | 출력되는 데이터의 소수점 위치                        |
  | Insertion Editing                  | ,       | 쉼표를 삽입하여 숫자를 세 자리마다 구분                |
  | Insertion Editing                  | $       | 통화 기호($) 삽입                                 |
  | Insertion Editing                  | + / -   | 양수 또는 음수 부호 삽입                            |
  | Insertion Editing                  | CR / DB | 음수 값일 때 두 자리 기호 신용(CR) 또는 직불(DB) 삽입   |
  | Suppresion and Replacement Editing | Z       | 선행 0을 공백으로 대체하여 출력                       |
  | Suppresion and Replacement Editing | *       | 선행 0을 별표로 대체하려 출력. 주로 수표 보호 등에 사용 됨 |
