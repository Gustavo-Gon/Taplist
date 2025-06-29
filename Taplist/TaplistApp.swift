//
//  TaplistApp.swift
//  Taplist
//
//  Created by Gustavo Gonzalez on 6/29/25.
//

import Amplify
import AWSCognitoAuthPlugin
import SwiftUI

@main
struct TaplistApp: App {
    init() {
        do {
            try Amplify.add(plugin: AWSCognitoAuthPlugin())
            try Amplify.configure()
            print("Initialized Amplify");
        } catch {
            print("Could not initialize Amplify: \(error)")
        }
    }

    var body: some Scene {
        WindowGroup {
            LandingView()
                .environmentObject(AuthenticationService())
        }
    }
}
