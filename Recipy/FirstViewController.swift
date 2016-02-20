//
//  FirstViewController.swift
//  Recipy
//
//  Created by Ben Swift on 2/19/16.
//  Copyright © 2016 Ben Swift. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        navigationController?.navigationBar.tintColor = UIColor.whiteColor()
        navigationController?.navigationBar.barTintColor = UIColor(red: 210/255.0, green: 35/255.0, blue: 35/255.0, alpha: 1.0)
        navigationController?.navigationBar.barStyle = .Black
        navigationItem.titleView = UIImageView(image: UIImage(named: "Recipy"))
        navigationController?.navigationBar.translucent = false
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

