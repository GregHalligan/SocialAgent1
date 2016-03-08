//
//  GradeViewController.swift
//  SocialAgent
//
//  Created by Capstone on 3/7/16.
//  Copyright © 2016 TequillaMockingbird. All rights reserved.
//

import UIKit

class GradeViewController: UIViewController {
    
    
    @IBOutlet weak var textFromPost: UITextView!
    @IBOutlet weak var total: UILabel!
    
    var copyOfPost: String!
    
    override func viewDidLoad() {
        textFromPost.text = copyOfPost
        total.text = String(weightedTotal)
        super.viewDidLoad()
        
        
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
