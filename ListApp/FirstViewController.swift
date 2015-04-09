//
//  FirstViewController.swift
//  ListApp
//
//  Created by 200235076 on 2015-04-09.
//  Copyright (c) 2015 200235076. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

}

