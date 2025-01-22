//
//  Character.swift
//  CharacterApp
//
//  Created by Jakob Peter on 21.01.25.
//

import Foundation
import SwiftUI

struct Character: Identifiable, Hashable {
    var id: String = UUID().uuidString
    var name: String
    var motto: String
    var image: String
    var color: Color
}
