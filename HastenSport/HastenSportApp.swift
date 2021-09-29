//
//  HastenSportApp.swift
//  HastenSport
//
//  Created by Luis Miguel on 29/9/21.
//

import SwiftUI

@main
struct HastenSportApp: App {
    var body: some Scene {
        WindowGroup {
            SportmenListView(viewModel: SportmenListVM())
        }
    }
}
