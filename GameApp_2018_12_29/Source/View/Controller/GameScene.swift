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
    
    override func didMove(to view: SKView) {
        self.presenter = Presenter()
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
    
}
