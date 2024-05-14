//
//  Categories.swift
//  Barter
//
//  Created by Aleck (Pro) on 2024-05-14.
//

import SwiftUI

struct Category: Identifiable {
    var id = UUID()
    var image: String
    var name: String
}

let categories: [Category] = [
    Category(image: "lamp.ceiling.inverse", name: "Lamp"),
    Category(image: "bicycle", name: "Bicycle"),
    Category(image: "desktopcomputer", name: "Computer"),
    Category(image: "camera", name: "Cameras"),
    Category(image: "safari", name: "Trip")
]

struct Categories: View {
    var body: some View {
        VStack {
            HStack {
                Text("Categories")
                    .font(.title)
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button("See all") {
                    
                }
                .foregroundStyle(.purple)
            }
            .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: -15) {
                    ForEach(categories) { category in
                        VStack {
                            Image(systemName: category.image)
                                .padding()
                                .frame(height: 50)
                                .background(.thinMaterial)
                            .clipShape(RoundedRectangle(cornerRadius: 15))
                            
                            Text(category.name)
                                .font(.subheadline)
                        }
                        .padding(.horizontal)
                    }
                }
            }
        }
    }
}

#Preview {
    Categories()
}
