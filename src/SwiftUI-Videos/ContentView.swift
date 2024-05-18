//
//  ContentView.swift
//  SwiftUI-Videos
//
//  Created by Михаил Беребердин on 18.05.2024.
//

import SwiftUI

struct ContentView: View {
    
    var videos: [Video] = []
    
    var body: some View {
        NavigationStack {
            List(videos) { video in
                HStack {
                    
                    Image(video.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 90.0)
                        .cornerRadius(8)
                    
                    Spacer().frame(width: 16)
                    
                    VStack(alignment: .leading) {
                        
                        Text(video.title)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.75)
                        
                        Spacer().frame(height: 5)
                        
                        Text(video.uploadDate)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
            }.navigationTitle(Text("Sean's Videos"))
        }
    }
}

#Preview {
    ContentView(videos: VideoList.topTwelve)
}
