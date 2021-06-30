//
//  UIImageView+Extension.swift
//  FoursquareApp
//
//  Created by Bhoomika H P on 29/06/21.
//

import UIKit
extension UITextField{
    
    func setTextImage(name: String){
        let imageView = UIImageView()
        let image = UIImage(named: name)
        imageView.image = image
        self.leftView = imageView
    
    }
}
