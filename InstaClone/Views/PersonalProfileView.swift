//
//  PersonalProfileView.swift
//  InstaClone
//
//  Created by MJ Albdour on 2/24/22.
//

import SwiftUI

struct PersonalProfileView: View {
    @State var selection = 0
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ActivitySection()
                    .padding(.bottom)
                DashboardSection()
                    .padding(.bottom)
                MainSection()
                VStack(alignment: .leading) {
                    Name()
                    AccountCategory()
                    Bio()
                }
                .padding(.bottom, 1)
                HelpersSection()
                    .padding(.bottom)
                HighlightsSection()
                TabBar(selection: $selection)
                TabViewGrid(selection: $selection)
            }
        }
    }
}

struct PersonalProfileView_Previews: PreviewProvider {
    static var previews: some View {
        PersonalProfileView()
            .preferredColorScheme(.dark)
    }
}

struct ActivitySection: View {
    var body: some View {
        HStack {
            Text("mr_supremo")
                .font(.title2)
                .fontWeight(.bold)
            Image(systemName: "chevron.down")
            Spacer()
            Image(systemName: "plus.app")
                .font(.title)
                .padding(.trailing)
            Image(systemName: "line.3.horizontal")
                .resizable()
                .font(.title)
                .frame(width: 25, height: 20)
        }
    }
}

struct DashboardSection: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Professional Dashboard")
                    .font(.system(.footnote))
                    .fontWeight(.bold)
                Text("Tools and resources just for creators.")
                    .font(.footnote)
                    .opacity(0.7)
            }
            Spacer()
            Image(systemName: "chevron.right")
                .opacity(0.7)
        }
    }
}

struct MainSection: View {
    var body: some View {
        HStack {
            Circle()
                .stroke(lineWidth: 1)
                .background(Color(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393))
                .frame(width: 90, height: 90)
                .clipShape(Circle())
                .overlay(
                    Image(systemName: "person.fill")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 80, height: 80)
                        .offset(y: 20)
                        .clipShape(Circle())
                )
                .overlay(
                    Image(systemName: "plus")
                        .resizable()
                        .frame(width: 12, height: 12)
                        .padding(.all, 8)
                        .background(.blue)
                        .clipShape(Circle()),
                    alignment: .bottomTrailing
                )
            Spacer()
            HStack(alignment: .center, spacing: 20) {
                VStack {
                    Text("54")
                        .font(.headline)
                        .fontWeight(.bold)
                    Text("Posts")
                }
                VStack {
                    Text("2.4M")
                        .font(.headline)
                        .fontWeight(.bold)
                    Text("Followers")
                }
                VStack {
                    Text("0")
                        .font(.headline)
                        .fontWeight(.bold)
                        .opacity(0.6)
                    Text("Following")
                }
            }
        }
    }
}

struct Name: View {
    var body: some View {
        Text("Supremo Jr.")
    }
}

struct AccountCategory: View {
    var body: some View {
        Text("Engineering Service")
            .opacity(0.7)
    }
}

struct Bio: View {
    var body: some View {
        Text("With great code, comes great readability.")
    }
}

struct HelpersSection: View {
    var body: some View {
        HStack(spacing: 3) {
            Button {
            } label: {
                Text("Edit Profile")
                    .font(.callout)
                    .fontWeight(.bold)
            }
            .background(.black)
            .foregroundColor(.white)
            .padding(.vertical, 10.0)
            .frame(minWidth: 0, maxWidth: .infinity)
            .border(.white.opacity(0.3), width: 1)
            .cornerRadius(2)
            Button {
            } label: {
                Text("Ad Tools")
                    .font(.callout)
                    .fontWeight(.bold)
            }
            .background(.black)
            .foregroundColor(.white)
            .padding(.vertical, 10)
            .frame(minWidth: 0, maxWidth: .infinity)
            .border(.white.opacity(0.3), width: 1)
            .cornerRadius(2)
            Button {
            } label: {
                Text("Insights")
                    .font(.callout)
                    .fontWeight(.bold)
            }
            .background(.black)
            .foregroundColor(.white)
            .padding(.vertical, 10)
            .frame(minWidth: 0, maxWidth: .infinity)
            .border(.white.opacity(0.3), width: 1)
            .cornerRadius(2)
        }
    }
}

struct HighlightsSection: View {
    var body: some View {
        HStack(spacing: 25) {
            VStack {
                Circle()
                    .stroke()
                    .foregroundColor(.gray)
                    .frame(width: 60, height: 60)
                    .overlay(Image(systemName: "globe.americas")
                                .resizable()
                                .scaledToFit()
                                .scaleEffect(0.9))
                Text("Americas")
                    .font(.callout)
            }
            VStack {
                Circle()
                    .stroke()
                    .foregroundColor(.gray)
                    .frame(width: 60, height: 60)
                    .overlay(Image(systemName: "plus")
                                .resizable()
                                .scaledToFit()
                                .scaleEffect(0.3))
                Text("New")
                    .font(.callout)
            }
        }
    }
}

struct TabBar: View {
    @Binding var selection: Int
    var body: some View {
        HStack {
            Spacer()
            Button {
                withAnimation(.linear) {
                    selection = 0
                }
            } label: {
                Image(systemName: "squareshape.split.3x3")
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(0.4)
                    .tint(.white)
            }

            .overlay( selection == 0 ?
                      Rectangle()
                        .frame(width: 100, height: 3) : nil, alignment: .bottom)

            Spacer()
            Button {
                withAnimation(.linear) {
                    selection = 1
                }

            } label: {
                Image(systemName: "person.crop.rectangle")
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(0.4)
                    .tint(.white)
            }
            .overlay( selection == 1 ?
                      Rectangle()
                        .frame(width: 100, height: 3) : nil, alignment: .bottom)
            Spacer()
        }
        .frame(height: 50)
    }
}

struct TabViewGrid: View {
    @Binding var selection: Int
    var columns: [GridItem] =
    Array(repeating: .init(.flexible(minimum: 40), spacing: 1), count: 3)
    var body: some View {
        LazyVGrid(columns: columns, spacing: 1) {
            ForEach(0..<54) { _ in
                Rectangle()
                    .foregroundColor(.black)
                    .scaledToFit()
                    .overlay(Image(systemName: selection == 0 ? "photo" : "person")
                                .resizable()
                                .scaledToFit()
                                .scaleEffect(0.6)
                                .foregroundColor(.gray))
                    .animation(.linear, value: selection)
            }
        }
    }
}
