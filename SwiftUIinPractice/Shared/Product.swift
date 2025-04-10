//
//  Product.swift
//  SwiftUIinPractice
//
//  Created by yunus olgun on 10.04.2025.
//

import Foundation

// MARK: - ProductArray
struct ProductArray: Codable {
    let products: [Product]
    let total, skip, limit: Int
}

// MARK: - Product
struct Product: Codable, Identifiable {
    let id: Int
    let title, description: String
    let price: Double
    let discountPercentage, rating: Double
    let stock: Int
    let brand: String?
    let category: String
    let images: [String]
    let thumbnail: String
}
