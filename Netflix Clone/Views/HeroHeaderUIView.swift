//
//  HeroHeaderUIView.swift
//  Netflix Clone
//
//  Created by Shahriar Ahsan Taisiq on 27/6/24.
//

import UIKit

class HeroHeaderUIView: UIView {
    
    private let heroImageVIew: UIImageView = {
       let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.image = UIImage(named: "heroImage")
        return imageView
    }()
    
    private func addGradient (){
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.systemBackground.cgColor
        ]
        gradientLayer.frame = bounds
        layer.addSublayer(gradientLayer)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addSubview(heroImageVIew)
        addGradient()
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        heroImageVIew.frame = bounds
    }
    
    required init(coder: NSCoder) {
        fatalError()
    }
}
