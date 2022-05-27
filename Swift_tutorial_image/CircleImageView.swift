//
//  CircleImageView.swift
//  Swift_tutorial_image
//
//  Created by 안준형 on 2022/05/27.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
//        Image(systemName: "bolt.circle")
//            .font(.system(size: 200))
//            .foregroundColor(.blue)
//            .shadow(color: Color.gray, radius: 2, x: 0, y: 10)
        Image("myImage")
            .resizable()
            .frame(width: 300, height: 300)
            .aspectRatio(contentMode: .fill)
            .clipShape(Circle())
            .overlay(
                Circle()
                    .stroke(
                        Color.white
                    )
            )
//            .clipped()
            .edgesIgnoringSafeArea(.all)
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}
