//
//  ContentView.swift
//  Burst-bagView
//
//  Created by Aditya Tyagi  on 22/09/23.
//

import SwiftUI

struct ContentView: View {
    @State var numberOfItems: Int
//    @ObservedObject var dataDm : []
    
    var body: some View {
        ZStack{
            Color.theme.backgroundColor
                .ignoresSafeArea()
            
            /// Content View
            VStack {
                topView
                Spacer(minLength: 20)
                ScrollView {
//                    bagItemView(productName: "Brush", selectedColor: "Red", itemQuantity: 4)
//                    bagItemView(productName: "ToothPaste", selectedColor: "Blue", itemQuantity: 2)
//                    bagItemView(productName: "Whitener", selectedColor: "White", itemQuantity: 10)
//                    bagItemView(productName: "Brush", selectedColor: "Red", itemQuantity: 4)
//                    bagItemView(productName: "ToothPaste", selectedColor: "Blue", itemQuantity: 2)
//                    bagItemView(productName: "Whitener", selectedColor: "White", itemQuantity: 10)
                }
                
            }
            .padding()
        }
        .safeAreaInset(edge: .bottom, spacing: 0) {
            VStack {
                addBtn
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: 50)
            // The background will extend automatically to the edge
            .background(Color.theme.backgroundColor)
            
        }
        
    }
}


extension ContentView {
    var topView : some View {
        HStack(spacing: 0){
            Text("My Bag")
                .font(.title)
                .fontWeight(.bold)
                .foregroundStyle(Color.theme.accent)
            Text(numberOfItems == 0 ? "(Empty)" : "(\(numberOfItems) items)")
                .font(.title2)
            Spacer()
            Button(action: {
                // Add your button action here
            }) {
                Image("x-close") // Use the name of your image asset
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 30, height: 30)
                    .background(Color.theme.backgroundColor)// Adjust the size as needed
            }
        }
    }
}


public var addBtn: some View {
    Button(action: {},label: {
        Text("Send 3 recommendations").font(.headline)
            .fontWeight(.bold)
            .foregroundColor(Color.theme.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.theme.accentYellow)
            .cornerRadius(10)
    }).padding(20)
}

public var addAllBtn: some View {
    VStack{
        Button(action: {},label: {
            Text("+ Add All").font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color.theme.accent)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.theme.reverseAccentColor)
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .inset(by: 0)
                        .stroke(Color.black, lineWidth: 0.4)
                )
            
        }).padding(.top, 20)
            .padding(.leading, 20)
            .padding(.trailing, 20)
            .padding(.bottom, -10)
        
        Button(action: {},label: {
            Text("Send 3 recommendations").font(.headline)
                .fontWeight(.bold)
                .foregroundColor(Color.theme.purple)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.theme.accentYellow)
                .cornerRadius(10)
        }).padding()
    }
}
