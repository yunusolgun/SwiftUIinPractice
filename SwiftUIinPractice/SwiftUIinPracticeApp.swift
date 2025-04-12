//
//  SwiftUIinPracticeApp.swift
//  SwiftUIinPractice
//
//  Created by yunus olgun on 10.04.2025.
//

import SwiftUI
import SwiftfulRouting

@main
struct SwiftUIinPracticeApp: App {
    var body: some Scene {
        WindowGroup {
            RouterView { _ in
                ContentView()
            }
        }
    }
}
