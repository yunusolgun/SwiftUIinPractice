//
//  SpotifyHomeView.swift
//  SwiftUIinPractice
//
//  Created by yunus olgun on 10.04.2025.
//

import SwiftUI

struct SpotifyHomeView: View {
    
    @State private var currentUser: User? = nil
    @State private var selectedCategory: Category? = nil
    
    var body: some View {
        ZStack {
            Color.spotifyBlack.ignoresSafeArea()
            
            ScrollView(.vertical) {
                
                LazyVStack(spacing: 1, pinnedViews: [.sectionHeaders]) {
                    Section {
                        ForEach(0..<20) { _ in
                            Rectangle()
                                .frame(width: 200, height: 200)
                                .foregroundStyle(.white)
                        }
                    } header: {
                        header
                    }

                }
                .padding(.top, 8)

            }
            .scrollIndicators(.hidden)
            .clipped()
            
        }
        .task {
            await getData()
        }
        .toolbar(.hidden)
        
    }
    
    private func getData() async {
        do {
            currentUser = try await DatabaseHelper().getUsers().first
        } catch  {
            
        }
    }
    
    private var header: some View {
        HStack(spacing: 0) {
            ZStack {
                if let currentUser {
                    ImageLoaderView(urlString: currentUser.image)
                        .background(.spotifyWhite)
                        .clipShape(Circle())
                        .onTapGesture {
                            
                        }
                }
            }
            .frame(width: 35, height: 35)
            
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(Category.allCases, id: \.self) { category in
                        SpotifyCategoryCell(
                            title: category.rawValue.capitalized,
                            isSelected: category == selectedCategory
                        )
                        .onTapGesture {
                            selectedCategory = category
                        }
                            
                    }
                }
                .padding(.horizontal,16)
                
            }
            

        }
        .padding(.vertical, 24)
        .padding(.leading, 8)
        .frame(maxWidth: .infinity)
        .background(.spotifyBlack)
    }
    
    
}

#Preview {
    SpotifyHomeView()
}
