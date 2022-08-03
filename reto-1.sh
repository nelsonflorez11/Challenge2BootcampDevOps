#!/bin/bash

comentario=$1

rm -rf foo
mkdir foo
mkdir foo/dummy
mkdir foo/empty
touch foo/dummy/file1.txt 
touch foo/dummy/file2.txt
echo "Me encanta bash!!" > foo/dummy/file1.txt

cat  foo/dummy/file1.txt > foo/dummy/file2.txt
mv foo/dummy/file2.txt foo/empty/ 

if [[ $comentario == '' ]]; then  
  echo "Que me gusta bash!!!!" > foo/dummy/file1.txt
  echo "Que me gusta bash!!!!" > foo/empty/file2.txt
  else  
  echo $comentario > foo/dummy/file1.txt
fi




