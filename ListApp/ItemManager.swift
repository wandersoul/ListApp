//
//  ItemManager.swift
//  ListApp
//
//  Created by 200235076 on 2015-04-09.
//  Copyright (c) 2015 200235076. All rights reserved.
//
//
//
//

import UIKit;

var itemMgrs: ItemManager = ItemManager();

struct item{
    var name = "UnNamed"
    var desc = "UnDescribed"
}

class ItemManager: NSObject {

    var items = [item]();
    
    func addTask(name: String, desc: String){
        items.append(item(name: name, desc: desc));
    }
}
