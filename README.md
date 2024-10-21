![image](https://github.com/user-attachments/assets/8947c17a-a07b-4b86-adca-5e07394723d4)


# libhangul 키 배치 추가
1. 키코드-밸류_자동생성.ods 실행 후 키 배치구상 시트 세번째 블록에 원하는 키 배치 입력.

2. calc 시트에서 *과 ?에 해당하는 키값만 수동 입력

3. libhangul/data/keyboards/에 xml_result 시트 결과 사용해서 xml, template 파일 생성

4. header_result 시트 결과 사용해서 libhangul/hangul/hangulkeyboard.h 에 키 배치 추가

5. libhangul/hangul/hangulkeyboard.c 에 추가한 키 배치 정보 입력

```bash
cd libhangul
make clean
./autogen.sh
./configure --prefix=/usr
make
make install
```

## ibus의 경우 

1. https://github.com/ibus/ibus 설치
2. 앞서 수정한 libhangul 설치
3. ibus-hangul 설치
4. https://github.com/libhangul/ibus-hangul 설치
5. ibus와 ibus-hangul을 패키지 관리자를 이용해 공식리포지터리 파일로 재설치



