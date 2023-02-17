//
//  Search.swift
//  TestApp
//
//  Created by kamal abdelmonem on 17/02/2023.
//

import UIKit

class BannerCVC: UICollectionViewCell {
    
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var iconView: UIView!

    override func awakeFromNib() {
        super.awakeFromNib()
        iconImage.layer.cornerRadius = 10
        iconImage.clipsToBounds = true
        iconView.layer.cornerRadius = 10
        iconView.layer.shadowColor = UIColor.black.cgColor
        iconView.layer.shadowOpacity = 0.3
        iconView.layer.shadowOffset = .zero
        iconView.layer.shadowRadius = 4

    }
    func setupCell(icon:String){
        self.iconImage.image = UIImage(named: icon)
    }
}
