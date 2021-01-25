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
    var velocity: Double = 100.0
    var gameArea: CGFloat = 410.0
    
    //MARK: - LifeCycle
    override func didMove(to view: SKView) {
        addBackground()
        addFloor()
        addIntro()
        addPlayer()
        moveFloor()
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
        player.zPosition = 4
        player.position = CGPoint(x: 60, y: size.height - gameArea/2)
        
        var playerTextures = [SKTexture]()
        for nameImage in 1...4 {
            playerTextures.append(SKTexture(imageNamed: "player\(nameImage)"))
        }
        let animationAction = SKAction.animate(with: playerTextures, timePerFrame: 0.09)
        let repeatAction = SKAction.repeatForever(animationAction)
        player.run(repeatAction)
        addChild(player)
    }
    
    func moveFloor() {
        let duration = Double(floor.size.width/2)/velocity
        let moveFloorAction = SKAction.moveBy(x: -floor.size.width/2, y: 0, duration: duration)
        let resetAction = SKAction.moveBy(x: floor.size.width/2, y: 0, duration: duration)
        let sequenceAction = SKAction.sequence([moveFloorAction,resetAction])
        let repeatAction = SKAction.repeatForever(sequenceAction)
        floor.run(repeatAction)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        
    }
}
