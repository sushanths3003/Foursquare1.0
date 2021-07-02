//
//  SearchViewController.swift
//  FoursquareApp
//
//  Created by Bhoomika H P on 29/06/21.
//

import UIKit

class SearchViewController: UIViewController {
    
    @IBOutlet weak var nearPlace: UITextField!
    @IBOutlet weak var searchPlace: UITextField!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var contentView: UIView!
    let newLayer = CAGradientLayer()
    var heightNotSet = true
    var screenHeight: CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.rowHeight = 80
        newLayer.frame = view.frame
        newLayer.locations = [0, 1]
        newLayer.startPoint = CGPoint(x: 0.5, y: 0)
        newLayer.endPoint = CGPoint(x: 0.5, y: 1)
        view.layer.insertSublayer(newLayer, at: 0)
        
        let searchImage = UIImage(named: "serch_hdpi")!
        let nearmeImage = UIImage(named: "near_me_hdpi")!
        searchPlace.addLeftImage(txtField: searchPlace, andImage: searchImage)
        nearPlace.addLeftImage(txtField: nearPlace, andImage: nearmeImage)
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
       //  super.viewDidLayoutSubviews()
         newLayer.frame = view.bounds
           if UIDevice.current.orientation.isLandscape && heightNotSet {
                screenHeight = scrollView.frame.size.width
                heightNotSet = false
               
            } else if heightNotSet {
                screenHeight = scrollView.frame.size.height
             print( screenHeight)
                heightNotSet = false
            }
        
     let heightConstraint = NSLayoutConstraint(item: contentView ?? "nil"  , attribute: NSLayoutConstraint.Attribute
            .height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: screenHeight)
         
            contentView.addConstraint(heightConstraint)
        
        }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
