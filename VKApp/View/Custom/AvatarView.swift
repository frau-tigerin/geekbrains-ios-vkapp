//
//  AvatarView.swift
//  VKApp
//
//  Created by Valerie Solovyova on 26.10.2020.
//  Copyright © 2020 Valerie Solovyova. All rights reserved.
//

import UIKit

@IBDesignable
class AvatarView: UIView {
    
    @IBInspectable
    var shadowRadius: CGFloat = 0 {
        didSet {
            updateShadow()
        }
    }
    
    @IBInspectable
    var shadowColor: UIColor

    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        return imageView
    }()
    
    lazy var shadowView: UIView = {
        let view = UIView()
        view.clipsToBounds = false
        view.backgroundColor = .white
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        addSubview(shadowView)
        addSubview(imageView)
        
        shadowView.translatesAutoresizingMaskIntoConstraints = false
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            shadowView.topAnchor.constraint(equalTo: topAnchor),
            
        ])
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.layer
    }

}
