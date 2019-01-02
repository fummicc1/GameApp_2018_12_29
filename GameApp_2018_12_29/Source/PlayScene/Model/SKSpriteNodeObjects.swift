//
//  SKSpriteNodeObjects.swift
//  GameApp_2018_12_29
//
//  Created by Fumiya Tanaka on 2019/01/03.
//  Copyright © 2019 Fumiya Tanaka. All rights reserved.
//

import Foundation
import SpriteKit

struct Model {
    
    enum ModelType {
        case player
        case block
        case coin
    }
    
    class Player: SKSpriteNode {
        
        let type: ModelType = .player
        
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
            let texture = SKTexture(imageNamed: "player_start")
            super.init(texture: texture, color: .clear, size: Physics.initialSize)
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        struct ViewModel {
            var hitPoint: Int = 100
            var score: Int = 0
            var position: CGPoint
            var size: CGSize
        }
        
    }
    
    class Block: SKSpriteNode {
        
        let type: ModelType = .block
        
        static let damage = 10
        
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
    
    class Coin: SKSpriteNode {
        let type: ModelType = .coin
    }
    
}
