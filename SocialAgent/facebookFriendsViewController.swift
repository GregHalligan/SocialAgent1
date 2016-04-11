//
//  facebookFriendsViewController.swift
//  SocialAgent
//
//  Created by MU IT Program on 4/11/16.
//  Copyright © 2016 TequillaMockingbird. All rights reserved.
//

import Foundation
import Accounts
import Social
import FBSDKCoreKit
import UIKit
import FBSDKShareKit

extension facebookFriendsViewController: FBSDKAppInviteDialogDelegate{
    func appInviteDialog(appInviteDialog: FBSDKAppInviteDialog!, didCompleteWithResults results: [NSObject : AnyObject]!) {
        print("It worked")
    }
    func appInviteDialog(appInviteDialog: FBSDKAppInviteDialog!, didFailWithError error: NSError!) {
        print("failure")
    }
}

class facebookFriendsViewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let content = FBSDKAppInviteContent()
        content.appLinkURL = NSURL(string: "itms://itunes.apple.com/us/app/facebook-messenger/id454638411?mt=8")
        content.appInvitePreviewImageURL = NSURL(string: "itms://itunes.apple.com/us/app/facebook-messenger/id454638411?mt=8")
        // Old Way, now depreciated :
        //FBSDKAppInviteDialog.showFromViewController(self, withContent: content, delegate: self)
        //New way :
        FBSDKAppInviteDialog.showFromViewController(self, withContent: content, delegate: self)
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
