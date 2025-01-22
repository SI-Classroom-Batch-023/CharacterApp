//
//  CharacterListView.swift
//  CharacterApp
//
//  Created by Jakob Peter on 21.01.25.
//

import SwiftUI

struct CharacterListView: View {
    
    var characters: [Character] = [
        Character(
            name: "Cora",
            motto: "Hoch hinaus...",
            image: "bird",
            color: .blue),
        Character(
            name: "Kai",
            motto: "Jetzt wirds kratzig...",
            image: "cat",
            color: .gray
        ),
        Character(
            name: "Ferdi",
            motto: "Schlau und listig...",
            image: "fox",
            color: .orange
        )
    ]
    
    @State var index: Int = 0
    
    
    var body: some View {
        NavigationStack {
            VStack {
                List(characters, id: \.self) { character in
                    NavigationLink {
                        CharacterDetailView(character: character)
                    } label: {
                        CharacterView(character: character)
                    }
                }
            }
            .navigationTitle("Characters")
        }
    }
}

#Preview {
    CharacterListView()
}
