//
//  LoginController.swift
//  UberTutorial
//
//  Created by Pipe Carrasco on 12-07-21.
//

import UIKit

class LoginController: UIViewController {
    
    // MARK: - Properties
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "UBER"
        label.font = UIFont(name: "Avenir-Light", size: 36)
        label.textColor = UIColor(white: 1, alpha: 0.8)
        return label
    }()
    
    private lazy var emailContainerView: UIView = {
        let view = UIView()
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "envelope")
        imageView.alpha = 0.87
        imageView.tintColor = .white
        view.addSubview(imageView)
        imageView.centerY(inView: view)
        imageView.anchor(leading: view.leadingAnchor, paddingLeading: 8, width: 28, height: 24)
        
        view.addSubview(emailTextField)
        emailTextField.centerY(inView: view)
        emailTextField.anchor(leading: imageView.trailingAnchor,
                              bottom: view.bottomAnchor,
                              trailing: view.trailingAnchor,
                              paddingLeading: 8,
                              paddingBottom: 8)
        
        let separatorView = UIView()
        separatorView.backgroundColor = .lightGray
        view.addSubview(separatorView)
        separatorView.anchor(leading: view.leadingAnchor, bottom: view.bottomAnchor, trailing: view.trailingAnchor, paddingLeading: 8, height: 0.75)
        return view
    }()
    
    private let emailTextField: UITextField = {
        let tf = UITextField()
        tf.borderStyle = .none
        tf.font = UIFont.systemFont(ofSize: 16)
        tf.textColor = .white
        tf.keyboardAppearance = .dark
        tf.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor : UIColor.lightGray])
        return tf
    }()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 25/255, green: 25/255, blue: 25/255, alpha: 1)
        
        view.addSubview(titleLabel)
        titleLabel.anchor(top: view.safeAreaLayoutGuide.topAnchor)
        titleLabel.centerX(inView: view)
        
        view.addSubview(emailContainerView)
        emailContainerView.anchor(top: titleLabel.bottomAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, paddingTop: 40, paddingLeading: 16, paddingTrailing: 16, height: 50)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
