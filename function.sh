
#함수를 작성한다
MyFunction () { 
    echo "함수의 echo이다."
}
MyParamFunc() {
    echo "인수1:$1 인수2:$2"
}

#함수를 호출한다
MyFunction
MyParamFunc param1 param2

while getopts ":a:p:" flag; do
  case $OPTARG in
    -*) echo "Option $opt needs a valid argument"
    exit 1
    ;;
  esac
  
  case $flag in
    a) arg_1="$OPTARG"
    ;;
    p) p_out="$OPTARG"
    ;;
    \?) echo "Invalid option -$OPTARG" >&2
    exit 1
    ;;
  esac


done

printf "Argument p_out is %s\n" "$p_out"
printf "Argument arg_1 is %s\n" "$arg_1"