//
//  ReferenceCycle.swift
//  MemorySample
//
//  Created by M.Ike on 2018/04/08.
//  Copyright © 2018年 M.Ike. All rights reserved.
//

import Foundation

class Chiken {
    var egg: Egg!
}

class Egg {
    var parent: Chiken!
}

func testReferenceCycle() {
    let 🐓 = Chiken()
    let 🥚 = Egg()
    🐓.egg = 🥚
    🥚.parent = 🐓
}

