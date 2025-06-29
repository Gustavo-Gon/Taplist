//
//  NotesView.swift
//  Taplist
//
//  Created by Gustavo Gonzalez on 6/29/25.
// https://aws.amazon.com/getting-started/hands-on/build-ios-app-amplify/module-one/


import SwiftUI

struct NotesView: View {
    @EnvironmentObject private var authenticationService: AuthenticationService
    @State var notes: [Note] = []

    var body: some View {
        NavigationStack{
            List {
                if notes.isEmpty {
                    Text("No notes")
                }
                ForEach(notes, id: \.id) { note in
                    NoteView(note: note)
                }
            }
            .navigationTitle("Notes")
            .toolbar {
                Button("Sign Out") {
                    Task {
                        await authenticationService.signOut()
                    }
                }
            }
        }
    }
}

#Preview {
    NotesView(notes: [
        Note(
            name: "First note",
            description: "This is an example of a long note description that has \nexplicit line breaks.",
            image: "mic"
        ),
        Note(
            name: "Second note",
            description: "This is a short description.",
            image: "phone"
        ),
        Note(
            name: "Third note"
        )
    ])
}
