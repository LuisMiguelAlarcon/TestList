//
//  SportmenListView.swift
//  HastenSport
//
//  Created by Luis Miguel on 29/9/21.
//


import SwiftUI

struct SportmenListView: View {
    
    @ObservedObject var viewModel: SportmenListVM
    
    var body: some View {

        List(viewModel.sportMens.players, id: \.self) { player in
            HStack {
                RemoteImage(url: player.image)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80, height: 80)
                VStack {
                    Text(player.name)
                        .font(.system(size: 14))
                        .padding(4)
                    Text(player.surname)
                        .font(.system(size: 14))
                        .padding(4)
                }
                Spacer()
                    .frame(width: 40)
               
                
                    
                
            }
        }
        .onAppear {
                viewModel.fetchData()
        }

    }
    
}

