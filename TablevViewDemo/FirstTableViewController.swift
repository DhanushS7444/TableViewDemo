//
//  FirstTableViewController.swift
//  TablevViewDemo
//
//  Created by Bhuvana on 04/03/19.
//  Copyright © 2019 capgemini. All rights reserved.
//

import UIKit

class FirstTableViewController: UITableViewController {

    
    var array = ["Mickey","Pooh","Tweety","Teddy"]
    var images = ["mickey", "pooh", "tweety", "teddy"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return array.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FirstTableViewCell
        cell.labelName.text = array[indexPath.row]
        cell.image1?.image = UIImage(named: images[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailScene = storyboard?.instantiateViewController(withIdentifier: "DetailScene") as! DetailViewController
        self.navigationController?.pushViewController(detailScene, animated: true)
        detailScene.name = array[indexPath.row]
        detailScene.images = UIImage(named: images[indexPath.row])!
    }
   

}
