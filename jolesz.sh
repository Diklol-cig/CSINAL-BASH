#!/bin/bash

echo "1-Java, 2-C, 3-txt"

read TYPE

if [ "$TYPE" = "1" ]; then
    if [[ -f "Main.java" ]];then
        echo "Mar letezik"
    else
            echo "Java"

        touch "Main.java"
        echo "class Main{
    public static void main(String args[]){
        
    }
}" > Main.java
    fi
elif [ "$TYPE" = "2" ]; then
    if [[ -f "Main.c" ]];then
        echo "Mar letezik"
    else
        echo "C"

        touch "Main.c"
        echo "int main(){

}" > Main.c
    fi
elif [ "$TYPE" = "3" ]; then
    if [[ -f "Test.txt" ]];then
        echo "Mar letezik"
    else
        echo "txt"
        touch "Test.txt"
        echo "Fityma" > Test.txt
    fi
else
    echo "Rossz input"
fi

echo "Done!"