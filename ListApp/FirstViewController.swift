//
//  FirstViewController.swift
//  ListApp
//
//  Created by 200235076 on 2015-04-09.
//  Created by Marc Anderson
//  Purpose: FirstViewController displays the list of tasks to the user. It also contains the ability to delete
//  items from the list through the swipe right guesture. Users will be redirected here after completing the
//  create new item on the secondary tab bar item.
//  Copyright (c) 2015 200235076. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //outlet to the table
    @IBOutlet var tblItems: UITableView!

    //generated function
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //generated function
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //Update the list when view returns
    override func viewWillAppear(animated: Bool) {
        tblItems.reloadData();
    }
    
    
    //required function for UITableViewDataSource
    //counts the number of rows
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return itemMgrs.items.count;
    }
    //required function for UITableViewDataSource
    //sets the text for each item
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell: UITableViewCell = UITableViewCell(style: UITableViewCellStyle.Subtitle, reuseIdentifier: "default" )
        //sets the text Label text
        cell.textLabel?.text = itemMgrs.items[indexPath.row].name
        //sets the subititle description for each item
        cell.detailTextLabel?.text = itemMgrs.items[indexPath.row].desc
            
        return cell;
    }
    
    //Providing delete functionallity for our table, from UITableViewDelegate
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            itemMgrs.items.removeAtIndex(indexPath.row)
            tblItems.reloadData()
        }
    }
    
    

}

