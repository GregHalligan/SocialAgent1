//
//  PostViewController.swift
//  SocialAgent
//
//  Created by MU IT Program on 3/3/16.
//  Copyright © 2016 TequillaMockingbird. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {
    
    
    @IBOutlet weak var postText: UITextView!
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showGradeVC" {
            
            let vc = segue.destinationViewController as! GradeViewController
            
            vc.copyOfPost = postText.text
            
        }
    }
    
    static var sharedPost: PostViewController?
    
    
    //testing
    func getPost() -> UITextView {
        return postText
    }
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        PostViewController.sharedPost = self

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
