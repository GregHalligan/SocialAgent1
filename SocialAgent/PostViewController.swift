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
    
    func textViewDidBeginEditing(postText: UITextView) {
        if postText.textColor == UIColor.lightGrayColor() {
            postText.text = nil
            postText.textColor = UIColor.blackColor()
        }
    }
    
    func textViewDidEndEditing(postText: UITextView) {
        if postText.text.isEmpty {
            postText.text = "Placeholder"
            postText.textColor = UIColor.lightGrayColor()
        }
    }
    
    func textView(postText: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
        
        // Combine the textView text and the replacement text to
        // create the updated text string
        let currentText:NSString = postText.text
        let updatedText = currentText.stringByReplacingCharactersInRange(range, withString:text)
        
        // If updated text view will be empty, add the placeholder
        // and set the cursor to the beginning of the text view
        if updatedText.isEmpty {
            
            postText.text = "Placeholder"
            postText.textColor = UIColor.lightGrayColor()
            
            postText.selectedTextRange = postText.textRangeFromPosition(postText.beginningOfDocument, toPosition: postText.beginningOfDocument)
            
            return false
        }
            
            // Else if the text view's placeholder is showing and the
            // length of the replacement string is greater than 0, clear
            // the text view and set its color to black to prepare for
            // the user's entry
        else if postText.textColor == UIColor.lightGrayColor() && !text.isEmpty {
            postText.text = nil
            postText.textColor = UIColor.blackColor()
        }
        
        return true
    }
    
    func textViewDidChangeSelection(postText: UITextView) {
        if self.view.window != nil {
            if postText.textColor == UIColor.lightGrayColor() {
                postText.selectedTextRange = postText.textRangeFromPosition(postText.beginningOfDocument, toPosition: postText.beginningOfDocument)
            }
        }
    }
    

    
    override func viewDidLoad() {
        
        postText.text = "Placeholder"
        postText.textColor = UIColor.lightGrayColor()
        
        postText.becomeFirstResponder()
        
        postText.selectedTextRange = postText.textRangeFromPosition(postText.beginningOfDocument, toPosition: postText.beginningOfDocument)
        
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
