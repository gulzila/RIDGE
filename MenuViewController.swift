//
//  MenuViewController.swift
//  Ridge
//
//  Created by Tomek Gulik on 2/16/15.
//  Copyright (c) 2015 Tom Gulik. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onPlayTap(sender: AnyObject) {
        performSegueWithIdentifier("playGameSegue", sender: self)
    }
}
