//
//  GameScene.swift
//  GameApp_2018_12_29
//
//  Created by Fumiya Tanaka on 2018/12/29.
//  Copyright © 2018 Fumiya Tanaka. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    var presenter: Presenter?
    
    var player: Player!
    
    override func didMove(to view: SKView) {
        self.player = Player()
    }
    
    override func update(_ currentTime: TimeInterval) {
        presenter?.update(object: &player)
    }
    
    
}
