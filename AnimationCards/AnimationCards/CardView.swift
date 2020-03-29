//
//  CardView.swift
//  AnimationCards
//
//  Created by Liu Chuan on 2020/3/29.
//  Copyright © 2020 Liu Chuan. All rights reserved.
//

import SwiftUI

/// 卡片视图
struct CardView: View {
    let title: String
    let colors: Color
    var body: some View {
        ZStack {
            Rectangle() //在包含矩形的视图框架内对齐的矩形
                .fill(colors)
                .cornerRadius(12)
                .frame(width: 300, height: 150)
            Text(title)
                .font(.largeTitle)  //具有大标题文本样式的字体
                .bold()
                .foregroundColor(.white)
        }.shadow(color: .gray, radius: 10, x: 1, y: 1)
    }
}
