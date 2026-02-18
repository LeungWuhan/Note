#! /usr/bin/zsh

# String lookup
str=abcdef
echo $str

echo "------------String lookup----------------"
# "I" is from right to left lookup, if can't find Return 0. 
echo $str[(I)cd]

echo $str[(I)cdd]
# "i" is from left to right, if can't find  return array_size + 1 
#
echo $str[(i)cd]

#forloop String

echo "------------forloop String----------------"
for i ({1..$#str}) {
  echo "$str[i] \n"
}

#echo {0..100} 

# Replace string character
echo "-------------Replace string character---------------"

echo "${str/ab} "


