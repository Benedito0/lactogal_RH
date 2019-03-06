//
//  FormFiling.swift
//  LactogalRH_app
//
//  Created by Mauro Benedito on 14/02/2019.
//  Copyright © 2019 Mauro Benedito. All rights reserved.
//

import UIKit

class FormFiling: UIViewController
{
    var section_selected: Int = 0
    
    //============= requerimento uis
    let requerimento_assunto : UITextField = {
        let param = UITextField()
        param.placeholder = "Assunto"
        param.layer.borderColor = UIColor.lightGray.cgColor
        
        
        param.translatesAutoresizingMaskIntoConstraints = true
        return param
    }()
    
    let requerimento_corpo : UITextField = {
        let param = UITextField()
        param.placeholder = ""
        param.layer.borderColor = UIColor.lightGray.cgColor
        
        
        param.translatesAutoresizingMaskIntoConstraints = true
        return param
    }()
    
    // ============ />
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.brown
        print(section_selected)
    }
}
