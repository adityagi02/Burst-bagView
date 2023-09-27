//
//  productList.swift
//  Burst-bagView
//
//  Created by Aditya Tyagi  on 27/09/23.
//

import SwiftUI

struct ProductListView: View {
    @State var allProducts = 1
    let categoryNumber: String
    
    var body: some View {
        VStack {
            
            Picker("Picker", selection: $allProducts, content: {
                Text("All Products").tag(1)
                Text("My Favorites").tag(2)
            }).pickerStyle(.segmented).padding(.horizontal)
            
            productView
            
            if (allProducts == 1) {
                productCategoryList().allProductsView
            } else {
                productCategoryList().allProductsView
            }
                
        }
            .navigationBarHidden(false)
            .navigationTitle("Hurrayyyy")
            .navigationBarTitleDisplayMode(.inline)
//            .toolbar {
//                ToolbarItem(placement: .principal, content: {
//                    Text("Recommend Burst")
//                        .font(.bold(17))
//                       // .foregroundColor(.labelAsset)
//                })
//                ToolbarItem(placement: .navigationBarTrailing, content: {
//                  //  Image(.shoppingCart)
//                })
//                ToolbarItem(placement: .navigationBarLeading, content: {
//                    Image("Arrow")
//                    .frame(width: 12, height: 20.5)
//                    .background(Color(red: 0.22, green: 0, blue: 0.47))
//                })
//            }
        
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
//        NavigationView(content: {
            ProductListView( categoryNumber: "One")
//        })
    }
}


struct productCategoryList {
    let categoryName = "Two"
    var allProductsView : some View {
        
            VStack{
                ScrollView{
                    categoriesView
                    Divider()
                    categoriesView
                }
                .padding(.horizontal, 16)
                .padding(.top, 8)
                .padding(.bottom, 16)
            }
    }
}


extension ProductListView {
    var myFavoriteProductListView : some View {
        HStack(alignment: .top) {
            
        }
        .padding(.horizontal, 16)
        .padding(.top, 8)
        .padding(.bottom, 16)
    }
}


extension productCategoryList {

    
    var categoriesView: some View {
        ZStack{
            Color.theme.backgroundColor
                .ignoresSafeArea()
            
            /// Content View
            VStack {
                HStack(alignment: .center) {
                    // Display xs/Medium
                    Text("Category \(categoryName)")
                        .font(.largeTitle)
                        .bold()
                        .padding(.leading)
                      .foregroundColor(Color.theme.accent)
                    Spacer()
                    
                }
                .padding(.horizontal)
                
                
                ScrollView {
                        bagItemView(productName: "Brush", selectedColor: "Red", itemQuantity: 4)
                        bagItemView(productName: "ToothPaste", selectedColor: "Blue", itemQuantity: 2)
                        bagItemView(productName: "Whitener", selectedColor: "White", itemQuantity: 10)
                        bagItemView(productName: "Brush", selectedColor: "Red", itemQuantity: 4)
                        bagItemView(productName: "ToothPaste", selectedColor: "Blue", itemQuantity: 2)
                        bagItemView(productName: "Whitener", selectedColor: "White", itemQuantity: 10)
                }
                
            }
            .padding(.bottom, 10)
        }
    }
}


extension ProductListView {
    var productView : some View {
        VStack(alignment: .leading){
            
            GeometryReader { geo in
                VStack(alignment: .leading){
                    Text("Promo Banner")
                        .font(Font.custom("Boing", size: 15))
                        .foregroundColor(.white)
                        .frame(width: 311, alignment: .topLeading)
                    Text("Lorem ipsum dolor sit amet consectetur.")
                        .font(
                            Font.custom("Boing", size: 28)
                                .weight(.bold)
                        )
                        .kerning(0.34)
                        .foregroundColor(.white)
                        .frame(width : geo.size.width * 0.8, height : 68, alignment: .topLeading)
                    Spacer(minLength: 46)
                    
                    HStack(alignment: .center, spacing: 4) {
                        // Text sm/Regular
                        Button("View this deal", action: {
                            
                        }).font(Font.custom("Boing", size: 14))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.21, green: 0.25, blue: 0.33))
                        Image("arrow-right")
                            .frame(width: 12, height: 12)
                    }
                    .padding(.leading, 10)
                    .padding(.trailing, 6)
                    .padding(.vertical, 2)
                    .background(Color(red: 0.95, green: 0.96, blue: 0.97))
                    .cornerRadius(16)
                    
                }
                .padding(.horizontal, 16)
                .padding(.top, 8)
                
            }

        }
         .padding()
        .frame(height: 190, alignment: .topLeading)
        .background(Color(red: 0.22, green: 0, blue: 0.47))
        .cornerRadius(8)
        .shadow(color: Color(red: 0.06, green: 0.09, blue: 0.16).opacity(0.03), radius: 3, x: 0, y: 4)
        .shadow(color: Color(red: 0.06, green: 0.09, blue: 0.16).opacity(0.08), radius: 8, x: 0, y: 12)
    }
}
