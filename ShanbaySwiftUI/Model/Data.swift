//
//  Data.swift
//  TheAvengers
//
//  Created by Shuo Xiao on 2019/10/27.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import Foundation
import CoreLocation
import UIKit
import SwiftUI


let path = Bundle.main.path(forResource: "words", ofType: "plist")
// 加载 plist 文件
let words:NSArray? = NSArray(contentsOfFile: path!)

let articleData:[Article] =  load("article.json")

func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
