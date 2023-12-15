//
//  ContentView.swift
//  Weather
//
//  Created by Yurka Babayan on 15.12.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    
                }
            }
            .frame(width: .infinity)
            .background(.linearGradient(colors: [Color("custBlue1"), Color("custBlue2")], startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
}

#Preview {
    ContentView()
}

