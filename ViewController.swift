//
//  ViewController.swift
//  FirstApp
//
//  Created by Akshay Nanda on 2017-01-07.
//  Copyright © 2017 Akshay Nanda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label8: UILabel!
    
    
    var score:Int = 0
    
    func didScore(points:Int )
    {
        score = score + points
        label1.text = "Score: \(score)"
        
    }
    
    @IBAction func clicks(_ sender: UIButton) {
        score = score + 1
        if (score >= 5)
        {
            label8.text = "You have reached 5 clicks"
            
        }
        if (score >= 10)
        {
            label8.text = "Fuck YOu stop Clicking Me"
        }
        return
        
    }
    @IBAction func alien(_ sender: UIButton) {
        
        self.didScore(points: 1)
    }
    
    
    @IBAction func ship(_ sender: UIButton) {
        didScore(points: 5)
    }

    @IBAction func crash(_ sender: UIButton) {
        
        didScore(points: -3)
        
        if (score <= 0){
         label1.text = "You Lose. Come Again"}
    }
    
    @IBAction func start(_ sender: UIButton) {
        
        label1.text = "let the game begin"
        
        
    }
    
    
    
    override func viewDidLoad() // Main Function (Take it bitches)
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
