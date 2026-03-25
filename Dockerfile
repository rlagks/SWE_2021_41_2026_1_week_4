FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3

CMD ["python3", "-c", "\
def isHappy(n):\n\
  thislist = [n]\n\
  while(1):\n\
    numstr = str(n)\n\
    length = len(numstr)\n\
\n\
    n = 0\n\
    for i in range(length):\n\
      n += int(numstr[i])*int(numstr[i])\n\
\n\
    if(n==1): return True\n\
    thislist.append(n)\n\
\n\
    for j in range(len(thislist)):\n\
      for k in range(j+1,len(thislist) ):\n\
        if thislist[j]==thislist[k]:\n\
          return False\n\
print(isHappy(19))\n\
print(isHappy(2))\n\
" ]