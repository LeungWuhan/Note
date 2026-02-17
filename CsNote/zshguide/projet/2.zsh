#! /usr/bin/zsh

# String lookup
str=abcdef

echo $str[(I)cd]

echo $str[(I)cdd]
# "I" is from right to left lookup, if can't find Return 0. 
# "i" is from left to right, if can't find  return array_size + 1 
 
echo $str[(i)cd]

#forloop String
for i ({1..$#str}) {
  echo $str[i]
}

#echo {0..100} 

echo ${str/bc/ef}
echo ${str//ab}
