//
//  CollectionViewCell.swift
//  Cakk Movies
//
//  Created by Isaac on 10/13/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var viewWrapper: UIView!
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
