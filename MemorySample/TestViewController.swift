//
//  TestViewController.swift
//  MemorySample
//
//  Created by M.Ike on 2018/04/10.
//  Copyright © 2018年 M.Ike. All rights reserved.
//

import UIKit


class MyClass {
    var closure: (() -> Void)? = nil
    
    func test() {
        closure = { [weak self] in
            self?.method()
        }
        self.test()
    }
    
    func method() {
        // 何かの処理
    }
}

class HTMLElement {
    
    let name: String
    let text: String?
    
    lazy var asHTML: () -> String = { [weak self] in
        if let text = self?.text {
            return "<\(self?.name)>\(text)</\(self?.name)>"
        } else {
            return "<\(self?.name) />"
        }
    }
    
    init(name: String, text: String? = nil) {
        self.name = name
        self.text = text
    }
    
    deinit {
        print("\(name) is being deinitialized")
    }
    
}

class TestViewController: UIViewController {
    let session = URLSession(configuration: .default)
    var call: () -> Void = {
        print("a")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var h: HTMLElement? = HTMLElement(name: "a")
        print(h?.asHTML())
        h = nil
        
        var a: AsyncTask? = AsyncTask()
        
        a?.run()
        
        a = nil
    }
    
    deinit {
        print("deinit")
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
