#!bin/sh

echo "1 - ${var:-wordSetInEcho1}"
echo "2 - var = ${var}"
echo "3 - ${var:=wordSetInEcho3}"
echo "4 - var = ${var}"
unset var
echo "5 - ${var:+wordSetInEcho5}"
echo "6 - var = $var"
var="newVarValue"
echo "7 - ${var:+wordSetInEcho7}"
echo "8 - var = $var"
echo "9 - ${var:?StandardErrorMessage}"
echo "10 - var = ${var}"

#bash shell로 배열을 작성하는 방법
ARRAY=(item1 item2 item3 item4)
ARRAY[0]="ITEM1"
ARRAY[2]="ITEM3"

echo "ARRAY[0]: ${ARRAY[0]}"
echo "ARRAY[1]: ${ARRAY[1]}"

#모든 아이템에 액세스
echo "ARRAY[*]: ${ARRAY[*]}"
echo "ARRAY[@]: ${ARRAY[@]}"