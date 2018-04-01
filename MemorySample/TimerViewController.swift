//
//  TimerViewController.swift
//  MemorySample
//
//  Created by M.Ike on 2018/04/01.
//  Copyright © 2018年 M.Ike. All rights reserved.
//

import UIKit

class TimerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        print("viewDidLoad")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    deinit {
        print("deinit")
    }
    
    func dummy() {
        print("called dummy")
    }

    func test1() {
        print("DispatchQueue.main.asyncAfter start")
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            print("DispatchQueue.main.asyncAfter end")
        }
    }
    
    func test2() {
        print("DispatchQueue.main.asyncAfter [self] start")
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.dummy()
            print("DispatchQueue.main.asyncAfter [self] end")
        }
    }

    func test3() {
        print("DispatchQueue.main.asyncAfter [weak self] start")
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [weak self] in
            self?.dummy()
            print("DispatchQueue.main.asyncAfter [weak self]  end")
        }
    }
}
