//
//  ReviewViewController.swift
//  FoursquareApp
//
//  Created by Bhoomika H P on 01/07/21.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet var frstView: UIView!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var thirdView: UIView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //add tapGesture
        secondView.isHidden = true
        thirdView.isHidden = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.handleTap(_:)))
        secondView.addGestureRecognizer(tap)
        secondView.isUserInteractionEnabled = true


        // Do any additional setup after loading the view.
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        self.secondView.isHidden = true
        self.thirdView.isHidden = true
    }
    
    
    @IBAction func btnClick(_ sender: UIButton) {
        self.thirdView.isHidden = false
        self.secondView.isHidden = false
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
