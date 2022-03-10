//
//  LoginInputCell.swift
//  Constraints2
//
//  Created by Мельник Дмитрий on 03.03.2022.
//

import Foundation
import UIKit


class LoginInputCell: UITableViewCell {
    
    
    private var textField: UITextField {
        let textField = UITextField()
        textField.isSecureTextEntry = true
        textField.placeholder = "Email"
        textField.layer.cornerRadius = 10
        return textField
    }
}
