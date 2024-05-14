//
//  DetailsPage.swift
//  Barter
//
//  Created by Aleck (Pro) on 2024-05-14.
//

import SwiftUI

struct DetailsPage: View {
    var image: String
    var index: Int
    
    var body: some View {
        VStack(spacing: -5) {
            GeometryReader { geo in
                ZStack(alignment: .bottomLeading) {
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity)
                        .frame(minHeight: geo.size.height)
                    
                    Text("\(index)")
                        .padding()
                        .font(.title2)
                        .underline()
                }
                .clipped()
                .ignoresSafeArea(edges: .top)
            }
            .frame(height: 350)
            
            ScrollView {
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce nec justo consequat, vestibulum orci vel, pharetra justo. Nulla facilisi. Ut vitae libero non sem ultrices congue. Pellentesque a nisi sollicitudin, tempor justo vitae, fermentum arcu. Integer a arcu vel tortor vehicula finibus. Curabitur volutpat nulla in mi fermentum consequat. Duis euismod nisi a eros volutpat, vel varius eros ultricies. Nullam auctor justo in nisi rhoncus vehicula. In hac habitasse platea dictumst. Fusce mattis gravida turpis, sed euismod est ultrices vitae. Nullam tincidunt felis eget leo lobortis, vel dapibus quam tempor. Cras lobortis sem eget dolor mattis, nec posuere elit gravida. Aenean finibus laoreet mauris vel ultricies. Fusce efficitur sapien vel felis fermentum, a fermentum libero ultricies.")
                    .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background()
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .ignoresSafeArea()
        }
    }
}

#Preview {
    DetailsPage(image: "shoes1", index: 1)
}
