//
//  GameViewController.swift
//  GameApp_2018_12_29
//
//  Created by Fumiya Tanaka on 2018/12/29.
//  Copyright © 2018 Fumiya Tanaka. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    var presenter: Presenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        presenter = Presenter()
        
        if let scene = SKScene(fileNamed: "GameScene") as? GameScene {
            if let view = self.view as! SKView? {
                scene.presenter = presenter
                view.presentScene(scene)
            }
        }
    }
    
    override var shouldAutorotate: Bool {
        return true
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .landscape
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
}
