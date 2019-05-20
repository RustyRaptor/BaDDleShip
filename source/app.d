import std.stdio;
import std.algorithm.comparison : among, equal;
import std.range : iota;
import std.random;
import std.datetime;

/// Prints the board
void printBoard(int[5][5] board){
    foreach(row; board) {
        writeln(row);
        }
}

/// Prints the welcome message
void printWelcome(){
    writeln("Welcome to Baddleship!!");
}

/// returns a random row on the game board
int randomRow(){
    
    auto rnd = Random(22);
    /// TODO: range based on length of board
    const int i = uniform(0, 4, rnd);
    assert(i >= 0 && i < 4);
    return(i);
}

/// returns a random column on the game board
int randomCol(){
    auto rnd = Random(22);

    /// TODO: range based on length of board
    const int i = uniform(0, 4, rnd);
    assert(i >= 0 && i < 4);
    return(i);
}

void main(){

    /// Initialize the board
    /// TODO: User inputs size of board
    int[5][5] board;
    foreach(row; board) {
        foreach(item; row){
            item = 0;
        }
    }
    printWelcome();
    printBoard(board);
    writeln(randomRow());
    writeln(randomCol());
}
