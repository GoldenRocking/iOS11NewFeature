//
//  ViewController.swift
//  NewFeatureIniOS11_swift
//
//  Created by guoruiqing on 2017/6/20.
//  Copyright © 2017年 xhhl. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var dataArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "iOS11 New Feature"
        dataArray = ["1.Asserts_Color_Set","2.Round_Corner"];
        
        let tb = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height - 64), style: .plain)
        tb.delegate = self
        tb.dataSource = self
        tb.separatorStyle = .none
        self.view.addSubview(tb);
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cellID = "cellid"
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: cellID)
        cell.textLabel?.text = dataArray[(indexPath as NSIndexPath).row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        switch (indexPath as NSIndexPath).row {
        case 0:
            self.navigationController?.pushViewController(ColorSetViewController(), animated: true)
        case 1:
            self.navigationController?.pushViewController(RoundCornerViewController(), animated: true)
            
        default:
            break
        }
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

