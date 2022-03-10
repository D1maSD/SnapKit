//
//  UITextField+Extencion.swift
//  Constraints
//
//  Created by Мельник Дмитрий on 18.02.2022.
//

import UIKit

extension UITextField {
    
    
    static func makeTextField(_ string: String) -> UITextField {
        let textField2 = UITextField()
        textField2.backgroundColor = .cyan
        textField2.attributedPlaceholder = NSAttributedString(string: string, attributes: [.foregroundColor: UIColor.lightGray ])
    
        
        return textField2
    }
    
}

extension UIStackView {
    
    static func makeStack(_ views: [UIView]) -> UIStackView {
        let stack = UIStackView(arrangedSubviews: views)
        stack.axis = .vertical
        stack.spacing = 5
        return stack
    }
}

extension UIButton {
    
    static func makeAuthenticationButton(
        withTitle title: String,
        backgroundColor: UIColor
    ) -> UIButton {
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.backgroundColor = backgroundColor
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        
        button.snp.makeConstraints {
            $0.height.equalTo(50)
        }
        
        return button
    }

}
