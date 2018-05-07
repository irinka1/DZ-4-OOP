//
//  TVset.swift
//  DZ4new
//
//  Created by Ирина on 05.05.2018.
//  Copyright © 2018 Ирина. All rights reserved.
//

import UIKit

class TVset: NSObject {
    var model: String
    var name: String
    var diagonal: Int
    var countOfChannel: Int
    var countOfColor: Int
    private var someDetail : String
    
    init(model: String,
         name: String,
         diagonal: Int,
         countOfChannel : Int,
        countOfColor : Int,
        someDetail : String
        ) {
        
        self.model = model
        self.name = name
        self.diagonal = diagonal
        self.countOfChannel = countOfChannel
        self.countOfColor = countOfColor
        self.someDetail = someDetail
        
    }
    
    override var description: String {
        return "model: \(model); name: \(name); diagonal: \(diagonal); countOfChannel: \(countOfChannel); countOfColor: \(countOfColor)"
    }
    
    func destroy() {
        countOfChannel = 0
        diagonal = 0
        let dropped = String(name.dropLast())
        self.name = dropped
        countOfColor = 0
    }
    
    func improve() {
        countOfChannel += 10
    }
    
    func disimprove() {
        countOfChannel -= 10
        countOfColor -= 5
    }
}
