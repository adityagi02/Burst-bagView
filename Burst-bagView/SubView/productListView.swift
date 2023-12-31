//
//  productList.swift
//  Burst-bagView
//
//  Created by Aditya Tyagi  on 27/09/23.
//

import SwiftUI

struct ProductListView: View {
    @State var allProducts = 1
    @ObservedObject var vm : ProductViewDataModel
//    var pd = self.vm.productData
//    let categoryNumber: String
    
//    var body: some View{
//        VStack{
//            ForEach(vm.productData) { data in
//                Text("Category \(data.category ?? "Company Inc" )")
//                    .foregroundColor(.black)
//            }
//        }
//    }
    
    
    
    var body: some View {
        VStack {

            Picker("Picker", selection: $allProducts, content: {
                Text("All Products").tag(1)
                Text("My Favorites").tag(2)
            }).pickerStyle(.segmented).padding(.horizontal)

            ScrollView{
                HStack{
                    ProductListBannerView().productView
                }.padding()

                if (allProducts == 1) {
                    productCategoryList(vm : vm)
                } else {
                    ContentView(numberOfItems: 12)
                }
            }

        }.safeAreaInset(edge: .bottom, spacing: 0) {
            VStack {
                addAllBtn
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: 130)
            // The background will extend automatically to the edge
            .background(Color.theme.backgroundColor)

        }
        .navigationBarHidden(false)
        .navigationTitle("Hurrayyyy")
        .navigationBarTitleDisplayMode(.inline)
                    .toolbar {
                        ToolbarItem(placement: .principal, content: {
                            Text("Recommend Burst")
                                .font(.body)
                                .bold()
                               // .foregroundColor(.labelAsset)
                        })
                        ToolbarItem(placement: .navigationBarTrailing, content: {
                          //  Image(.shoppingCart)
                        })
                        ToolbarItem(placement: .navigationBarLeading, content: {
                            Image("Arrow")
                            .frame(width: 12, height: 20.5)
                            .background(Color(red: 0.22, green: 0, blue: 0.47))
                        })
                    }

    }
}

struct ProductListView_Previews: PreviewProvider {
    var vm = ProductViewDataModel()

    static var previews: some View {
        NavigationView(content: {
            ProductListView(vm: dev.homeVM)
        })
    }
}


struct productCategoryList : View {
    let categoryName = "Two"
    let categoriesNumber = 4
    @ObservedObject var vm : ProductViewDataModel
    
    var body : some View {
        
        VStack{
            ScrollView{
                
                ForEach(vm.productData) { data in
                    ZStack{
                        Color.theme.backgroundColor
                            .ignoresSafeArea()
                        
                        /// Content View
                        VStack {
                            HStack(alignment: .center) {
                                // Display xs/Medium
                                Text("Category \(data.category ?? "Company Inc")")
                                    .font(.title)
                                    .bold()
                                    .frame(alignment: .topLeading)
                                    .foregroundColor(Color.theme.accent)
                                Spacer()
                            }
                            .padding(.horizontal)
                            
                            ForEach(data.categoryProductsData!) { product in
                                bagItemView(productName: "\(product.productDetails![0].name ?? "Company Inc")",productPrice:"\(product.productDetails![0].price)", isFavorite: "\(product.productDetails![0].isFlavour)", selectedColor: "\(product.productDetails![0].color)", appLongDescription: "\(product.productDetails![0].appLongDescription)")
//                                bagItemView(productName: "\(product.productDetails![0].name ?? "Company Inc")", productPrice: "\(product.productDetails![0].price ?? "Company Inc")", isFavorite: Bool, selectedColor: "\(product.productDetails![0].color ?? "Blue")", appLongDescription: "\(product.productDetails![0].appLongDescription ?? "Blue")")
//                                bagItemView(productName: "\(product.productDetails![0].name ?? "Company Inc")", selectedColor: "\(product.productDetails![0].color ?? "Blue")", itemQuantity: 4)
                            }
            //                ScrollView {
                                
//                                bagItemView(productName: "ToothPaste", selectedColor: "Blue", itemQuantity: 2)
//                                bagItemView(productName: "Whitener", selectedColor: "White", itemQuantity: 10)
//                                bagItemView(productName: "Brush", selectedColor: "Red", itemQuantity: 4)
//                                bagItemView(productName: "ToothPaste", selectedColor: "Blue", itemQuantity: 2)
//                                bagItemView(productName: "Whitener", selectedColor: "White", itemQuantity: 10)
            //                }
                        }
                        .padding(.bottom, 10)
                    }
                    
                    Divider()
                }
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
    
    
//    var categoriesView: some View {
//
//    }
}


struct ProductListBannerView {
    var productView : some View {
        VStack(){
            
            GeometryReader { geo in
                VStack(alignment: .leading){
                    HStack{
                        Text("Promo Banner")
                            .foregroundColor(.white)
                            .frame(alignment: .topLeading)
                    }
                    Text("Lorem ipsum dolor sit amet consectetur.")
                        .font(
                            Font.custom("Boing", size: 28)
                                .weight(.bold)
                        )
                        .kerning(0.34)
                        .foregroundColor(.white)
                        .frame(width : geo.size.width * 0.8, alignment: .topLeading)
                    Spacer(minLength: 46)
                    
                    HStack(alignment: .center, spacing: 4) {
                        // Text sm/Regular
                        Button("View this deal", action: {
                            
                        }).frame(height: 20)
                            .font(Font.custom("Boing", size: 14))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.21, green: 0.25, blue: 0.33))
                        Image("arrow-right")
                            .frame(width: 16, height: 16)
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
        .frame(height: 190)
        .background(Color(red: 0.22, green: 0, blue: 0.47))
        .cornerRadius(8)
        .shadow(color: Color(red: 0.06, green: 0.09, blue: 0.16).opacity(0.03), radius: 3, x: 0, y: 4)
        .shadow(color: Color(red: 0.06, green: 0.09, blue: 0.16).opacity(0.08), radius: 8, x: 0, y: 12)
    }
}
