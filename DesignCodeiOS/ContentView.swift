//
//  ContentView.swift
//  DesignCodeiOS
//
//  Created by Burak Haşıcı on 8.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0) {
            Spacer()
            Image("Logo 2")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26.0, height: 26.0)
                .cornerRadius(20.0)
            Text("SwiftUI for iOS 16")
                .font(.largeTitle)
                .fontWeight(.bold)
            Text("20 sections - 3hours".uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(.secondary)
            Text("Build an iOS app for iOS 16 with custom layouts and ...")
                .multilineTextAlignment(.leading)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(.secondary)
        }
        .padding(.all, 20.0)
        .frame(height: 350.0)
        .background(Color("Background"))
        .cornerRadius(30.0)
        .shadow(color: Color("Shadow")
            .opacity(0.3), radius: 10, x: 10, y: 10)
        .padding(.horizontal, 20.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
    }
}
