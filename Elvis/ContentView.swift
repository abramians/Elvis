//
//  ContentView.swift
//  Elvis
//
//  Created by Armen Melik-Abramians on 3/23/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = ""
    @State private var image = ""
    
    var body: some View {
        VStack {
            Text("What's So Funny 'Bout")
                .font(.largeTitle)
                .foregroundStyle(.purple)
                .fontWeight(.black)
            
            Spacer()
            Spacer()
            
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 300, maxHeight: 300)
            
            Spacer()
            Text(message)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            
            Spacer()
            Spacer()
            
            HStack {
                Button("Peace") {
                    image = "peacesign"
                    message = "Peace"
                }
                                
                Button("Love") {
                    image = "heart"
                    message = "Love"
                }
                
                Button("Understanding") {
                    image = "lightbulb"
                    message = "Understanding"
                }
                
            }
            .scaledToFit()
            .font(.callout)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        
        .padding()
        
    }
}

#Preview {
    ContentView()
}
