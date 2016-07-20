//
//  ViewController.swift
//  tableViewTest
//
//  Created by jerry on 16/7/20.
//  Copyright © 2016年 jerry. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    //DataSource和Delegate都需要和View Controller关联
    let myDataA = NSArray(objects: "jerry","lq","boy")
    let myDataB = NSArray(objects: "xiaomin","liuying","miao")
    let myDataC = NSArray(objects: "cat","dog","pig")
    let myData = NSArray(objects: "handsomboy","beautiful girl","pets")
    
    //这个事optional方法，当不使用的时候默认节数为1
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return myData.count
    }
    
    //设置行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return myDataA.count
    }
    
    //设置表单元的内容，单元格实例化
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: .Default, reuseIdentifier: "reuseIdentfier")
        if(indexPath.section==0){
            cell.textLabel!.text = "\(myDataA.objectAtIndex(indexPath.row))"
        }
        if(indexPath.section==1){
            cell.textLabel!.text = "\(myDataB.objectAtIndex(indexPath.row))"
        }
        if(indexPath.section==2){
            cell.textLabel!.text = "\(myDataC.objectAtIndex(indexPath.row))"
        
        }
        cell.imageView?.image = UIImage(named: "1.png")
        return cell
    }
    
    //在页眉添加名字
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String?{
        return "\(myData.objectAtIndex(section))"
    }
    
}
