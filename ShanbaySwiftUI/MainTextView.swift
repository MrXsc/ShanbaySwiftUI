//
//  MainText.swift
//  ShanbaySwiftUI
//
//  Created by Shuo Xiao on 2019/10/27.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import SwiftUI
import UIKit

struct MainTextView: UIViewRepresentable {
    
    var text : String = "dada I dada dada apple"
    var searchString : String = "I |apple "
    
    
    func makeUIView(context: Context) -> UITextView {
        UITextView(frame: .zero)
       }
    func updateUIView(_ view: UITextView, context: Context) {
        
        let baseString = text
        let attributed = NSMutableAttributedString(string: baseString)
        do
        {
            let array = NSArray(objects: "interstellar","preservation")
            let filePath:String = NSHomeDirectory() + "/Documents/words0.plist"
            array.write(toFile: filePath, atomically: true)
            
            let regex = try! NSRegularExpression(pattern: searchString,options: .caseInsensitive)
            
            for match in regex.matches(in: baseString, options: NSRegularExpression.MatchingOptions(), range: NSRange(location: 0, length: baseString.count)) as [NSTextCheckingResult] {
                attributed.addAttribute(NSAttributedString.Key.backgroundColor, value: UIColor.yellow, range: match.range)
            }
            //view.textColor = UIColor(named: "Cdark")
            view.attributedText = attributed
           // self.textViewMain.attributedText = attributed
        }
        
    }
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello World!"/*@END_MENU_TOKEN@*/)
//    }
}

struct MainTextView_Previews: PreviewProvider {
    static var previews: some View {
        MainTextView()
    }
}
