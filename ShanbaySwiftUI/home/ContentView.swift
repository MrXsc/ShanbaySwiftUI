//
//  ContentView.swift
//  ShanbaySwiftUI
//
//  Created by Shuo Xiao on 2019/10/27.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import SwiftUI
import UIKit

struct ContentView: View {

    var body: some View {
        NavigationView{
            List{
                CardRoll(articleList: articleData)
                ForEach(0 ..< articleData.count) { item in
                    NavigationLink(destination: MainText(a: articleData[item])) {
                         ArticleItem(a: articleData[item], imageName:"bc\(item%4+1)" )
                    }
                }
            }
            .navigationBarTitle(Text("ShanBay"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
