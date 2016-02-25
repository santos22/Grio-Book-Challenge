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
        
        // load corresponding book url in webview
        if let webviewUrl = self.webviewUrl {
            let url = NSURL (string: webviewUrl);
            let requestObj = NSURLRequest(URL: url!);
            readingWebview.loadRequest(requestObj);
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
