//
//  ItemManager.swift
//  ListApp
//
//  Created by 200235076 on 2015-04-09.
//  Created by Marc Anderson
//  Purpose: Item Manager is the way ListApp will store and add data to the main screens list. It includes the
//  structure of the item object, as well as the constructor for the itemManager.
//  create new item on the secondary tab bar item.

//  Copyright (c) 2015 200235076. All rights reserved.
//
//
//
//

import UIKit;

//creating the itemManager to be accessible
var itemMgrs: ItemManager = ItemManager();

//the structure for the task items, a name and description
struct item{
    var name = "UnNamed"
    var desc = "UnDescribed"
}

//the Item Manager constructor
class ItemManager: NSObject {

    var items = [item]();
    
    //addTask() the method to add an item to the list
    func addTask(name: String, desc: String){
        items.append(item(name: name, desc: desc));
    }
}
