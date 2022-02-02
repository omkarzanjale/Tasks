//
//  FavoriteViewModel.swift
//  FavoritePageScreenDesign
//
//  Created by Admin on 28/01/22.
//

import Foundation

class FavoriteViewModel {
    var favoriteData = [Favorite]()
    var menuData = [String]()
    init() {
        config()
    }
    
    func config() {
        let favoriteItem1 = Favorite(segmentName: "Janssen", platformName: "Janssen R&D", clusterName: "APAC", siteName: "Amatsi Franse")
        self.favoriteData.append(favoriteItem1)
        let favoriteItem2 = Favorite(segmentName: "Janssen", platformName: "Janssen R&D", clusterName: "APAC", siteName: "Amatsi Franse")
        self.favoriteData.append(favoriteItem2)
        let favoriteItem3 = Favorite(segmentName: "Janssen", platformName: "Janssen R&D", clusterName: "APAC", siteName: "Amatsi Franse")
        self.favoriteData.append(favoriteItem3)
        let favoriteItem4 = Favorite(segmentName: "Janssen", platformName: "Janssen R&D", clusterName: "APAC", siteName: "Amatsi Franse")
        self.favoriteData.append(favoriteItem4)
        menuData.append(contentsOf: ["Language","My Favorite","Logout","version 1.0"])
    }
}
