//
//  StoryInFeedStoriesBarView.swift
//  InstaClone
//
//  Created by MJ Albdour on 2/26/22.
//

import SwiftUI

struct StoryInFeedStoriesBarView: View {
    @Binding var seen: Bool
    var userDefaultStoryLabel: String = "Your story"
    var body: some View {
        VStack {
            Circle()
                .stroke(seen ? .secondary : Color.orange, lineWidth: 1.5)
                .frame(width: 90,height: 90)
                .overlay(Circle()
                            .scaleEffect(0.92)
                            .foregroundColor(.secondary)
                            .overlay(Image(systemName: "person")
                                    )
                )
            Text(seen ? userDefaultStoryLabel : "some_username")
                .font(.footnote)
                .truncationMode(.tail)
                .frame(width: 90)
        }
        .frame(height: 120)
    }
}

struct StoryInFeedStoriesBarView_Previews: PreviewProvider {
    static var previews: some View {
        StoryInFeedStoriesBarView(seen: .constant(false))
            .preferredColorScheme(.dark)
    }
}
