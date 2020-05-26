//
//  GameEngine.swift
//  LocalChess
//
//  Created by Joonas Junttila on 25.5.2020.
//  Copyright © 2020 Joonas Krohn. All rights reserved.
//

import Foundation

class ChessGame {
    
    var activePlayer: ChessColor
    var board: [[Square]]
    
    init() {
        
        activePlayer = .white
        board = [[]]
        
        for y in 0...7 {
            
            var row = [Square]()
            
            for x in 0...7 {
                let square = Square(coordinate: Coordinate(x: x, y: y))
                row.append(square)
            }
            
            board.append(row)
        }
    }
    
    func startNewGame() {
        activePlayer = .white
        initPieces()
    }
    
    func initPieces() {
        for x in 0...7 {
            for y in [0,1,6,7] {
                
                let color: ChessColor = [0,1].contains(y) ? .black : .white
                var piece: ChessPiece!
                
                if [1,6].contains(y) {
                    
                    piece = Pawn(color: color)
               
                } else {
                    
                    switch x {
                    case 0, 7:  piece = Rook(color: color)
                    case 1, 6:  piece = Knight(color: color)
                    case 2, 5:  piece = Bishop(color: color)
                    case 3:     piece = Queen(color: color)
                    case 4:     piece = King(color: color)
                    default:    fatalError()
                    }
                }
                
                if let piece = piece {
                    board[y][x].piece = piece
                } else {
                    fatalError("Chess piece not placed")
                }
            }
        }
    }
    
    func legalMoves(for piece: ChessPiece) -> [(x: Int, y: Int)] {
        return []
    }
    
    func playMove(from origin: Coordinate, to destination: Coordinate) {
        
    }
}
