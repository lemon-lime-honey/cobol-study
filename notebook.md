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
