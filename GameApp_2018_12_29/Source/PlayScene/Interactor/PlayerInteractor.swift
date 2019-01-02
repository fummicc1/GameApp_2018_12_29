//
//  PlayerUseCase.swift
//  GameApp_2018_12_29
//
//  Created by Fumiya Tanaka on 2018/12/31.
//  Copyright © 2018 Fumiya Tanaka. All rights reserved.
//

import Foundation
import SpriteKit

protocol PlayerBusinessLogic {
    func move(from: inout CGPoint, to: CGPoint)
    func animate(_ animation: SKAction)
}

class PlayerInteractor: PlayerBusinessLogic, DataStore {
    
    var score: Int = 0
    var model: Model.ModelType = .player
    var presenter: Presenter?
    
    
    func move(from: inout CGPoint, to: CGPoint) {
        from += to
    }
    
    func animate(_ animation: SKAction) {
        
    }
}

infix operator +=

func +=(lhs: inout CGPoint, rhs: CGPoint) {
    var point = lhs
    point.x += rhs.x
    point.y += rhs.y
    lhs = point
}

func +=(lhs: inout CGVector, rhs: CGVector) {
    var vector = rhs
    vector.dx += lhs.dx
    vector.dy += lhs.dy
    lhs = vector
}

