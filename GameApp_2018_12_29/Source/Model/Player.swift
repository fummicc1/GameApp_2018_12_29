//
//  Player.swift
//  GameApp_2018_12_29
//
//  Created by Fumiya Tanaka on 2018/12/29.
//  Copyright © 2018 Fumiya Tanaka. All rights reserved.
//

import Foundation
import SpriteKit

class Player: SKSpriteNode {
    var hitPoint: Int = 0
    var score: Int = 0
    
    struct Animation {
        var damagedAnimation: SKAction?
        var jumpAnimation: SKAction?
        var runAnimation: SKAction?
        var healAnimation: SKAction?
    }
    
    struct Physics {
        var physicsBpdy: SKPhysicsBody!
        static var initialSize: CGSize = CGSize(width: 150, height: 150)
    }
    
    init() {
        super.init(texture: nil, color: .clear, size: Physics.initialSize)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}