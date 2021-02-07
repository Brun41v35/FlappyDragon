//
//  GameViewController.swift
//  FlappyDragon
//
//  Created by Bruno Silva on 24/01/21.
//

import UIKit
import SpriteKit
import GameplayKit
import AVFoundation

class GameViewController: UIViewController {
    
    //MARK: Variables
    var stage: SKView! //Creating a reference a view
    var musicPlayer: AVAudioPlayer!
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        stage = view as? SKView
        stage.ignoresSiblingOrder = true
        presentScene()
        playMusic()
    }
    
    //MARK: - Functions
    func playMusic() {
        if let musicURL = Bundle.main.url(forResource: "music", withExtension: "m4a") {
            musicPlayer = try! AVAudioPlayer(contentsOf: musicURL)
            musicPlayer.numberOfLoops = -1
            musicPlayer.volume = 0.4
            musicPlayer.play()
        }
    }
    
    func presentScene() {
        let scene = GameScene(size: CGSize(width: 320, height: 568)) //Size of the scene (iPhone 5)
        scene.scaleMode = .aspectFill //Fill the screen
        scene.gameViewController = self
        stage.presentScene(scene, transition: .doorsOpenHorizontal(withDuration: 0.3))
     }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
