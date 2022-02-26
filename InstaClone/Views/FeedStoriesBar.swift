//
//  FeedStoriesBar.swift
//  InstaClone
//
//  Created by MJ Albdour on 2/26/22.
//

import SwiftUI

struct FeedStoriesBar: View {
    @State var seen = false
    @State var unseen = true
    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 15) {
                StoryInFeedStoriesBarView(seen: $unseen)
                ForEach(0..<10, id: \.self) { _ in
                    StoryInFeedStoriesBarView(seen: $seen)
                }
            }
        }
    }
}

struct FeedStoriesBar_Previews: PreviewProvider {
    static var previews: some View {
        FeedStoriesBar()
            .preferredColorScheme(.dark)
    }
}
