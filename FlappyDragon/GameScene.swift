//
//  GameScene.swift
//  FlappyDragon
//
//  Created by Bruno Silva on 24/01/21.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    //MARK: - Variables
    var floor: SKSpriteNode!
    var intro: SKSpriteNode!
    var player: SKSpriteNode!
    var gameArea: CGFloat = 410.0
    
    //MARK: - LifeCycle
    override func didMove(to view: SKView) {
        addBackground()
        addFloor()
        addIntro()
        addPlayer()
    }
    
    //MARK: - Functions
    func addBackground() {
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: self.size.width/2, y: self.size.height/2)
        background.zPosition = 0
        addChild(background)
    }
    
    func addFloor() {
        floor = SKSpriteNode(imageNamed: "floor")
        floor.zPosition = 2
        floor.position = CGPoint(x: floor.size.width/2, y: size.height - gameArea - floor.size.height/2)
        addChild(floor)
    }
    
    func addIntro() {
        intro = SKSpriteNode(imageNamed: "intro")
        intro.zPosition = 3
        intro.position = CGPoint(x: size.width/2, y: size.height - 210)
        addChild(intro)
    }
    
    func addPlayer() {
        player = SKSpriteNode(imageNamed: "player1")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
}
