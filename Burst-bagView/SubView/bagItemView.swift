//
//  bagItemView.swift
//  Burst-bagView
//
//  Created by Aditya Tyagi  on 22/09/23.
//

import SwiftUI

struct bagItemView: View {
    let productName : String
    let selectedColor : String
    let itemQuantity : Int
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        // Complete card
        HStack(alignment: .center) {
            
            // Image
            Image(colorScheme == .dark ?  "image-mask-dark" : "image-mask")
            
            // Item info
            VStack(alignment: .leading, spacing: 7) {
                
                // Upper Half info
                VStack(alignment: .leading, spacing: 0) {
                    
                    Text("\(productName)")
                        .bold()
                        .fontWeight(.medium)
                        .foregroundColor(Color.theme.accent)
                        .frame(height: 20, alignment: .bottomLeading)
                    
                    // Hstack in upper half info
                    HStack(spacing: 0) {
                        Text("$7.00")
                        .foregroundColor(Color.theme.primaryPurple)
                        Image("refresh-cw-05")
                        .frame(height: 24)
                        Text("Refill $4/12 weeks")
                            .font(.system(size: 9))
                          .foregroundColor(Color.theme.accent)
                    }
                    .padding(0)
                    .frame(height: 19, alignment: .leading)
                }
                .padding(0)
                .frame(alignment: .topLeading)
                
                
                Divider()
                HStack(alignment: .center, spacing: 7.73557) {
                    
                    HStack(spacing: 0){
                        
                        Text("Color: ")
                            .font(.system(size: 12))
                            .bold()
                          .foregroundColor(Color.theme.accent)
                        
                        Text("\(selectedColor)")
                            .font(.system(size: 12))
                          .foregroundColor(Color.theme.accent)
                    }
                }
                .padding(.horizontal, 0)
                .frame(alignment: .leading)
                
                Divider()
                
                HStack(alignment: .top, spacing: 8) {
                    HStack(alignment: .center, spacing: 4) {
                        Image(systemName: "minus")
                            .foregroundColor(.black)
                        Text("Qty \(itemQuantity)")
                            .font(.system(size: 13))
                            .frame(width: 36)
                            .fontWeight(.medium)
                          .foregroundColor(.black)
                        Image(systemName: "plus")
                            .foregroundColor(.black)
                    }
                    .padding(8)
                    .frame(height: 32, alignment: .leading)
                    .background(Color.theme.grey)
                    .cornerRadius(4)
                    .overlay(
                      RoundedRectangle(cornerRadius: 4)
                        .inset(by: 0.5)
                        .stroke((Color.theme.grey), lineWidth: 1)
                    )
                    
                    HStack(alignment: .center, spacing: 8) {
                        // Text sm/Medium
                        Text("Remove")
                            .bold()
                            .font(.system(size: 12))
                            .foregroundColor(Color.theme.purple)
                    }
                    .padding(.horizontal, 14)
                    .padding(.vertical, 8)
                    .frame(height: 32, alignment: .center)
                    .background(Color.theme.secondaryPurple)
                    .cornerRadius(4)
                    .shadow(color: Color(red: 0.06, green: 0.09, blue: 0.16).opacity(0.05), radius: 1, x: 0, y: 1)
                    .overlay(
                      RoundedRectangle(cornerRadius: 4)
                        .inset(by: 0)
                        .stroke(Color(red: 1, green: 0.79, blue: 0.29), lineWidth: 0)
                    )
                    
                    
                }
                .padding(0)
                .frame(alignment: .topLeading)
                
                
            }
            .padding(0)
            .frame(alignment: .topLeading)
            
        }
        .background(Color.theme.AccentBW)
        .cornerRadius(8)
        .overlay(
          RoundedRectangle(cornerRadius: 8)
            .inset(by: 0.5)
            .stroke(Color.theme.grey)
        )
    }
}



struct bagItemView_Previews: PreviewProvider {
    static var previews: some View {
        bagItemView(productName: "Product Name", selectedColor: "Blue", itemQuantity: 2)
            .scaledToFill()
    }
}
