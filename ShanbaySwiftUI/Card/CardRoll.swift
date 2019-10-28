//
//  CardRoll.swift
//  ShanbaySwiftUI
//
//  Created by Shuo Xiao on 2019/10/27.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import SwiftUI

struct CardRoll: View {
    var articleList:[Article]
    
    var body: some View {
        VStack(alignment:.leading){
            Text("文章")
                .font(.title)
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(0 ..< articleList.count) { item in
                        NavigationLink(destination: MainText(a: articleData[item])) {
                        Card(a: self.articleList[item], imageName: "bc\(item%4+1)").padding()
                        }
                        
                    }
                }
            }
        }
    }
}

struct CardRoll_Previews: PreviewProvider {
    static var previews: some View {
        CardRoll(articleList: articleData)
    }
}
