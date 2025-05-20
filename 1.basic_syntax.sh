# 현재 위치 경로 출력
pwd

# 현재위치에서 파일 및 폴더 조회
ls

# 목록조회 자세히
ls -l

# 목록조회 자세히(숨김 파일까지)
ls -al

# 목록조회 자세히, 숨김파일, 오래된순정렬(최신순 alt)
ls -alrt

# 디렉토리 생성
mkdir 디렉토리명

# 특정 디렉토리로 이동
cd 디렉토리명

# 상위 디렉토리로 이동
cd ..

# 루트디렉토리로로 이동
cd /

# 직전 있었던 디렉토리로 이동
cd -

# 홈경로(/home/본인계정)로 이동
cd

# 상대경로와 절대경로
# 상대경로 cd ../../
# 절대경로 cd /home

# 비어있는 파일 만들기
touch first_file.txt

# 파일 내용 터미널 창에 출력하기
cat first_file.txt

# 파일 내용 상위 10줄 출력하기
head 파일명

# 파일 내용 하위 10줄 출력하기
tail 파일명

# 파일내용 상/하위 n개 출력
head -n 파일명, tail -n 파일명

# 파일내용 실시간 조회
tail -f 파일명

# 파일내용 편집기 : nano, vi
# 도스키 위아래를 통해 이전명령어 조회
# 컨트롤c(^C)를 통해 입력명령어 취소
# 이전에 실행했던 명령어 모두 조회
history
# 현재 내 터미널창에 보이는 명령어 내역 정리
clear

# 파일 삭제 명령어, -f 옵션을 통해 묻지않고 삭제제
rm 파일명
# 폴더째 삭제 명령어
rm -r 폴더명

# 터미널창에 문자열을 출력
echo "hello world"
# echo를 통해 파일에 내용 입력
#  > : 덮어쓰기, >> : 추가모드
echo "hello world" > first_file.txt

# 복사 명령어
# cp 복사대상 복사될파일명
# 폴더 복사시 -r 옵션 사용
cp 1_file.txt 2_file.txt, cp 1_file.txt ../2_file.txt

# grep : 파일 내에서 문자열 찾기
# r:모든 디렉토리내, n:라인수출력, i:대소문자구분없이
grep -rni "hello"

# find : 이름으로 파일 또는 디렉토리 찾기
find . -name "*.txt"
find . -type f, find . -type d

# find와 grep의 혼용
find . -name "*.txt" -exec grep -rni "hello" {} \;
find . -name "*.txt" | xargs grep -rni "hello"

# 타입은 file인 파일중에 이름은 first로 시작하고 그 파일들 안에 hello라는 키워드가 들어가 있는 문장 찾기
find . -name "first*" -type f | xargs grep -rni "hello"