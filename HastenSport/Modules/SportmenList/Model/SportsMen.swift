//
//  SportsMen.swift
//  HastenSport
//
//  Created by Luis Miguel on 29/9/21.
//

import Foundation

struct SportsMen: Hashable, Codable {

    
    var type: String
    var title: String
    var players: [Player]
    
    init() {
        type = ""
        title = ""
        players = []
    }
}
