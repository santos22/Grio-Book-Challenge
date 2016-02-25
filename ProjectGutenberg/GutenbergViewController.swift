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
        
        // load Gutenberg website
        let url = NSURL (string: "http://gutenberg.net.au/");
        let requestObj = NSURLRequest(URL: url!);
        gutenbergWebview.loadRequest(requestObj);

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // typical browser actions
    @IBAction func stop(sender: AnyObject) {
        gutenbergWebview.stopLoading()
    }
    @IBAction func refresh(sender: AnyObject) {
        gutenbergWebview.reload()
    }
    @IBAction func goBack(sender: AnyObject) {
        gutenbergWebview.goBack()
    }
    @IBAction func goForward(sender: AnyObject) {
        gutenbergWebview.goForward()
    }

}
