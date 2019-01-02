//
//  Block.swift
//  GameApp_2018_12_29
//
//  Created by Fumiya Tanaka on 2018/12/31.
//  Copyright © 2018 Fumiya Tanaka. All rights reserved.
//

import Foundation
import SpriteKit

class Block: SKSpriteNode {
    let damage = 10
    
    struct Physics {
        static let initialSize = CGSize(width: 50, height: 50)
    }
    
    init() {
        let texture = SKTexture(imageNamed: "block")
        super.init(texture: texture, color: .clear, size: Physics.initialSize)
        self.physicsBody = SKPhysicsBody(texture: texture, size: Physics.initialSize)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
