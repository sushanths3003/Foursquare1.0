//
//  CustomUITextField.swift
//  FoursquareApp
//
//  Created by Bhoomika H P on 30/06/21.
//

import UIKit

class TextField: UITextField {
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        
        var newRect = bounds
        newRect.origin.x = 30
        newRect.size.width = bounds.size.width - 30
       // print(newRect.size.width)
        return newRect
    }

    
}

