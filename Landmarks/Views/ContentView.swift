//
//  ContentView.swift
//  Landmarks
//
//  Created by Shogo Nobuhara on 2021/03/05.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                // マップコンテンツを上端(ノッチ)まで拡張する
                .ignoresSafeArea(edges:.top)
                .frame(height: 300)
            
            CircleImage()
                // オフセットで画像をずらした分、パディングで上げる
                .offset(y: -130)
                .padding(.bottom,-130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("about Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
