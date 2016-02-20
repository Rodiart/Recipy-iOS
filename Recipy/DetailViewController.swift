//
//  DetailViewController.swift
//  Recipy
//
//  Created by Ben Swift on 2/20/16.
//  Copyright © 2016 Ben Swift. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var bgImageViewDetail: UIImageView!
    var bgImageViewDetailImage: UIImage?
    
    @IBOutlet weak var mainLabel: UILabel!
    var mainLabelString: String?
    
    @IBOutlet weak var ratingLabel: UILabel!
    var ratingLabelString: String?

    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        bgImageViewDetail.image = bgImageViewDetailImage
        mainLabel.text = mainLabelString
        ratingLabel.text = ratingLabelString
        
    }
    
    override func viewWillDisappear(animated: Bool) {
        bgImageViewDetail.image = nil
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
