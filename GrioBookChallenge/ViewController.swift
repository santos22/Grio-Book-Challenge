//
//  ViewController.swift
//  GrioBookChallenge
//
//  Created by Santos Solorzano on 2/3/16.
//  Copyright © 2016 santosjs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var htmlFiles: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let serverUrl = "http://127.0.0.1:5000/uploads/"
        
        // iterate through directory of html files and add to array
        let filemanager:NSFileManager = NSFileManager()
        let files = filemanager.enumeratorAtPath("/Users/santossolorzano/Desktop/challenge-books")
        while let file = files?.nextObject() {
            htmlFiles.append(file as! String)
        }
        
        // remove .DS_Store file
        htmlFiles.removeAtIndex(0) // numbers will be [2, 3]
        
        for file in htmlFiles {
            print("File " + file)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

