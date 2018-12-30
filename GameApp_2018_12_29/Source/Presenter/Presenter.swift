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
    func update<Node: SKSpriteNode>(objects: inout [Node])
    func animate(object: inout SKNode, animation: SKAction)
}

class Presenter: PresentationViewer {
    
    // Reference to the View (weak to avoid retain cycle).
    weak var viewController: GameViewController?
    
    // Reference to the Interactor's interface.
    var interactor: FundamentalUseCase?
    
    // Reference to the Router
    var router: Router?
    
    func update<Node>(objects: inout [Node]) where Node : SKSpriteNode {
    }
    
    func animate(object: inout SKNode, animation: SKAction) {
        object.run(animation)
    }
}
