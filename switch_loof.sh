# - switch의 기초 작성법은 case 변수 in 조건・값) 커맨드 ;; esac이다. 
# - 조건・값이 변수와 일치하는 경우 그 곳에 적힌 커맨드가 실행된다.

DRINK="coffee"
case "$DRINK" in
    "beer") echo "맥주입니다" 
    ;;
    "juice") echo "주스입니다" 
    ;;
    "coffee") echo "프로그래머가 마시면 커피로 변화！" 
    ;;
esac

# while 조건과 일치할 때 반복된다.
a=0
while [ $a -lt 5 ]
do
    echo $a
    a=`expr $a + 1`
done

# until 조건과 일치할 때까지 반복된다.
a=0
until [ ! $a -lt 5 ] # ! 뒤에 띄어쓰기 같은 거 안해도 잘모름
do
    echo $a
    a=`expr $a + 1`
done

# for var in 0 1 2 3 4  #범위의 작성법(Bash독자) => {0..4}
# do
#     echo $var
# done
for var in {0..4}  
do
    echo $var
done