//
//  Pawn.swift
//  LocalChess
//
//  Created by Joonas Junttila on 26.5.2020.
//  Copyright © 2020 Joonas Krohn. All rights reserved.
//

import Foundation

struct Pawn: ChessPiece {

    let color: ChessColor
    let type: ChessPieceType = .pawn
    
    var moves: [Coordinate] {
        
        var moves = [Coordinate]()
        
        if color == .white {
            moves.append(Coordinate(x: 0, y: -1))
        } else {
            moves.append(Coordinate(x: 0, y: 1))
        }
        
        return moves
    }
}
