//
//  Country.swift
//  DDSvsRegCovid
//
//  Created by Ben Huggins on 6/21/21.
//



import Foundation


struct Country: Codable, Hashable {
    let name: String
    let iso: String
    
    enum CodingKeys: String, CodingKey {
            case name = "Country"
            case iso = "ISO2"
}

}


// Need to go programmatic But do it 

//??? DOesnt matter

// collectionView


// Searchbar standard immediately 
