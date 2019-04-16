//
//  ViewController.swift
//  NetWorkingTool
//
//  Created by edz on 2019/4/15.
//  Copyright © 2019年 edz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.sendRequest()
    }
    

    func sendRequest() {
        let param = [String:Any]()
        NetworkingTool.instance.sendRequest1(path: "4/news/latest", parameters: param, StoryModel.self, success: { (datas) in
            if let model = datas {
              let story = model.stories
              let topStories = model.top_stories
                for i in story {
                    print(i.title)
                }
                for i in topStories {
                    print(i.title)
                }
            }
        }) { (error) in
            
        }
    }
}

