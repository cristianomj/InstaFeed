//
//  PhotoDetailsViewController.swift
//  InstaFeed
//
//  Created by Cristiano Miranda on 2/11/16.
//  Copyright © 2016 Cristiano Miranda. All rights reserved.
//

import UIKit

class PhotoDetailsViewController: UIViewController {
    
    @IBOutlet weak var posterImage: UIImageView!
    var post: NSDictionary!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = post["user"] as! NSDictionary
        //let username = user["username"] as! String
        let profilePictureUrl = user["profile_picture"] as! String
        //let postPictures = post["images"] as! NSDictionary
        //let postPicture = postPictures["low_resolution"] as! NSDictionary
        //let postPictureUrl = postPicture["url"] as! String
        
        let profilePictureNSURL = NSURL(string: profilePictureUrl)
        //let postPictureNSURL = NSURL(string: postPictureUrl)
        
        posterImage.setImageWithURL(profilePictureNSURL!)

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
