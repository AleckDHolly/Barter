//
//  ContentView.swift
//  Barter
//
//  Created by Aleck (Pro) on 2024-05-14.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    HStack {
                        Image(systemName: "magnifyingglass")
                        
                        TextField("", text: $text, prompt: Text("Search Products"))
                    }
                    .padding()
                    .frame(height: 50)
                    .background(.thinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                    Image(systemName: "seal")
                        .padding()
                        .frame(height: 50)
                        .background(.thinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                    Image(systemName: "person.text.rectangle")
                        .padding()
                        .frame(height: 50)
                        .background(.thinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 15))
                    
                }
                .padding()
                
                Categories()
                
                Exclusive()
                
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .navigationTitle("Products")
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    ContentView()
}
