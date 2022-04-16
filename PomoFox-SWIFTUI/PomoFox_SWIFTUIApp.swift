//
//  PomoFox_SWIFTUIApp.swift
//  PomoFox-SWIFTUI
//
//  Created by dev on 14/04/22.
//

import SwiftUI

@main
struct PomoFox_SWIFTUIApp: App {
    var body: some Scene {
        WindowGroup {
            SplashView(viewModel: SplashViewModel())
        }
    }
}
