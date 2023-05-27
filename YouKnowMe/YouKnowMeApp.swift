//
//  YouKnowMeApp.swift
//  YouKnowMe
//
//  Created by Hyeonho on 2023/05/24.
//

import SwiftUI

@main
struct YouKnowMeApp: App {
    var vm = Data()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(vm)
        }
    }
    
}
