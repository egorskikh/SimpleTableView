//
//  PinkTableViewCell.swift
//  SimpleTableView
//
//  Created by Egor Gorskikh on 18.08.2021.
//

import UIKit

class PinkTableViewCell: UITableViewCell {

    @IBOutlet weak var label: UILabel!

    func setupLabelText(text: String) {
        label.text = text
    }

}
