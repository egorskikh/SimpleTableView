//
//  ViewController.swift
//  SimpleTableView
//
//  Created by Egor Gorskikh on 18.08.2021.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // MARK: - IBOutlet

    @IBOutlet weak var tableView: UITableView!

    // MARK: - Static Data
    var textArray = ["Hello",
                     ",",
                     "World",
                     "!"]

    // MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - UITableViewDelegate

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 137
    }

    // MARK: - UITableViewDataSource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return textArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",
                                                 for: indexPath) as! PinkTableViewCell
        let text = textArray[indexPath.item]
        cell.setupLabelText(text: text)
        return cell
    }

}

