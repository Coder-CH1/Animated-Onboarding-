//
//  Constant.swift
//  Animated Onboarding
//
//  Created by Mac on 02/12/2024.
//

import UIKit

extension UIView {
    // MARK: - Object properties and values -
    func customizeButton(_ button: UIButton, title: String) {
        button.setTitle(title, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(.white, for: .normal)
    }    
}
