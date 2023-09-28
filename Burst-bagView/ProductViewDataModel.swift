//
//  ProductViewDataModel.swift
//  Burst-bagView
//
//  Created b/Users/adityatyagi/Desktop/Burst-bagView/Burst-bagView/ProductViewDataModel.swifty Aditya Tyagi  on 28/09/23.
//

import Foundation
import Combine


class ProductViewDataModel : ObservableObject  {
    @Published var productData : [Datum] = []
    @Published var dataUM : [Datum] = []
    
    private var cancellable = Set<AnyCancellable>()
    
    private let productDataService = ProductData()
    
    init() {
        addSubscriber()
    }
    
    func addSubscriber() {
        productDataService.$productData
           // .map(filterData)
            .sink{
            [weak self](returnedData) in
                guard let value = returnedData?.data else {
                    return
                }
                self?.productData = value
                
            print(self?.productData)
        }.store(in: &cancellable)
    }
    
//    func filterData(wel : Welcome) -> [Datum] {
//        self?.dataUM = wel.data
//        return dataUM
//    }
}
