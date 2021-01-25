//
//  GameViewController.swift
//  FlappyDragon
//
//  Created by Bruno Silva on 24/01/21.
//

import UIKit
import SpriteKit
import GameplayKit


//MARK: Creating a reference a view
var stage: SKView!

class GameViewController: UIViewController {
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        stage = view as! SKView
        stage.ignoresSiblingOrder = true
        presentScene()
    }
    
    //MARK: - Functions
    func presentScene() {
        let scene = GameScene(size: CGSize(width: 320, height: 568)) //Size of the scene (iPhone 5)
        scene.scaleMode = .aspectFill //Fill the screen
        stage.presentScene(scene) //Showing the scene
     }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
