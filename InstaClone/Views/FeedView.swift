//
//  FeedView.swift
//  InstaClone
//
//  Created by MJ Albdour on 2/27/22.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                FeedStoriesBar()
                    .padding(.horizontal, 5)
                    .offset(y: 75)
                ForEach(0..<30, id: \.self) { index in
                    PostInFeedView()
                        .padding(.bottom, index == 29 ? 90 : 0)
                }
                .offset(y: 80)
                GeometryReader { geometryReader in
                    FeedTopStickyHeader()
                        .offset(y: geometryReader.frame(in: .global).origin.y <= 0 ? abs(geometryReader.frame(in: .global).origin.y) : -geometryReader.frame(in: .global).origin.y)
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FeedView()
            FeedView()
                .preferredColorScheme(.dark)
        }
    }
}
