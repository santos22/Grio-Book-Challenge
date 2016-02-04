//
//  GutenbergViewController.swift
//  GrioBookChallenge
//
//  Created by Santos Solorzano on 2/4/16.
//  Copyright © 2016 santosjs. All rights reserved.
//

import UIKit

class GutenbergViewController: UIViewController {

    @IBOutlet weak var gutenbergWebview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL (string: "http://gutenberg.net.au/");
        let requestObj = NSURLRequest(URL: url!);
        gutenbergWebview.loadRequest(requestObj);

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
