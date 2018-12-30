//
//  Worker.swift
//  GameApp_2018_12_29
//
//  Created by Fumiya Tanaka on 2018/12/29.
//  Copyright © 2018 Fumiya Tanaka. All rights reserved.
//

import Foundation
import SpriteKit

protocol FundamentalUseCaseProtocol {
    
    func damagaed(player: inout Player)
    
    func add(velocity: CGVector, to: inout CGVector)
    
    func transfer(from: inout CGPoint, destination: CGPoint)
    
    func move(from: inout CGPoint, dx: CGFloat)
    
}

/// Validationをしないで、ビジネスロジック・UseCaseを書いた。
class FundamentalUseCase: FundamentalUseCaseProtocol {
    
    func damagaed(player: inout Player) {
        player.hitPoint -= 1
    }
    
    func add(velocity: CGVector, to: inout CGVector) {
        to += velocity
    }
    
    func transfer(from: inout CGPoint, destination: CGPoint) {
        from = destination
    }
    
    func move(from: inout CGPoint, dx: CGFloat) {
        from.x += dx
    }
}

infix operator +=

func +=(lhs: inout CGVector, rhs: CGVector) {
    var vector = rhs
    vector.dx += lhs.dx
    vector.dy += lhs.dy
    lhs = vector
}
