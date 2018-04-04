//
//  TypeViewController.swift
//  MemorySample
//
//  Created by M.Ike on 2018/04/05.
//  Copyright © 2018年 M.Ike. All rights reserved.
//

import UIKit

class TypeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func testValue() {
        let obj1 = ValueType()
        var obj2 = obj1
        obj2.value = 2
        print(obj1.value)
    }

    func testReference() {
        let obj1 = ReferenceType()
        let obj2 = obj1
        obj2.value = 2
        print(obj1.value)
    }
    
    func test() {
        let obj1 = ReferenceType()

        func test(obj: ReferenceType) {
            obj.value = 2
        }
    
        test(obj: obj1)
    }

}


extension TypeViewController {
    struct ValueType {
        var value = 1
    }
    
    class ReferenceType {
        var value = 1
    }
}
