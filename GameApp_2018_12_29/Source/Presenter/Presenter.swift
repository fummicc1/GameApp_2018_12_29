//
//  Presenter.swift
//  GameApp_2018_12_29
//
//  Created by Fumiya Tanaka on 2018/12/29.
//  Copyright © 2018 Fumiya Tanaka. All rights reserved.
//

import Foundation
import SpriteKit

protocol PresentationLogic {
    func update<T: SKSpriteNode>(object: inout T)
    func animate(object: inout SKNode, animation: SKAction)
}

class Presenter: PresentationLogic {
    
    // Reference to the View (weak to avoid retain cycle).
    weak var view: GameViewController?
    
    // Reference to the Interactor's interface.
    var interactor: Interactor?
    
    // Reference to the Router
    var router: Router?
    
    func update<T: SKSpriteNode>(object: inout T) {
    }
    
    func animate(object: inout SKNode, animation: SKAction) {
        object.run(animation)
    }
}
