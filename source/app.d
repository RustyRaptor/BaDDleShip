import std.stdio;
import std.algorithm.comparison : among, equal;
import std.range : iota;
import std.random;

void printBoard(int[5][5] board){
    foreach(row; board) {
        writeln(row);
        }
}

void printWelcome(){
    writeln("Welcome to Baddleship!!");
}

void randomRow(){
    
    auto rnd = Random(22);
    auto i = uniform(0, 15, rnd);
    assert(i >= 0 && i < 15);
    writeln(i);
}

void main(){
    int[5][5] board;
    foreach(row; board) {
        foreach(item; row){
            item = 0;
        }
    }
    printWelcome();
    printBoard(board);
    randomRow();
    
}
