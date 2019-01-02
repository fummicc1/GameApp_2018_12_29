//
//  Presenter.swift
//  GameApp_2018_12_29
//
//  Created by Fumiya Tanaka on 2018/12/29.
//  Copyright © 2018 Fumiya Tanaka. All rights reserved.
//

import Foundation
import SpriteKit

protocol PresentationViewer: class {
    func updated<Node: SKSpriteNode>(object: inout Node)
    func animated(object: inout SKNode, animation: SKAction)
    func show(scene: SKScene, to: inout SKView)
}

class Presenter: PresentationViewer {
    
    // Reference to the View (weak to avoid retain cycle).
    weak var viewController: GameViewController?
    
    func updated<Node>(object: inout Node) where Node : SKSpriteNode {
    }
    
    func animated(object: inout SKNode, animation: SKAction) {
        object.run(animation)
    }
    
    func jump() {
    }
    
    func gameClear() {
    }
    
    func show(scene: SKScene, to: inout SKView) {
    }
    
}
