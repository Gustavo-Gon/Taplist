//
//  Note.swift
//  Taplist
//
//  Created by Gustavo Gonzalez on 6/29/25.
// https://aws.amazon.com/getting-started/hands-on/build-ios-app-amplify/module-one/


import Foundation

struct Note {
    let id: String
    let name: String
    let description: String?
    let image: String?
    
    init(
        id: String = UUID().uuidString,
        name: String,
        description: String? = nil,
        image: String? = nil
    ) {
        self.id = id
        self.name = name
        self.description = description
        self.image = image
    }
}
