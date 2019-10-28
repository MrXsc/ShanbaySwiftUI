//
//  MainText.swift
//  ShanbaySwiftUI
//
//  Created by Shuo Xiao on 2019/10/27.
//  Copyright © 2019 Derek Xiao. All rights reserved.
//

import SwiftUI

struct MainText: View {
    @State var searchWords:String = "me "
    
    @State var sliderValue = 0.0
    var minimumValue = 0.0
    var maximumvalue = 5.0
    
    var a : Article
    var body: some View {
        List(){
            ZStack(alignment: .bottom) {
                Image("bc\(a.id%4)")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Rectangle()
                    .frame(height: 52)
                    .blur(radius: 20)
                HStack() {
                    Text("\(a.id). ")
                    .foregroundColor(Color(.white))
                    .bold()
                    .font(.largeTitle)
                        .padding(.leading)
                    .padding(.bottom,6)
                    
                    Text(a.nameE)
                    .foregroundColor(Color(.white))
                    .bold()
                    .font(.title)
                        .padding(.bottom,6)
                    Spacer()
                }
                
            }.listRowInsets(EdgeInsets())
            HStack {
                Slider(value: $sliderValue, in: minimumValue...maximumvalue).accentColor(Color("Cslider"))
                Text("\(Int(sliderValue))").font(.title).padding(.leading)
            }
            MainTextView(text: a.textMain, searchString: searchWords)
                .frame(height:500)
                .padding(.top)
            
        }
        .padding(.bottom)
        .edgesIgnoringSafeArea(.top)
        .navigationBarHidden(true)
    }
}

struct MainText_Previews: PreviewProvider {
    static var previews: some View {
        MainText(a: articleData[0])
    }
}
