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
    
    var router: Router<GameViewController>?
    var interactor: PlayerInteractor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var skView = view as! SKView
        if let scene = SKScene(fileNamed: "GameScene") as? GameScene {
            setup()
            router?.route(scene: scene, view: &skView)
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
    
    private func setup() {
        let vc = self
        let interactor = PlayerInteractor()
        let presenter = Presenter()
        let router: Router<GameViewController> = Router()
        vc.router = router
        vc.interactor = interactor
        router.viewController = vc
        presenter.viewController = vc
        interactor.presenter = presenter
        router.dataStore = interactor
    }    
}
