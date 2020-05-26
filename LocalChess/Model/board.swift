//
//  board.swift
//  LocalChess
//
//  Created by Joonas Junttila on 26.5.2020.
//  Copyright © 2020 Joonas Krohn. All rights reserved.
//

import Foundation

struct Coordinate {
    let x: Int
    let y: Int
}

struct Square {
    let coordinate: Coordinate
    var piece: ChessPiece? = nil
    var color: ChessColor {
        return .black
    }
}

enum ChessColor {
    case black, white
}
