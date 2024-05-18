//
//  SwiftUI_VideosApp.swift
//  SwiftUI-Videos
//
//  Created by Михаил Беребердин on 18.05.2024.
//

import SwiftUI

@main
struct SwiftUI_VideosApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(videos: VideoList.topTwelve)
        }
    }
}
