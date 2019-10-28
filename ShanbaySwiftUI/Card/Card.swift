//
//  Card.swift
//  ShanbaySwiftUI
//
//  Created by Shuo Xiao on 2019/10/27.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import SwiftUI

struct Card: View {
    var a : Article
    var imageName="bc1"
    var body: some View {
        VStack(alignment:.leading) {
            Image(imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(height : 200)
                .cornerRadius(25)
                .shadow(radius: 10)
            Text("\(a.id).  \(a.nameE)")
                .foregroundColor(Color.primary)
                .bold()
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card(a: articleData[0])
    }
}
