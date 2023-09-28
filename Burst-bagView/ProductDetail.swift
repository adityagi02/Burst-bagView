//
//  ProductDetail.swift
//  Burst-bagView
//
//  Created by Aditya Tyagi  on 28/09/23.
//

//import Foundation
//// MARK: - Welcome
//struct Welcome: Codable {
//    let data: [Datum]
//}
//// MARK: - Datum
//struct Datum: Codable {
//    let category: String
//}
//

import Foundation

// MARK: - Welcome
struct Welcome: Codable {
    let data: [Datum]?
}

// MARK: - Datum
struct Datum: Codable, Identifiable {
    var id : String = UUID().uuidString
    let category: String?       //+
    let categoryProductsData: [CategoryProductsDatum]?
    
    enum CodingKeys: String, CodingKey {
        case category = "category"
        case categoryProductsData = "categoryProductsData"
    }
}

// MARK: - CategoryProductsDatum
struct CategoryProductsDatum: Codable, Identifiable {
    
    let id: Double?
    let productDetails: [ProductDetail]?    //+
    let variantsSub: [Double]?

    enum CodingKeys: String, CodingKey {
        case id = "product_id"
        case productDetails = "product_details"
        case variantsSub = "variants_sub"
    }
}

// MARK: - ProductDetail
struct ProductDetail: Codable {
    let id: Double?   //+
    let name, frontendURL, price, specialPrice: String?   //+
    let retailPrice: String?   //+
    let sku: String?
    let subscriptionPrice, anualSubscriptionPrice, subscriptionSpecialPrice: String?
    let isSubscription: Double?
    let inSale, isOutOfStock: Double?
    let appShortDescription, appLongDescription: String?
    let visibility: Double?
    let subscriptionLabel, imageURL: String?   //+
    let appImage: AppImage?   //+
    let color, aroma, colorName: String?   //+
    let isFlavour: Bool?
    let images: [String]?   //+
    let specialSubscriptionLabel: String?

    enum CodingKeys: String, CodingKey {
        case id, name
        case frontendURL = "frontend_url"
        case price
        case specialPrice = "special_price"
        case retailPrice = "retail_price"
        case sku
        case subscriptionPrice = "subscription_price"
        case anualSubscriptionPrice = "anual_subscription_price"
        case subscriptionSpecialPrice = "subscription_special_price"
        case isSubscription = "is_subscription"
        case inSale = "in_sale"
        case isOutOfStock = "is_out_of_stock"
        case appShortDescription = "app_short_description"
        case appLongDescription = "app_long_description"
        case visibility
        case subscriptionLabel = "subscription_label"
        case imageURL = "image_url"
        case appImage, color, aroma, colorName, isFlavour, images
        case specialSubscriptionLabel = "special_subscription_label"
    }
}

// MARK: - AppImage
struct AppImage: Codable {
    let mainImage, thumbImage: String?

    enum CodingKeys: String, CodingKey {
        case mainImage = "main_image"
        case thumbImage = "thumb_image"
    }
}
