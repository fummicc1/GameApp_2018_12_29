//
//  PlayerUseCase.swift
//  GameApp_2018_12_29
//
//  Created by Fumiya Tanaka on 2018/12/31.
//  Copyright © 2018 Fumiya Tanaka. All rights reserved.
//

import Foundation
import SpriteKit

fileprivate protocol Input {
    
    
    
}

fileprivate protocol Outout {
    var player: Player? { get }
}

class PlayerInteractor: Input, Outout {
    var player: Player?
    weak var presenter: Presenter?
    private var playerWorker: PlayerWorker?
    
    public init(worker: PlayerWorker) {
        self.playerWorker = worker
    }
    
    func move(player: Player) {
        guard let body = player.physicsBody else { return }
        playerWorker?.add(velocity: CGVector(dx: 200, dy: 200), to: &body.velocity)
    }
    
}
