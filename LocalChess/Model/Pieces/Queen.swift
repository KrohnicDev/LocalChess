//
//  Queen.swift
//  LocalChess
//
//  Created by Joonas Junttila on 26.5.2020.
//  Copyright © 2020 Joonas Krohn. All rights reserved.
//

import Foundation

struct Queen: ChessPiece {
    
    let color: ChessColor
    let type: ChessPieceType = .queen
    
    var moves: [Coordinate] {
        var moves = [Coordinate]()
        moves.append(contentsOf: Rook(color: color).moves)
        moves.append(contentsOf: Bishop(color: color).moves)
        return moves
    }
}
