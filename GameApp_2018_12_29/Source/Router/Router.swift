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
    func route<T: UIViewController>(to: String, storyBoard: String) -> T
}

protocol DataPasser {
    var dataStore: DataStore? { get set }
}

protocol DataReciever {
    var dataStore: DataStore? { get }
}

struct DataStore {
    
}

class Router<V: UIViewController>: RouteToScene, DataReciever {
    
    weak var viewController: V?
    
    var dataStore: DataStore?
    
    init(viewController: V) {
        self.viewController = viewController
    }
    
    func route<T>(to: String, storyBoard: String) -> T where T: UIViewController {
        let vc = UIStoryboard(name: storyBoard, bundle: nil).instantiateViewController(withIdentifier: to) as! T
        
        return vc
        
    }
    
}
