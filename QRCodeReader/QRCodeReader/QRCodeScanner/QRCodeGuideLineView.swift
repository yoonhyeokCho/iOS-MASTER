//
//  QRCodeGuideLineView.swift
//  QRCodeReader
//
//  Created by yoonhyeok on 2023/02/17.
//

import SwiftUI

struct QRCodeGuideLineView : View {
    var body: some View {
        GeometryReader{ geometryProxy in
            RoundedRectangle(cornerRadius: 20).stroke(style: StrokeStyle(lineWidth: 10, dash: [11]))
                .frame(width: geometryProxy.size.width / 2, height: geometryProxy.size.height / 3)
                .position(x: geometryProxy.size.width / 2, y: geometryProxy.size.height / 2)
                .foregroundColor(Color.green)
        }
    }
}

struct QRCodeGuideLineView_Previews: PreviewProvider {
    static var previews: some View {
        QRCodeGuideLineView()
    }
}
