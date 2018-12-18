//
//  SignupController.swift
//  App
//
//  Created by Elizabeth Cho on 12/17/18.
//  Copyright © 2018 Elizabeth Cho. All rights reserved.
//

import UIKit

class SignupController: UIViewController{
    let haveAccountButton: UIButton = {
        let color = UIColor.rgb(r:89, g:156, b:120)
        let h = UIButton(type: .system)
        let font = UIFont.systemFont(ofSize: 16)
        h.backgroundColor = GREEN_THEME
        let attributedTitle = NSMutableAttributedString(string: "Already have an account? ", attributes: [NSAttributedString.Key.foregroundColor:color, NSAttributedString.Key.font : font])
        
        attributedTitle.append(NSAttributedString(string: "Sign In", attributes:
            [NSAttributedString.Key.foregroundColor: UIColor.white,
             NSAttributedString.Key.font: font]))
        h.addTarget(self, action: #selector(signInAction), for: .touchUpInside)
        h.setAttributedTitle(attributedTitle, for: .normal)
        return h
        
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = GREEN_THEME
        
        setupHaveAccountButton()
    }
    @objc func signInAction(){
        navigationController?.popViewController(animated: true)
    }
    
    fileprivate func setupHaveAccountButton(){
        view.addSubview(haveAccountButton)
        haveAccountButton.anchors(top: nil, topPad: 0, bottom: view.safeAreaLayoutGuide.bottomAnchor, bottomPad: 0, left: view.leftAnchor, leftPad: 0, right: view.rightAnchor, rightPad: 0, height: 20, width: 0)
        
    }
    
}
