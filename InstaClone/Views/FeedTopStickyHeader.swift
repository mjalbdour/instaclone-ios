//
//  FeedTopStickyHeader.swift
//  InstaClone
//
//  Created by MJ Albdour on 2/27/22.
//

import SwiftUI

struct FeedTopStickyHeader: View {
    var body: some View {
        HStack(alignment: .center, spacing: 5) {
            HomeMenu()
            Spacer()
            HStack(spacing: 25) {
                Menu {
                    Button {
                        
                    } label: {
                        HStack {
                            Text("Post")
                            Image(systemName: "squareshape.split.3x3")
                        }
                    }
                    Button {
                        
                    } label: {
                        HStack {
                            Text("Story")
                            Image(systemName: "plus.circle")
                        }
                    }
                    Button {
                        
                    } label: {
                        HStack {
                            Text("Reel")
                            Image(systemName: "plus.square")
                        }
                    }
                    .disabled(true)
                    Button {
                        
                    } label: {
                        HStack {
                            Text("Live")
                            Image(systemName: "dot.radiowaves.left.and.right")
                        }
                    }
                    .disabled(true)
                } label: {
                    Image(systemName: "plus.square")
                        .font(.title)
                }
                .tint(.primary)

                
                Image(systemName: "message")
                    .font(.title)
                    .overlay(
                        Circle()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.red)
                            .offset(x: 5, y: -5)
                            .overlay(Text("2")
                                        .foregroundColor(.white)
                                        .font(.callout)
                                        .bold().offset(x: 5, y: -5)
                                    )
                        ,alignment: .topTrailing
                    )
            }
        }
        .padding()
    }
}

struct FeedTopStickyHeader_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FeedTopStickyHeader()
            FeedTopStickyHeader()
                .preferredColorScheme(.dark)
        }
    }
}

struct HomeMenu: View {
    var body: some View {
        Menu {
            Button {
                
            } label: {
                Text("Home")
            }
            Button {
                
            } label: {
                Text("Following")
            }
            Button {
                
            } label: {
                Text("Favorites")
            }
            Button {
                
            } label: {
                Label("Manage favorites", systemImage: "star")
            }
        } label: {
            HStack(spacing: 2) {
                Text("Home")
                    .font(.title)
                    .bold()
                Image(systemName: "chevron.down")
                    .font(.headline)
            }
            .tint(.primary)
        }
    }
}
