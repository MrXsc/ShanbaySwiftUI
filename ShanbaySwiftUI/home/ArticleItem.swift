//
//  ArticleItem.swift
//  ShanbaySwiftUI
//
//  Created by Shuo Xiao on 2019/10/27.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import SwiftUI

struct ArticleItem: View {
    var a : Article
    var imageName = "bc3"
    var body: some View {
        
        HStack(alignment: .bottom) {
                ZStack {
                    Image(imageName)
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 100,height: 100)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                    Text("\(a.id)")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(Color.primary)
                }.padding(.leading)
            Spacer()
            VStack(alignment:.trailing) {
                    Text(a.nameE)
                        .bold()
                        .padding(.leading,8)
                        .foregroundColor(.primary)
                        .padding(.leading)
                    Text(a.nameC)
                        .foregroundColor(.primary)
            }.padding(.trailing,20)
 
        }
    }
}

struct ArticleItem_Previews: PreviewProvider {
    static var previews: some View {
       // ArticleItem(a: Article(id: 2, nameE: "d", nameC: "we", textMain: "dd"))
        ArticleItem(a: articleData[0])
    }
}
