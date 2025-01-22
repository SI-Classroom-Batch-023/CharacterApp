//
//  CharacterView.swift
//  CharacterApp
//
//  Created by Jakob Peter on 21.01.25.
//

import SwiftUI

struct CharacterDetailView: View {
    
    var character: Character
    
    var body: some View {
        VStack {
            Image(character.image)
                .resizable()
                .scaledToFit()
            Text(character.name)
                .font(.title)
                .fontWeight(.bold)
            Text(character.motto)
                .font(.title2)
                .foregroundStyle(.secondary)
           
        }
    }
}

#Preview {
    CharacterDetailView(character: Character(name: "Kai", motto: "Katze", image: "cat", color: .gray))
}
