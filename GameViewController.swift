//
//  GameViewController.swift
//  Ridge
//
//  Created by Tomek Gulik on 2/16/15.
//  Copyright (c) 2015 Tom Gulik. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    @IBOutlet var robotHero: UIImageView!
    @IBOutlet var AmmoView: UIView!
    @IBOutlet var HideButton: UIButton!
    @IBOutlet var bullet3: UIImageView!
    @IBOutlet var bullet2: UIImageView!
    @IBOutlet var bullet1: UIImageView!
    
    var currPos: CGFloat = 200
    var isHidden: Bool   = false
    var currProtection: Int = 0
    var bulletCount = 3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AmmoView.alpha = 0;
        moveRobot(currPos)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func moveRobot(robotPos: CGFloat)->(){
                UIView.animateWithDuration(1, animations: { () -> Void in
            if(self.isHidden==false){
                self.robotHero.center.x = robotPos
            }
        })
    }
    
    func shootEnemy(buildinPos:CGFloat)->(){
        if(isHidden == true && self.bulletCount > 0){
            println(self.bulletCount)
            if (self.bulletCount == 3) {
                self.bullet1.alpha = 0
            } else if (self.bulletCount == 2) {
                self.bullet2.alpha = 0
            } else if (self.bulletCount == 1) {
                self.bullet3.alpha = 0
            }
        self.bulletCount--
        }
    }
    
    @IBAction func onTapHide(sender: AnyObject) {
        UIView.animateWithDuration(1, animations: { () -> Void in
            println(self.robotHero.center.y)
            if(self.isHidden==false){
                self.robotHero.transform = CGAffineTransformMakeScale(0.5, 0.5)
                    self.AmmoView.alpha = 1;
                    self.HideButton.setTitle("Leave", forState: .Normal);
            } else {
                self.robotHero.transform = CGAffineTransformMakeScale(1, 1)
                    self.AmmoView.alpha = 0;
                    self.HideButton.setTitle("Hide", forState: .Normal);
            }
            self.isHidden = !self.isHidden
            println(self.robotHero.center.y)
        })
        
    }
    
    @IBAction func onHidingBarnTap(sender: AnyObject) {
        moveRobot(60)
    }
    
    @IBAction func onHidingWallTap(sender: AnyObject) {
        moveRobot(170)
    }
    @IBAction func onHidingTreeTap(sender: AnyObject) {
        moveRobot(245)
    }
    @IBAction func onHidingBarrelTap(sender: AnyObject) {
        moveRobot(285)
    }
    @IBAction func onShootWallTap(sender: AnyObject) {
        shootEnemy(60)
    }
    @IBAction func onShootTreeTap(sender: AnyObject) {
        shootEnemy(110)
    }
    @IBAction func onShootBarnTap(sender: AnyObject) {
        shootEnemy(200)
    }
    @IBAction func onShootBarrelTap(sender: AnyObject) {
        shootEnemy(240)
    }
    @IBAction func onEndTurn(sender: AnyObject) {
        println("End Turn")
    }
}
