//
//  CharacterView.swift
//  CharacterApp
//
//  Created by Jakob Peter on 21.01.25.
//

import SwiftUI

struct CharacterView: View {
    
    var character: Character
    
    var body: some View {
        HStack {
            Image(character.image)
                .resizable()
                .scaledToFit()
            VStack(alignment: .leading) {
                Text(character.name)
                    .font(.title)
                    .fontWeight(.bold)
                Text(character.motto)
                    .font(.title2)
                    .foregroundStyle(.secondary)
            }
            
           
        }
        .frame(height: 100)
    }
}

#Preview {
    CharacterView(character: Character(name: "Kai", motto: "Katze", image: "cat", color: .gray))
}
