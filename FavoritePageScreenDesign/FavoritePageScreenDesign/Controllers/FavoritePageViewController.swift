//
//  FavoritePageViewController.swift
//  FavoritePageScreenDesign
//
//  Created by Admin on 28/01/22.
//

import UIKit

class FavoritePageViewController: UIViewController {

    @IBOutlet weak var FavoriteList: UITableView!
    var favoriteViewModel: FavoriteViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
    }
    
    private func config() {
        self.favoriteViewModel = FavoriteViewModel()
        self.FavoriteList.separatorColor = .clear
    }
}

extension FavoritePageViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        favoriteViewModel?.favoriteData.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = FavoriteList.dequeueReusableCell(withIdentifier: "FavoriteTableViewCell") as? FavoriteTableViewCell {
            guard let favoriteItem = favoriteViewModel?.favoriteData[indexPath.row] else {return UITableViewCell()}
            switch indexPath.row {
            case 0:
                cell.segmentNameLabel.text = "Segment Name: " + favoriteItem.segmentName
                cell.platformNameLabel.text = "Platform Name: " + favoriteItem.platformName
                cell.clusterNameLabel.text = "Cluster Name: " + favoriteItem.clusterName
                cell.siteNameLabel.text = "Site Name: " + favoriteItem.siteName
                return cell
                
            case 1:
                cell.segmentNameLabel.text = "Segment Name: " + favoriteItem.segmentName
                cell.platformNameLabel.text = "Platform Name: " + favoriteItem.platformName
                cell.clusterNameLabel.text = "Cluster Name: " + favoriteItem.clusterName
                cell.siteNameLabel.isHidden = true
                return cell
            
            case 2:
                cell.segmentNameLabel.text = "Segment Name: " + favoriteItem.segmentName
                cell.platformNameLabel.text = "Platform Name: " + favoriteItem.platformName
                cell.clusterNameLabel.isHidden = true
                cell.siteNameLabel.isHidden = true
                return cell
            case 3:
                cell.segmentNameLabel.text = "Segment Name: " + favoriteItem.segmentName
                cell.platformNameLabel.isHidden = true
                cell.clusterNameLabel.isHidden = true
                cell.siteNameLabel.isHidden = true
                return cell
            default:
                return UITableViewCell()
            }
        }
        return UITableViewCell()
    }
}
