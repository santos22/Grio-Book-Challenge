//
//  ReadingScreenViewController.swift
//  GrioBookChallenge
//
//  Created by Santos Solorzano on 2/3/16.
//  Copyright © 2016 santosjs. All rights reserved.
//

import UIKit

class ReadingScreenViewController: UIViewController {
    
    var webviewUrl: String?
    @IBOutlet weak var readingWebview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(webviewUrl)
        
        let url = NSURL (string: "http://127.0.0.1:5000/uploads/0608271h.html");
        let requestObj = NSURLRequest(URL: url!);
        readingWebview.loadRequest(requestObj);

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
