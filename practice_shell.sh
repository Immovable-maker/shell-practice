#!/bin/sh
#!https://engineer-mole.tistory.com/200
echo "Hello, World!"


read NAME
echo -e "Hello, $NAME!" #특수 텍스트 이스케이프?

var="var"
var_2="var_2"
echo "var_2=$var_2"

var_2="var_2 change"
echo "var_2=$var_2"

#! 아래 구문은 오류가 발생
# readonly var
# var="readonly var를 바꿔보자" 


#!  sh practice_shell.sh first second third 로
echo "\$0（스크립트 명）: $0"
echo "\$1（1번째 인수）: $1"
echo "\$2（2번째 인수）: $2"
echo "\$#（인수의 수）: $#"
echo "\"\$*\": \"$*\""
echo "\"\$@\": \"$@\""
VAR="exit값은0이 될 것이다."
echo $?
echo $$
echo $!

#! 실행 방법
# sh practice_shell.sh    
# bash practice_shell.sh 
# chmod 755 test.sh > 파일이나 디렉토리 허가를 바꾸는 코드 chmod

# source practice_shell.sh 이거 뭔가 좀 다른데?


# symlink
# ln -s [대상 원본 파일] [새로 만들 파일 이름]

# 링크 해제
# rm [링크 파일] 등등..

