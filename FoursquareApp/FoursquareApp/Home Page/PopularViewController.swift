//
//  PopularViewController.swift
//  FoursquareApp
//
//  Created by Sushanth S on 29/06/21.
//

import UIKit

class PopularViewController: UIViewController {
    var index: Int?
    @IBOutlet weak var popularListTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let index = index {
            print(index)
        }
        popularListTableView.delegate = self
        popularListTableView.dataSource = self
    }
}

extension PopularViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat
    {
      
            return 195
    }
        
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? PopularTableViewCell {
            
            cell.dcsd.text = "sushanth"
            cell.layer.borderColor = UIColor.colorFoeCellSpace().cgColor
               cell.layer.borderWidth = 3
            
            return cell
        } else {
            
            return PopularTableViewCell()
        }
    }
}

