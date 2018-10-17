//
//  lpWBMainViewController.swift
//  Weibo
//
//  Created by 刘鹏 on 2018/10/17.
//  Copyright © 2018 刘鹏. All rights reserved.
//

import UIKit

// 主控制器
class lpWBMainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
// extension 类似于 OC 的分类， 在Swift中可以切分代码块
// 可以把相近功能的函数， 放在一个 extenstion 中
// 便于代码的维护
// MARK： - 设置界面
extension lpWBMainViewController {
    
    let array = [
        ["clsName": "", "title": "首页", "imageName": ""],
        
    ]
    
    var
    
    ///设置所有的子控件
    private func setupChildController() {
        
    }
    
    /// 使用s字典创建一个字控制器
    ///
    /// - parameter dict : 字典信息[clsName, title, imageName]
    ///
    /// = returns: 子控制器
    private func controller(dict: [String : String]) -> UIViewController {
        
        // 1. 获取字典内容
        guard let clsName = dict["clsName"],
            let title = dict["title"],
            let imageName = dict["imageName"]
            
            else {
            return UIViewController()
        }
        
        // 2. 创建视图控制器
        // 1> 将 clsName 转化成 cls
        let cls = NSClassFromString(Bundle.main().namespace + "." + clsName) as? UIViewController.Type
        
        
        return UIViewController()
    }
}

