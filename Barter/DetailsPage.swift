//
//  DetailsPage.swift
//  Barter
//
//  Created by Aleck (Pro) on 2024-05-14.
//

import SwiftUI

struct DetailsPage: View {
    var image: String
    var name: String
    @State var isLiked: Bool = false
    
    var body: some View {
        VStack(spacing: -25) {
            GeometryReader { geo in
                ZStack(alignment: .bottomLeading) {
                    Image(image)
                        .resizable()
                        .scaledToFill()
                        .frame(maxWidth: .infinity)
                        .frame(minHeight: geo.size.height)
                    
                    HStack {
                        Text("\(name)")
                            .font(.title2)
                            .underline()
                            .italic()
                            .bold()
                            
                        
                        Spacer()
                        
                        Button {
                            isLiked.toggle()
                        } label: {
                            Image(systemName: isLiked ? "heart.fill" : "heart")
                                .font(.title2)
                                .foregroundStyle(isLiked ? .red : Color("heartColor"))
                                .bold()
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 7.5)
                    .padding(.horizontal, 5)
                    .padding(.bottom, 35)
                    .background(.ultraThinMaterial)
                }
                .clipped()
                .ignoresSafeArea()
            }
            .frame(height: 350)
            
            ScrollView {
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vivamus ullamcorper, odio nec congue bibendum, magna eros efficitur purus, sit amet ultricies felis felis id elit. Nulla facilisi. Integer lacinia magna sed mauris gravida, quis sodales ligula venenatis. Sed malesuada, ligula nec vestibulum tempor, felis dui consectetur felis, vitae malesuada velit elit ut nulla. In hac habitasse platea dictumst. Sed vehicula diam id justo eleifend, eget tristique justo eleifend. Aenean malesuada lobortis eros, vel ultrices nisi rutrum vitae. Aliquam ut efficitur dolor, vitae posuere neque. Maecenas tincidunt metus in est euismod aliquet. Integer venenatis consequat augue, id maximus ipsum pharetra sed. Proin finibus tellus quis ligula scelerisque, ac consequat dui vehicula. Donec luctus nulla in mauris euismod, non facilisis mi consequat. Aliquam convallis quam quis neque hendrerit convallis. Sed varius magna vel neque condimentum, vel laoreet libero commodo. Maecenas pretium libero sed tempor rhoncus. Nunc nec finibus lorem. Sed in eleifend risus. Phasellus nec risus non libero scelerisque commodo ac ut nunc. Integer eleifend eget nisi nec fermentum. Nulla sollicitudin, leo non maximus blandit, ligula eros convallis est, et commodo velit dui in enim. Integer consectetur eu orci vitae bibendum. Donec sit amet posuere tortor. Curabitur tincidunt nec ipsum at dapibus. Suspendisse vestibulum vel magna eu volutpat. Sed congue vel lorem non mattis. Sed ac lorem eu magna tincidunt aliquet. Sed eu lacus eget ligula egestas faucibus. Quisque fringilla magna id quam lacinia, nec convallis tortor fermentum. Vivamus a leo et est vestibulum cursus. Vivamus convallis pharetra nulla in dictum. Curabitur a felis sed tortor blandit euismod. Curabitur vehicula eros in metus varius, sit amet dapibus lectus suscipit. Vivamus non finibus magna. Sed vel sapien ut nulla posuere volutpat. Cras eget justo sodales, vulputate nunc ut, luctus metus. Ut nec risus id erat gravida efficitur. Suspendisse dictum justo sed sem elementum, ac pulvinar magna lobortis. Sed finibus nisi nec justo euismod, vel vehicula magna pulvinar. Integer fermentum justo sit amet mi tristique interdum. Etiam venenatis arcu nec tempor fermentum. Curabitur sit amet libero quis nisi gravida vulputate ac non mauris. In interdum suscipit lacinia. Sed at urna metus. Nunc ornare sem at nisi lacinia, eu luctus metus molestie. Sed efficitur nisi nec urna dictum, ac condimentum ex dictum. Nulla at magna id ipsum ultrices scelerisque. Suspendisse in mauris vitae turpis eleifend efficitur. Sed id orci vel neque consequat lobortis. Maecenas sodales, leo ac efficitur ultricies, velit nisi consequat ex, vel scelerisque ligula dolor eget ipsum. Curabitur at leo vel velit convallis tincidunt.")
                    .padding()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .background()
            .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
}

#Preview {
    DetailsPage(image: "shoes1", name: "Off-White Air Forces")
}
