//
//  RoundCornerViewController.swift
//  NewFeatureIniOS11_swift
//
//  Created by guoruiqing on 2017/6/20.
//  Copyright © 2017年 xhhl. All rights reserved.
//

import UIKit

class RoundCornerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let view = UIView()
        view.clipsToBounds = true
        view.layer.cornerRadius = 10
        view.frame = .init(x: 30, y: 100, width: 200, height: 40)
        view.backgroundColor = UIColor.lightGray
        self.view.addSubview(view)
        
        let view2 = UIView()
        view2.clipsToBounds = true
        view2.layer.cornerRadius = 10
        view2.frame = .init(x: 30, y: 180, width: 200, height: 40)
        view2.backgroundColor = UIColor.lightGray
        view2.layer.maskedCorners = [.layerMaxXMaxYCorner,.layerMinXMaxYCorner]
        self.view.addSubview(view2)
        
        let view3 = UIView()
        view3.clipsToBounds = true
        view3.layer.cornerRadius = 80
        view3.frame = .init(x: 30, y: 250, width: 200, height: 200)
        view3.backgroundColor = UIColor.lightGray
        self.view.addSubview(view3)
        
        UIViewPropertyAnimator.init(duration: 1.0, curve: .linear) {
            view3.layer.cornerRadius = 0
        }.startAnimation()
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
