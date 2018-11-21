//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Teris Dangol on 10/31/18.
//  Copyright © 2018 Teris Dangol. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var randomBallIndex: Int = 0 
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    @IBOutlet weak var imageView: UIImageView!
    
    func updateBallImage() {
        randomBallIndex = Int(arc4random_uniform(5))
        
        imageView.image = UIImage(named: ballArray[randomBallIndex])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateBallImage()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
}

