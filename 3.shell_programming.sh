# 쉘스크립트 작성 : 반드시 확장자 .sh
touch myscript.sh
nano myscript.sh
echo "hello world"
# 실행 권한 부여
chmod u+x myscript.sh
# 스크립트 실행
./myscript.sh

# 터미널창에 "script practice start" 문구 출력
echo "script practice start"
# 홈디렉토리에서 mydir이라는 폴더 생성
cd
mkdir mydir
# mydir로 이동해서 file1.txt, file2.txt 파일생성
cd mydir
touch file1.txt
touch file2.txt
# file1.txt에는 hello from file1이라는 문구 입력
echo "hello from file1" > file1.txt
# file2.txt에는 hello from file2이라는 문구 입력
echo "hello from file2" > file2.txt
# file1.txt파일을 백업본(copy본) 생성, 이름은 file1_backup.txt
cp file1.txt file1_backup.txt
# file2.txt파일의 이름을 file2_rename.txt로 변경
mv file2.txt file2_rename.txt
# 터미널 창에 "script practice end" 문구 출력
echo "script practice end"

# if문 [ 1 > 2 ]
if [ 1 -gt 2 ]; then
    echo "hello world1"
else
    echo "hello world2"
fi

# 변수 선언 및 파일/디렉토리 검사
file_name="first_file.txt"
if [ -f "$file_name" ]; then
    echo "$file_name exists"
else
    echo "$file_name doesn't exists"
fi

# for 문
for a in {1..100}
do
    echo "hello world$a"
done

# for문과 파일/디렉토리 목록조회
for a in *
do
    echo "$a"
done

# for문의 변수값을 증가
count=100
for a in {1..100}
do
    let count=count+1
done
echo "count value is $count"

# for문 및 변수값 세팅 활용
file_count=0
dir_count=0
for a in *
do
    if [ -f $a ]; then
        let file_count=file_count+1
    else
        let dir_count=dir_count+1
    fi
done
echo "file_count is $file_count"
echo "dir_count is $dir_count"