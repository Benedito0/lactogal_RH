//
//  bottomTabBarController.swift
//  LactogalRH_app
//
//  Created by Mauro Benedito on 12/02/2019.
//  Copyright © 2019 Mauro Benedito. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class bottomTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if Auth.auth().currentUser == nil {
            //show if not logged in
            DispatchQueue.main.async {
                let loginController = LoginViewController()
                let navController = UINavigationController(rootViewController: loginController)
                self.present(navController, animated: true, completion: nil)
            }
            
            return
        }
        
        let userView = HomePageController()
        let tasks = TasksController()
        
        
        userView.navigationItem.title = "Página inicial"
        userView.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "settings")?.withRenderingMode((.alwaysOriginal)), style: .plain, target: self, action: #selector(handleSignOut))
        
        
        
        
        tasks.navigationItem.title = "Pedidos"
        tasks.tabBarItem.selectedImage = UIImage(named: "profile_selected")
        tasks.tabBarItem.image = UIImage(named: "profile_unselected")
        
        
        
        let navController = UINavigationController(rootViewController: userView)
        
        navController.tabBarItem.selectedImage = UIImage(named: "home_selected")
        navController.tabBarItem.image = UIImage(named: "home_unselected")
        
        
        
        viewControllers = [navController,tasks]
        
       
        
    }
    
    @objc func handleSignOut()
    {
        let uiAlert = UIAlertController(title: nil, message: "Tem a certeza que deseja sair?", preferredStyle: .actionSheet)
        
        uiAlert.addAction(UIAlertAction(title: "Log Out", style: .destructive, handler: {(_) in
            print("Yall niggas funny")
            
            do
            {
                try Auth.auth().signOut()
                let loginView = LoginViewController()
                
                self.present(loginView, animated: true, completion: nil)
            }catch let authError
            {
                print(authError)
            }
           
        }))
        
        uiAlert.addAction((UIAlertAction(title: "Cancel", style: .cancel, handler: nil)))
        
        present(uiAlert, animated: true, completion: nil)
        
        print("You know")
        
    }
    
}
