import UIKit

//var greeting = "Hello, playground"
//
//var board = Array(repeating: Array(repeating: -1, count: 3), count: 3)
//
////gameplay
//
//
//
//func checkWin(_ player:Int, _ board:[[Int]]) -> Bool{
//
//
//
//    return check
//}

var all = [1,2,3,4,5,6,7,8,9]
var winningMoves = [[1,2,3], [4,5,6], [7,8,9],
                    [1,4,7], [2,5,8], [3,6,9],
                    [1,5,9], [3,5,7]]

var checkedO = [1, 4, 2, 5]
var checkedX = [1, 4, 2]

func checkWinners(submittedMoves:[Int])->Bool{
    for moves in winningMoves{
        if moves.allSatisfy(submittedMoves.contains){
            return true
        }
    }
    return false
}

print(checkWinners(submittedMoves: [1,5,6,8]))
