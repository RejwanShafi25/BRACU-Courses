#!/bin/bash
yacc -d -y --debug --verbose 23241108+23341130.y
echo 'Generated the parser C file as well the header file'
g++ -w -c -o y.o y.tab.c
echo 'Generated the parser object file'
flex 23241108+23341130.l
echo 'Generated the scanner C file'
g++ -fpermissive -w -c -o l.o lex.yy.c
echo 'Generated the scanner object file'
g++ y.o l.o -o a.out
echo 'All ready, running'
./a.out input.c
echo 'logfile'
cat 23241108+23341130_log.txt