//
//  King.swift
//  LocalChess
//
//  Created by Joonas Junttila on 26.5.2020.
//  Copyright © 2020 Joonas Krohn. All rights reserved.
//

import Foundation

struct King: ChessPiece {
    
    let color: ChessColor
    let type: ChessPieceType = .king
    
    var moves: [Coordinate] {
        
        var moves = [Coordinate]()
        
        for x in [1,-1] {
            for y in [1, -1] {
                moves.append(.init(x: x, y: y))
            }
        }
        
        return moves
    }
}
