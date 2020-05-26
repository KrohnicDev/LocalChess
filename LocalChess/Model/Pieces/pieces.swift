//
//  ChessPiece.swift
//  LocalChess
//
//  Created by Joonas Junttila on 26.5.2020.
//  Copyright © 2020 Joonas Krohn. All rights reserved.
//

import Foundation

enum ChessPieceType {
    case pawn, knight, bishop, rook, queen, king
}

protocol ChessPiece {
    var color: ChessColor { get }
    var type: ChessPieceType { get }
    var moves: [Coordinate] { get }
}
