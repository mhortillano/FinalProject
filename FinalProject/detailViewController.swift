//
//  detailViewController.swift
//  FinalProject
//
//  Created by Mariah Hortillano on 4/23/18.
//  Copyright © 2018 Mariah Hortillano. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    var imagePass : String?
    
    
    @IBOutlet var titleView: UILabel!
    var titlePass : String?
    
    
    @IBOutlet var descriptionView: UITextView!
    var descriptionPass: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
       
        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)
            }
            
        if let titleName = titlePass {
            title = titleName
            }
            
         if let descriptionName = descriptionPass {
            descriptionView.text = descriptionName
            }
        }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
