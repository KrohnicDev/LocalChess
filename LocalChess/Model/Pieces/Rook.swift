//
//  Rook.swift
//  LocalChess
//
//  Created by Joonas Junttila on 26.5.2020.
//  Copyright © 2020 Joonas Krohn. All rights reserved.
//

import Foundation

struct Rook: ChessPiece {
    
    let color: ChessColor
    let type: ChessPieceType = .rook
    
    var moves: [Coordinate] {
        
        var moves = [Coordinate]()
        
        for n in 1...7 {
            
            let coords = [
                Coordinate(x: 0, y: n),
                Coordinate(x: 0, y: -n),
                Coordinate(x: n, y: 0),
                Coordinate(x: -n, y: 0)
            ]
            
            for coord in coords {
                moves.append(coord)
            }
        }
        
        return moves
    }
}
