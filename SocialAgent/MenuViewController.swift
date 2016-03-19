//
//  MenuViewController.swift
//  SocialAgent
//
//  Created by Capstone on 3/18/16.
//  Copyright © 2016 TequillaMockingbird. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    let transitionManager = MenuTransitionManager()

    @IBOutlet weak var makePost: UIButton!
    
    @IBOutlet weak var enterCode: UIButton!
    
    @IBOutlet weak var pendingPosts: UIButton!
    
    @IBOutlet weak var findReviewer: UIButton!
    
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
