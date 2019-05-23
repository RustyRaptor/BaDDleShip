import std.stdio;
import std.algorithm.comparison : among, equal;
import std.range : iota;
import std.random;
import std.datetime;
import std.datetime.timezone : LocalTime;
import core.simd;


/// Prints the board
void printBoard(int[][] board){
    /// TODO: print neatly
    foreach(row; board) {
        writeln(row);
        }
}

/// Prints the welcome message
void printWelcome(){
    writeln("Welcome to Baddleship!!");
}

/// returns a random row on the game board
int randomRow(int[][] board){
    

    auto rnd = Random();
    /// TODO: range based on length of board
    const int i = uniform(0, board.length, rnd);
    assert(i >= 0 && i < 4);
    return(i);
}

/// returns a random column on the game board
int randomCol(int[][] board){
    auto rnd = Random(22);

    /// TODO: range based on length of board
    const int i = uniform(0, board.length, rnd);
    assert(i >= 0 && i < 4);
    return(i);
}

void main(){
    const int a = 5;
    
    /// Initialize the board
    /// TODO: User inputs size of board
    foreach(row; board) {
        foreach(item; row){
            item = 0;
        }
    }
    SysTime today = Clock.currTime();
    writeln(((today.second)));
    /// place a ship on a random tile
    const int shipRow = randomRow(board);
    const int shipCol = randomCol(board);
    printWelcome();
    printBoard(board);
    // writeln(board[shipRow]);
    // writeln(board[shipRow][shipCol]);
    int guessRow;
    int guessCol;
    write("Enter a Row:");
    readf(" %s", &guessRow);
    writeln("");
    write("Enter a Column:");
    readf(" %s", &guessCol);
    writeln("");

}
