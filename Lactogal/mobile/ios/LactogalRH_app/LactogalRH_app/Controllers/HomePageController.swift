//
//  HomePageController.swift
//  LactogalRH_app
//
//  Created by Mauro Benedito on 12/02/2019.
//  Copyright © 2019 Mauro Benedito. All rights reserved.
//


import UIKit

class HomePageController: UITableViewController
{
    
    let cellId="cellId"
    
    let categories = ["Salários", "Legislação", "Horários"]
    let categories_icons = [UIImage(named: "salarios"), UIImage(named: "legislacao(50px)"), UIImage(named: "schedule")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellId)
        
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        
        let view = FormFiling()
        view.section_selected = indexPath.row
        
       navigationController?.pushViewController(view, animated: true)
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath)
        
        
        let categorie = self.categories[indexPath.row]
        let categorie_icon = self.categories_icons[indexPath.row]
        
        cell.textLabel?.text = categorie
        cell.imageView?.image = categorie_icon
        cell.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        return cell
    }
}
