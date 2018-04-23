//
//  ViewController.swift
//  URLSessionDemo
//
//  Created by gdcp on 2018/4/23.
//  Copyright © 2018年 gdcp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //1、根据URL字符串创建一个URL实例
        let url = URL(string: "http://a1.gdcp.cn")
        //2、根据创建的URL实例，创建一个URLRequest实例（要求为默认值）
        let request = URLRequest(url: url!)
        //3、创建URLSession会话实例 可以使用URLSession.shared返回一个共享的会话，该会话使用全局的Cache、Cookie和证书
        //4、使用创建好的URLSession实例和URLrequset实例创建一个URLSessionTask
        let dataTask = URLSession.shared.dataTask(with: request){data,responese,error in
            if error != nil {
            print(error.debugDescription)
            }else{
                let str = String(data: data!, encoding: String.Encoding.ascii)
                print(str!)
                
            }
        }as URLSessionTask
        dataTask.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

