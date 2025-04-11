//
//  SpotifyPlaylistView.swift
//  SwiftUIinPractice
//
//  Created by yunus olgun on 11.04.2025.
//

import SwiftUI

struct SpotifyPlaylistView: View {
    
    var product: Product = .mock
    var user: User = .mock
    
    var body: some View {
        ZStack {
            Color.spotifyBlack.ignoresSafeArea()
            
            ScrollView(.vertical) {
                LazyVStack(spacing: 12) {
                    PlaylistHeaderCell(
                        height: 250,
                        title: product.title,
                        subtitle: product.brand ?? "",
                        imageName: product.thumbnail
                    )
                    
                    PlaylistDescriptionCell(
                        descriptionText: product.description,
                        userName: user.firstName,
                        subhedline: product.category,
                        onAddToPlaylistPressed: nil,
                        onDownloadPressed: nil,
                        onSharedPressed: nil,
                        onEllipsisPressed: nil,
                        onShufflePressed: nil,
                        onPlayPressed: nil
                    )
                    .padding(.horizontal, 16)
                    
                    
                }
            }
            .scrollIndicators(.hidden)
        }
    }
}

#Preview {
    SpotifyPlaylistView()
}
