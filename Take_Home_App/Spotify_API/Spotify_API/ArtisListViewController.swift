//
//  ViewController.swift
//  Spotify_API
//
//  Created by Virginia Lombardi Lopez on 17/5/22.
//

import UIKit

class ArtisListViewController: UIViewController {
//    MARK: - IBOUTLETS
    @IBOutlet weak var artistListTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
//    MARK: - DELEGATE AND DATASOURCE TABLEVIEW
extension ArtisListViewController: UITableViewDelegate, UITableViewDataSource {
//    MARK: - NUMBEROFSECTIONS FUNC
    func numberOfSections(in tableView: UITableView) -> Int {
        if myArray.count > 0 {
            self.tableView.backgroundView = nil
            self.tableView.separatorStyle = .singleLine
            return 1
        }

        let rect = CGRect(x: 0,
                          y: 0,
                          width: self.tableView.bounds.size.width,
                          height: self.tableView.bounds.size.height)
        let noDataLabel: UILabel = UILabel(frame: rect)

        noDataLabel.text = "Custom message."
        noDataLabel.textColor = UIColor.white
        noDataLabel.textAlignment = NSTextAlignment.center
        self.tableView.backgroundView = noDataLabel
        self.tableView.separatorStyle = .none

        return 0
    }
//    MARK: - CELLFORROWAT FUNC
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let artistListCell = tableView.dequeueReusableCell(withIdentifier: "artistCell", for: indexPath)
        as? ArtistListCell else {
            return UITableViewCell()
        }
        
        return artistListCell
    }
    
//    MARK: - NUMBEROFROWSINSECTION FUNC
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

}
//extension UITableView {
//    fileprivate func configureLabelLayout(_ messageLabel: UILabel) {
//        messageLabel.translatesAutoresizingMaskIntoConstraints = false
//        let labelTop = CGFloat(15)
//        messageLabel.topAnchor.constraint(equalTo: backgroundView?.topAnchor ?? NSLayoutAnchor(), constant: labelTop).isActive = true
//        messageLabel.widthAnchor.constraint(equalTo: backgroundView?.widthAnchor ?? NSLayoutAnchor(), constant: -20).isActive = true
//        messageLabel.centerXAnchor.constraint(equalTo: backgroundView?.centerXAnchor ?? NSLayoutAnchor(), constant: 0).isActive = true
//    }
//    fileprivate func configureLabel(_ message: String) {
//        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
//        messageLabel.textColor = .black
//        messageLabel.numberOfLines = 0
//        messageLabel.textAlignment = .center
//        let fontSize = CGFloat(15)
//        let font: UIFont = UIFont(name: "MyriadPro-Regular", size: fontSize) ?? UIFont()
//        messageLabel.font = font
//        messageLabel.text = message
//        self.backgroundView = UIView()
//        self.backgroundView?.addSubview(messageLabel)
//        configureLabelLayout(messageLabel)
//        self.separatorStyle = .none
//    }
//    func setEmptyMessage(_ message: String, _ isEmpty: Bool) {
//        if isEmpty { // instead of making the check in every TableView DataSource in the project
//            configureLabel(message)
//        }
//        else {
//            restore()
//        }
//    }
//    func restore() {
//        self.backgroundView = nil
//        self.separatorStyle = .singleLine
//    }
//}
