//
//  HomeViewController.swift
//  FavoritePageScreenDesign
//
//  Created by Admin on 31/01/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var menuBtn: UIButton!
    var dataViewModel: FavoriteViewModel?
    var showHideMenu = true
    override func viewDidLoad() {
        super.viewDidLoad()
        config()
       
    }
    
    func navigateToMyFavorite(){
        if let favoritePageViewControllerObj = storyboard?.instantiateViewController(withIdentifier: "FavoritePageViewController") as? FavoritePageViewController {
            navigationItem.backBarButtonItem?.tintColor = .black
            navigationController?.pushViewController(favoritePageViewControllerObj, animated: true)
        }
    }
    
    func config() {
        let englishLanguage = UIAction(title: "English", image: nil, identifier: nil) { _ in}
        let frenchLanguage = UIAction(title: "French", image: nil) { _ in}
        
        let language = UIMenu(title: "Language", image: UIImage(systemName: "chevron.right"), children: [englishLanguage,frenchLanguage])
        
        let menus = UIMenu(title: "", children: [
            language,
            UIAction(title: "My favorite", image: UIImage(systemName: "chevron.right"), handler: {_ in self.navigateToMyFavorite()}),
            UIAction(title: "Logout", image: UIImage(systemName: ""), handler: {_ in print("Logout successful")}),
            UIAction(title: "Version 1.0", image: nil, attributes: .disabled, handler: { _ in })
        ])
        menuBtn.menu = menus
        menuBtn.showsMenuAsPrimaryAction = true
    }
}

