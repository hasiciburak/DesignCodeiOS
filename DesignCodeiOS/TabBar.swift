//
//  TabBar.swift
//  DesignCodeiOS
//
//  Created by Burak Haşıcı on 26.08.2023.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            ContentView()
                .frame(maxWidth: .infinity, maxHeight:.infinity)
            HStack{
                Spacer()
                ForEach(tabItems) { item in
                    VStack (spacing: 0){
                        Image(systemName: item.icon)
                            .symbolVariant(.fill)
                            .font(.body.bold())
                            .frame(width: 80,height: 29)
                        Text(item.text)
                            .font(.caption2)
                            .lineLimit(1)
                    }
                }
                .frame(maxWidth: .infinity)
            }
            .padding(.horizontal, 8)
            .padding(.top, 14)
            .frame(height: 88, alignment: .top)
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 34, style: .continuous))
            .strokeStyle(cornerRadius: 34)
            .frame(maxHeight: .infinity, alignment: .bottom)
            .ignoresSafeArea() // For Spacing and Taking Area As Much As Possibleeks
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
