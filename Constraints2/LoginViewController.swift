//
//  LoginViewController.swift
//  Constraints
//
//  Created by Мельник Дмитрий on 17.02.2022.
//


import UIKit
import SnapKit

// все textfield в ячейки

class LoginViewController: UIViewController {
    
    // MARK: Создаем enum со всеми элементами
    
    enum InputCellType {
        case backButton, loginLabel, email, password, loginButton, createAccount
    }
    // MARK: Создаем массив cell
    
    let cells: [InputCellType] = [.backButton, .createAccount, .email, .loginButton, .loginLabel, .password]
    
    // MARK: Создаем UI
    private var tableView = UITableView()
    private var bgView = UIImageView(image: Images.loginTableViewBG)
    
    
    private var emailField = UITextField.makeTextField("Email")
    private var passwordField = UITextField.makeTextField("Password")
    
    private var signIn = UIButton.makeAuthenticationButton(withTitle: "Login", backgroundColor: .lightGray)
    private var signUp = UIButton.makeAuthenticationButton(withTitle: "Sign up", backgroundColor: .lightGray)
    private var backButton = UIButton.makeAuthenticationButton(withTitle: "back", backgroundColor: .blue)
    
    private var titleLabel: UILabel = {
        let view = UILabel()
        view.text = "Tutorial"
        view.font = UIFont.systemFont(ofSize: 50)
        view.textColor = .init(white: 0.8, alpha: 0.8)
        return view
    }()
    
    private lazy var stack: UIStackView = {
       let stack = UIStackView(arrangedSubviews: [emailField,
                                                  passwordField,
                                                  signIn,
                                                  signUp])
         stack.spacing = 50
         stack.axis = .vertical
        return stack
    }()
    
    
    
    // MARK: constraints

    func configureTableView() {
        
        bgView.addSubview(tableView)
    }
    
    


    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureUI()
        
        
    }
    fileprivate func configureUI() {
        view.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(50)
            make.centerX.equalToSuperview()
        }
        
        view.addSubview(stack)
        stack.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(40)
            $0.left.right.equalToSuperview().inset(30)
        }
        
    }
}
