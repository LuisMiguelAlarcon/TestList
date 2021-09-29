//
//  SportmenListVM.swift
//  HastenSport
//
//  Created by Luis Miguel on 29/9/21.
//

import Foundation
import Alamofire

class SportmenListVM: ObservableObject
{
    let url:URL! = URL(string: "https://myjson.dit.upm.es/api/bins/1e5i")

    @Published var sportMens = SportsMen()

    init() {
        
    }

    func fetchData()
    {
        AF.request(url).responseDecodable(of: SportsMen.self) { response in
            if let data = response.value {
                self.sportMens = data
            }
           
        }
    }
}
