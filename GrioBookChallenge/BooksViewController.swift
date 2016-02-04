//
//  BooksViewController.swift
//  GrioBookChallenge
//
//  Created by Santos Solorzano on 2/3/16.
//  Copyright © 2016 santosjs. All rights reserved.
//

import UIKit

class BooksViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var htmlFiles: [String] = []
    @IBOutlet weak var bookTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bookTableView.dataSource = self
        bookTableView.delegate = self
        
        let serverUrl = "http://127.0.0.1:5000/uploads/"
        
        // iterate through directory of html files and add to array
        let filemanager:NSFileManager = NSFileManager()
        let files = filemanager.enumeratorAtPath("/Users/santossolorzano/Desktop/challenge-books")
        while let file = files?.nextObject() {
            htmlFiles.append(file as! String)
        }
        
        // remove .DS_Store file name
        htmlFiles.removeAtIndex(0) // numbers will be [2, 3]
        
        for file in htmlFiles {
            print("File " + file)
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = bookTableView.dequeueReusableCellWithIdentifier("BookCell", forIndexPath: indexPath)
        cell.textLabel!.text = "row \(indexPath.row)"
        print("row \(indexPath.row)")
        return cell
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
