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
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image("image-mask")
            VStack(alignment: .leading, spacing: 7) {
                VStack(alignment: .leading, spacing: 0) {
                    Text("\(productName)")
                        .fontWeight(.medium)
                        .foregroundColor(Color.theme.accent)
                        .frame(height: 20, alignment: .bottomLeading)
                    HStack(spacing: 0) {
                        Text("$7.00")
                        .fontWeight(.medium)
                        .foregroundColor(Color.theme.primaryPurple)
                        Image("refresh-cw-05")
                        .frame(width: 24, height: 24)
                        Text("Refill $4/12 weeks")
                            .font(.system(size: 9))
                          .foregroundColor(Color.theme.accent)
                    }
                    .padding(0)
                    .frame(height: 19, alignment: .leading)
                }
                .padding(0)
                .frame(width: 178, alignment: .topLeading)
                
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
                .padding(.vertical, 8)
                .frame(width: 179, alignment: .leading)
                .overlay(
                  Rectangle()
                    .inset(by: 0.25)
                    .stroke(Color.grey, lineWidth: 0.5)
                )
                
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
                .frame(width: 179, alignment: .topLeading)
                
                
            }
            .padding(0)
            .frame(width: 179, alignment: .topLeading)
            
        }
        .padding()
        .background(Color.theme.backgroundColor)
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
