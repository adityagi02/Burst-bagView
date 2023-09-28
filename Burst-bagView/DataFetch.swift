//
//  DataFetch.swift
//  Burst-bagView
//
//  Created by Aditya Tyagi  on 28/09/23.
//

import Foundation
import Combine

class ProductData {
    @Published var productData : Welcome?

    var dataSubscription : AnyCancellable?
    
    init() {
        getData()
    }
    
    private func getData() {
        guard let url = URL(string: "https://shubhamlahoti01.github.io/starwars-json-api/adityadata.json") else { return }
        dataSubscription = NetworkingManager.download(url: url)
            .decode(type: Welcome.self , decoder: JSONDecoder())
            .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue:{ [weak self] (returnedData) in
                self?.productData = returnedData
                print(returnedData)
                self?.dataSubscription?.cancel()
            })
    }
}
