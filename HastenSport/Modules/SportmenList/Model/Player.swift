//
//  Player.swift
//  HastenSport
//
//  Created by Luis Miguel on 29/9/21.
//

import Foundation

struct Player: Hashable, Codable{
    var image: String
    var surname: String
    var name: String
    
    init() {
        image = ""
        surname = ""
        name = ""
    }
}
