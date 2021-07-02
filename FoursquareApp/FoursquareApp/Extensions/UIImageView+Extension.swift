//
//  UIImageView+Extension.swift
//  FoursquareApp
//
//  Created by Bhoomika H P on 29/06/21.
//

import UIKit
extension UITextField{
    
    func addLeftImage(txtField: UITextField, andImage img: UIImage){
        let leftImageView = UIImageView(frame: CGRect(x: 10, y: 0, width: img.size.width, height: img.size.height))
        leftImageView.image = img
        txtField.leftView = leftImageView
        txtField.leftViewMode = .always
    }
    
}
