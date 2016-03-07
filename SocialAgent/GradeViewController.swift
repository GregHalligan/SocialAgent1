//
//  GradeViewController.swift
//  SocialAgent
//
//  Created by Corey on 3/7/16.
//  Copyright © 2016 TequillaMockingbird. All rights reserved.
//

import UIKit

class GradeViewController: UIViewController {
    
    
    @IBOutlet weak var textFromPost: UITextView!
    
    var copyOfPost: String!

    override func viewDidLoad() {
        textFromPost.text = copyOfPost
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
