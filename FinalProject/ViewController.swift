//
//  ViewController.swift
//  FinalProject
//
//  Created by Mariah Hortillano on 4/9/18.
//  Copyright © 2018 Mariah Hortillano. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

  
    @IBOutlet var TableView: UITableView!
    var restaurants = ["Genki Sushi", "Tanaka of Tokyo", "Doraku", "Bubba Gump Shrimp Co.", "Shirokiya", "Tempura Ichidai"]
    
    var restaurantImageData = [String]()
    var restaurantTitleData = [String]()
    var restuarantDescriptionData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        TableView.dataSource = self
        TableView.delegate = self
        
        
        //part 6
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        restaurantImageData = dict!.object(forKey:"RestaurantImage") as! [String]
        restaurantTitleData = dict!.object(forKey:"Restaurant Title") as! [String]
        restuarantDescriptionData = dict!.object(forKey:"Description") as! [String]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return restaurants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //set up cell to display items in bucketList
        
        let cell = TableView.dequeueReusableCell(withIdentifier: "cellReuseIdentifier")!
        let text = restaurants[indexPath.row]
        cell.textLabel?.text = text
        return cell
        
        }
        //part with the thingies
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MySegue"
        {
            let s1 = segue.destination as! detailViewController
            let imageIndex = TableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!]
            
            let s2 = segue.destination as! detailViewController
            let titleIndex = TableView.indexPathForSelectedRow?.row
            s2.titlePass = restaurantTitleData[titleIndex!]
            
            let s3 = segue.destination as! detailViewController
            let descriptionIndex = TableView.indexPathForSelectedRow?.row
            s3.descriptionPass = restuarantDescriptionData[descriptionIndex!]
            
    }

}
}
