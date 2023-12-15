//
//  ContentView.swift
//  Weather
//
//  Created by Yurka Babayan on 15.12.23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack(spacing: 3) {
            Text("Montreal")
                .font(.system(size: 40))
                .foregroundStyle(.white)
            
            Text("7°")
                .font(.system(size: 85))
                .fontWeight(.bold)
                .foregroundStyle(.white)
            
            
            Text("Mostly Clear")
                .font(.system(size: 20))
                .foregroundColor(.white.opacity(0.5))
            
            HStack(spacing: 15) {
                Text("H:8")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                
                Text("L:5")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
            }
            
            Image("flash")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 250)
                .padding(.top, 20)
            
            
            VStack {
                HStack {
                    Text("Hourly Forecast")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(.white.opacity(0.5))
                    
                    Spacer()
                    
                    Text("Hourly Forecast")
                        .font(.system(size: 16))
                        .fontWeight(.bold)
                        .foregroundColor(.white.opacity(0.5))
                }
                .padding(.horizontal, 20)
                .padding(.top)
                
                Rectangle()
                    .frame(width: .infinity, height: 1)
                    .foregroundStyle(Color.white.opacity(0.5))
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(1..<10) {_ in 
                            MainViewMiniCell()
                        }
                    }
                    .padding(.leading)
                    .padding(.top)
                }
                .padding(.bottom, 50)
            }
            .frame(width: .infinity)
            .background(.linearGradient(colors: [Color("custPurpule"), Color("custPurpule").opacity(0.95)], startPoint: .bottom, endPoint: .top))
            .cornerRadius(20)
            .padding(.top)
            .shadow(radius: 20)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.linearGradient(colors: [Color("custPurpule"), Color("custPurpule").opacity(0.95)], startPoint: .bottom, endPoint: .top))
    }
}

#Preview {
    MainView()
}

