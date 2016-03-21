//
//  ViewController.swift
//  SocialAgent
//
//  Created by MU IT Program on 2/22/16.
//  Copyright © 2016 TequillaMockingbird. All rights reserved.
//nope

import UIKit

class ViewController: UIViewController {
    
    @IBAction func unwindToViewController (sender: UIStoryboardSegue){
        self.dismissViewControllerAnimated(true, completion: nil)
        
    }

    @IBOutlet weak var facebookButton: UIImageView!
    @IBOutlet weak var twitterButton: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

