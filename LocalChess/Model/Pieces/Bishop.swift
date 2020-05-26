//
//  Bishop.swift
//  LocalChess
//
//  Created by Joonas Junttila on 26.5.2020.
//  Copyright © 2020 Joonas Krohn. All rights reserved.
//

import Foundation

struct Bishop: ChessPiece {
    
    let color: ChessColor
    let type: ChessPieceType = .bishop
    
    var moves: [Coordinate] {
        
        var moves = [Coordinate]()
        
        for n in 1...7 {
            for multiplierX in [-1,1] {
                for multiplierY in [1,-1] {
                    moves.append(.init(x: n * multiplierX, y: n * multiplierY))
                }
            }
        }
        
        return moves
    }
}
