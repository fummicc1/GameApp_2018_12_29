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
    func update<Node: SKSpriteNode>(object: inout Node)
    func animate(object: inout SKNode, animation: SKAction)
}

class Presenter: PresentationViewer {
    
    // Reference to the View (weak to avoid retain cycle).
    weak var viewController: GameViewController?
    
    // Reference to the Interactor's interface.
    private var interactor: PlayerInteractor?
    
    // Reference to the Router
    private var router: RouteToScene?
    
    init(interactor: PlayerInteractor) {
        self.interactor = interactor
    }
    
    func update<Node>(object: inout Node) where Node : SKSpriteNode {
        if object is Player {
            let player = (object as! Player)
            interactor?.move(player: player)
        }
    }
    
    func animate(object: inout SKNode, animation: SKAction) {
        object.run(animation)
    }
    
    func jump() {
    }
    
    func gameClear() {
        
    }
    
}
