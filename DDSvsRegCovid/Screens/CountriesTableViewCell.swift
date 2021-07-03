//
//  CountriesTableViewCell.swift
//  DDSvsRegCovid
//
//  Created by Ben Huggins on 6/22/21.
//

import UIKit

class CountriesTableViewCell: UITableViewCell {

    var itemLandingPad: Country? {
        didSet{
            updateViews()
        }
    }
    func updateViews() {
        guard let unwrappedItem = itemLandingPad else {return}
        countriesNameLabel.text = unwrappedItem.name
       // ISOLabel.text = unwrappedItem.iso
        
    }


    @IBOutlet weak var countriesNameLabel: UILabel!
}

