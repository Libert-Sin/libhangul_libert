기존 세벌식 자판 변형 추가.

공병우 최종자판 기준 

종성 ㄿ, ㄾ, ㄽ,ㄳ 제거.
특수문자 ※, “, ”, ; 제거.
특수문자 추가 및 재배치.


![image](https://github.com/user-attachments/assets/a5d664cd-4e38-4dfe-83c7-a28ca126a8fa)


편한 커스텀을 위해 '키코드-밸류_자동생성.ods' 작성.



사용방법

# 키보드 추가

키코드-밸류_자동생성.ods 파일 열고
· '키 배치 구상' 시트 세번째 블럭(3L)에 원하는 키 배치 입력. (앞은 일반 입력 뒤는 쉬프트 입력)
· 'calc' 시트에서 두번째 블럭(Value)에서 ?와 *에 해당하는 셀의 값만 수동으로 입력(우측 리스트 참고). 기존의 수동입력 셀은 옆자리 수식으로 참고.
· '2_libhangul/data/keyboards/'에 'hangul-keyboard-추가키보드.xml.template' 파일 생성 후 'xml_result' 시트 활용하여 작성
· '2_libhangul/hangul/hangulkeyboard.h'에 'header_result' 시트 활용하여 추가
· '2_libhangul/hangul/hangulkeyboard.c'에 새로 작성한 키보드 정보 입력


# 설치

3개의 폴더 순서대로

make clean
./autogen.sh
./configure --prefix /usr
make
make install

3개 폴더 컴파일 설치 완료 후
ibus 강제 설치 (끝 글자 버그 처리)

sudo pacman -S --overwrite "*" ibus
