//
//  TaplistApp.swift
//  Taplist
//
//  Created by Gustavo Gonzalez on 6/29/25.
//

import Amplify
import SwiftUI

@main
struct TaplistApp: App {
    init() {
        do {
            try Amplify.configure()
            print("Initialized Amplify");
        } catch {
            print("Could not initialize Amplify: \(error)")
        }
    }

    var body: some Scene {
        WindowGroup {
            NotesView()
        }
    }
}
