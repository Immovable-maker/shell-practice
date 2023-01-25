# +	덧셈	echo `expr 10 + 20` => 30
# -	뺄셈	echo `expr 20 - 10` => 10
# \*	제곱	echo `expr 11 \* 11` => 121
# /	나눗셈	echo `expr 10 / 2` => 5
# %	나머지	echo `expr 10 % 4` => 2
# =	자정	a=$b b의 값은 a에 저장된다
# ==	동일	[ "$a" == "$b" ] $a과 $b가 동일하는 경우 TRUE가 반환된다.
# !=	다름	[ "$a" != "$b" ] $a과 $b가 동일하지 않는 경우 TRUE가 반환된다.

echo `expr 10 + 20`

echo `expr 20 - 10`

echo `expr 11 \* 11`

echo `expr 10 / 2`

echo `expr 10 % 4`

read a
read b

echo $a == $b
echo '"$a" != "$b"'


# -eq	동일	[ "$a" -eq "$b" ] 와 $a와 $b가 동일한 경우 TRUE가 반환된다.
# -ne	다름	[ "$a" -ne "$b" ] $a와 $b가 동일하지 않은 경우 TRUE가 반환된다.
# -gt	보다 큼	[ "$a" -gt "$b" ] $a가 $b보다 큰 경우 TRUE가 반환된다.
# -lt	보다 작음	[ "$a" -lt "$b" ] $a가 $b보다 작은 경우 TRUE가 반환된다.
# -ge	보다 크거나 같거나	[ "$a" -ge "$b" ] $a가 $b보다 크거나 같은 경우 TRUE가 반환된다.
# -le	보다 작거나 같거나	[ "$a" -le "$b" ] $a가 $b보다 작거나 같은 경우 TRUE가 반환된다.
# !	(이)가 아니다	[ ! "$a" -gt "$b" ]$a가 $b보다 크지 않은 경우 TRUE가 반환된다.
# -o	어느쪽이든	[ "$a" -gt "$b" -o "$a" -lt "$b" ]$a가 $b보다 크거나 작은 경우 TRUE가 반환된다. (Bash 확장 / POSIX폐지 예정)
# -a	양쪽	[ "$a" -gt 90 -a "$a" -lt 100 ] $a가 90보다 크고 100보다는 작은 경우 TRUE가 반환된다.
# -z	문자열이 비었는가	[ -z "$a" ]$a에 어떤 것도 지정되지 않은 경우 TRUE가 반환된다.
# -n	문자열이 비었는가	[ -n "$a" ] $a에 어떠한 것이 지정되어 있다면 TRUE가 반환된다.


# - if의 기본 작성법은 if [ 조건 ] then 커맨드 fi 이다.
# [ ] 의 띄어쓰기도 알맞지 않은경우 오류가 발생한다.
# - 조건과 일치하는 경우 then 뒤의 커맨드가 실행된다.
# - 조건과 다른 경우 차례로 elif [ 조건 ]에 적힌 내용을 확인한다.
# - 일치하는 조건이 없는 경우 else 다음의 커맨드가 실행된 후 종료된다.
# - else가 존재하지 않는 경우, 그대로 종료된다.
# fi 가 없는 경우 end of file을 인식하지 못한다.

if [ -z "$1" -o -z "$2" ] # 띄어쓰기도 모두 지켜야함
then echo '비어있다'
fi

# if [ "$1" -gt "$2" ]
# then 
#     echo "1번째 인수가 2번째 인수보다 크다"
# elif [ "$1" -eq "$2" ]
# then
#     echo "1번째 인수와 2번째 인수가 동일하다"
# else
#     echo "1번째 인수가 2번째 인수보다 작다"
# fi