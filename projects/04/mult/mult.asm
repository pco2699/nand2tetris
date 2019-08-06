// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

// 1+...+100の和を求める
    @i // iはメモリの特定の場所を参照している
    M=1 // i=1
    @sum // sumはメモリの特定の場所を参照している
    M=0 // sum=0
(LOOP) 
    @i
    D=M    // D=i
    @R1
    D=D-M  // D=i-R1
    @END
    D;JGT // もし(i-R1)>0ならばENDへ移動
    @R0
    D=M // D=R0
    @sum
    M=D+M  // sum=sum+R0
    @i
    M=M+1  // i=i+1
    @LOOP
    0;JMP // LOOPへ移動
(END)
    @sum
    D=M   // D=sum
    @R2
    M=D // R2=sum