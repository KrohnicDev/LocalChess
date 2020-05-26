//
//  Knight.swift
//  LocalChess
//
//  Created by Joonas Junttila on 26.5.2020.
//  Copyright © 2020 Joonas Krohn. All rights reserved.
//

import Foundation

struct Knight: ChessPiece {
    
    let color: ChessColor
    let type: ChessPieceType = .knight
    
    var moves: [Coordinate] {
        
        var moves = [Coordinate]()
        
        for x in [1, -1] {
            for y in [2, -2] {
                moves.append(.init(x: x, y: y))
            }
        }
        
        for x in [2, -2] {
            for y in [1, -1] {
                moves.append(.init(x: x, y: y))
            }
        }
        
        return moves
    }
}
