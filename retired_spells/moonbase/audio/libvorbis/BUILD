
for FILE in configure configure.in ; do
  sedit  "s/-O20 -ffast-math -mno-ieee-fp -D_REENTRANT -fsigned-char//" $FILE
  sedit  "s/-Wall -W -pg -g -O20 -ffast-math -mno-ieee-fp -D_REENTRANT -fsigned-char -fno-inline -static//" $FILE
done

default_build
