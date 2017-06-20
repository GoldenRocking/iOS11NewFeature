//
//  ColorSetViewController.swift
//  NewFeatureIniOS11_swift
//
//  Created by guoruiqing on 2017/6/20.
//  Copyright © 2017年 xhhl. All rights reserved.
//

import UIKit

class ColorSetViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = UIColor(named:"grass")
        
        let normal = UIImageView(image:UIImage.init(named:"cluck"))
        normal.center = .init(x: 100, y: 100)
        view.addSubview(normal)
        
        let big = UIImageView.init(image: UIImage(named:"cluck"))
        big.frame = .init(x: 100, y: 250, width: normal.bounds.size.width * 2, height: normal.bounds.size.height * 2)
        view.addSubview(big)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
