//
//  ContentView.swift
//  Swift_tutorial_image
//
//  Created by 안준형 on 2022/05/27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("myImage")
                    .frame(height: 100)
                    .offset(y: -2800)
                NavigationLink(destination: MyWebView(url: "https://www.naver.com")) {
                    CircleImageView()
                }
                .edgesIgnoringSafeArea(.all)
                HStack {
                    Text("Naver")
                        .font(.system(size: 30))
                        .padding(10)
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }.padding(50)
                
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
