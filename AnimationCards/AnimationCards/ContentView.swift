//
//  ContentView.swift
//  AnimationCards
//
//  Created by Liu Chuan on 2020/3/29.
//  Copyright © 2020 Liu Chuan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    /// 属性：是否被移动
    @State var move: Bool = false
    
    var body: some View {
        
        NavigationView {
            ZStack {    // 深度排列视图布局，使子视图在，垂直屏幕方向p排列
                CardView(title: "Red", colors: .red)
                    .offset(x: 0, y: move ? -500 : -100)
                    .scaleEffect(move ? 1 : 0.75)
                
                CardView(title: "Orange", colors: .orange)
                    .offset(x: 0, y: move ? -400 : -80)
                    .scaleEffect(move ? 1 : 0.80)
                
                CardView(title: "Green", colors: .green)
                    .offset(x: 0, y: move ? -300 : -60)
                    .scaleEffect(move ? 1 : 0.85)
            
                CardView(title: "Purple", colors: .purple)
                    .offset(x: 0, y: move ? -200 : -40)
                    .scaleEffect(move ? 1 : 0.90)
            
                CardView(title: "Blue", colors: .blue)
                    .offset(x: 0, y: move ? -100 : -20)
                    .scaleEffect(move ? 1 : 0.95)       // 缩放比例
            
                CardView(title: "Black", colors: .black)
                    .onTapGesture {
                        // 手势点击时，切换move的值
                        // toggle(): 切换布尔变量的值。
                        // 使用此方法可以将布尔值从true切换为false或从false切换为true。
                        self.move.toggle()
                }
            }
                // 点击后，深度视图布局，垂直方向下移
                .offset(x: 0, y: move ? 150 : 0)
                .animation(.spring())   // 动画效果
                //.navigationBarTitle(Text("Animation-Cards"), displayMode: .large)
        }
        .colorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
