//
//  Router.swift
//  GameApp_2018_12_29
//
//  Created by Fumiya Tanaka on 2018/12/29.
//  Copyright © 2018 Fumiya Tanaka. All rights reserved.
//

import Foundation
import SpriteKit

protocol RouteToScene {
    func route(storyboard: String, viewController: String)
    func route(scene: SKScene, view: inout SKView)
}

protocol DataPassing {
    var dataStore: DataStore? { get set }
}

protocol DataStore {
    
    var score: Int { get set }
    var model: Model.ModelType { get set }
}

class Router<V: UIViewController>: RouteToScene, DataPassing {
    
    weak var viewController: V?
    var dataStore: DataStore?
    
    func route(storyboard: String, viewController: String) {
        let nextViewController = UIStoryboard(name: storyboard, bundle: nil).instantiateViewController(withIdentifier: viewController) as! V
        
    }
    
    func route(scene: SKScene, view: inout SKView) {
        view.presentScene(scene)
    }
    
}
