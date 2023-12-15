//
//  MainViewMiniCell.swift
//  Weather
//
//  Created by Yurka Babayan on 16.12.23.
//

import SwiftUI

struct MainViewMiniCell: View {
    var body: some View {
        ZStack {
            VStack {
                Text("12 PM")
                    .font(.system(size: 18))
                    .foregroundStyle(Color.white)
                
                Image(systemName: "cloud.drizzle.fill")
                    .font(.system(size: 25))
                    .foregroundStyle(Color.white)
                    .padding(.vertical, 5)
                
                Text("6°")
                    .font(.system(size: 20))
                    .foregroundStyle(Color.white)
            }
            .padding(.vertical)
            .padding(.horizontal, 5)
            .background(Color("custPurpule"))
            .cornerRadius(50)
        }
        .padding(1)
        .background(Color.white)
        .cornerRadius(50)
        .padding(.horizontal, 5)
    }
}

#Preview {
    MainViewMiniCell()
}
