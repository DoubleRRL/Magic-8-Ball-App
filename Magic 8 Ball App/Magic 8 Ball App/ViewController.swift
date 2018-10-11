//
//  ViewController.swift
//  Magic 8 Ball App
//
//  Created by young davvss on 10/11/18.
//  Copyright © 2018 Papi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    func newBallImage() {
        
        // this is our random number generator
        
        randomBallNumber = Int(arc4random_uniform(4))
        
        // this takes our 8 ball image and changes it based on the integer index number that is randomly generated
        
        assetImageView.image = UIImage(named: ballImages[randomBallNumber])
        
    }
    
    let ballImages = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber : Int = 0
    
    @IBOutlet weak var assetImageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        newBallImage()
        
    }
    
    @IBAction func askButtonPressed(_ sender: Any) {
        
        newBallImage()
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        // when the device detects motion ending, such as shaking the phone, it will update our ball image
        
        newBallImage()
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

