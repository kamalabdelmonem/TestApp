//
//  TextCell.swift
//  TestApp
//
//  Created by kamal abdelmonem on 17/02/2023.
//

import UIKit

class TextCell: UITableViewCell {

    @IBOutlet weak var textTitle: UILabel!

    func setupCell(text:String){
        textTitle.text = text
    }
}
