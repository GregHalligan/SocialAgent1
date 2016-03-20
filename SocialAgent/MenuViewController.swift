//
//  MenuViewController.swift
//  SocialAgent
//
//  Created by Capstone on 3/18/16.
//  Copyright © 2016 TequillaMockingbird. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBAction func unwindToMenuViewController (sender: UIStoryboardSegue){
        //self.dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    let transitionManager = MenuTransitionManager()

    @IBOutlet weak var twitIcon: UIImageView!
    @IBOutlet weak var fbIcon: UIImageView!
    @IBOutlet weak var revIcon: UIImageView!
    @IBOutlet weak var codeIcon: UIImageView!
    @IBOutlet weak var pendingIcon: UIImageView!
    @IBOutlet weak var postIcon: UIImageView!
    @IBOutlet weak var makePost: UIButton!
    @IBOutlet weak var pendingPost: UIButton!
    @IBOutlet weak var revCode: UIButton!
    @IBOutlet weak var findRev: UIButton!
    @IBOutlet weak var fbButton: UIButton!
    @IBOutlet weak var twitButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.transitioningDelegate = self.transitionManager
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
