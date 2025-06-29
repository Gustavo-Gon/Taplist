//
//  NoteView.swift
//  Taplist
//
//  Created by Gustavo Gonzalez on 6/29/25.
// https://aws.amazon.com/getting-started/hands-on/build-ios-app-amplify/module-one/



import SwiftUI

struct NoteView: View {
    @State var note: Note

    var body: some View {
        HStack(alignment: .center, spacing: 5.0) {
            VStack(alignment: .leading, spacing: 5.0) {
                Text(note.name)
                    .bold()
                if let description = note.description {
                    Text(description)
                }
            }

            if let image = note.image {
                Spacer()

                Divider()

                Image(systemName: image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 30, height: 30)

            }
        }
    }
}
