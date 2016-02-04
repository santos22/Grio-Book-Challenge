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
        
        readFileNames()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func readFileNames() {
        // iterate through directory of html files and add to array
        let filemanager:NSFileManager = NSFileManager()
        let files = filemanager.enumeratorAtPath("/Users/santossolorzano/Desktop/challenge-books")
        while let file = files?.nextObject() {
            htmlFiles.append(file as! String)
        }
        
        // remove .DS_Store file name
        htmlFiles.removeAtIndex(0)
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return htmlFiles.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = bookTableView.dequeueReusableCellWithIdentifier("BookCell", forIndexPath: indexPath)
        let book = htmlFiles[indexPath.row]
        cell.textLabel!.text = book
        
        return cell
    }

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let cell = sender as! UITableViewCell
        let indexPath = bookTableView.indexPathForCell(cell)
        
        let serverUrl = "http://127.0.0.1:5000/uploads/"
        let serverSuffix = htmlFiles[indexPath!.row]
        
        let url = serverUrl + serverSuffix
        
        let readingScreenViewController = segue.destinationViewController as! ReadingScreenViewController
        readingScreenViewController.webviewUrl = url
        
        bookTableView.deselectRowAtIndexPath(indexPath!, animated: true)
    }

}
