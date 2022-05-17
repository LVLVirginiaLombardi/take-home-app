//
//  ArtistListCell.swift
//  Spotify_API
//
//  Created by Virginia Lombardi Lopez on 17/5/22.
//
import UIKit
import Foundation

class ArtistListCell: UITableViewCell {
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    let label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Empty State Message"
        label.font = .systemFont(ofSize: 16)
        label.textColor = .gray
        label.textAlignment = .left
        label.numberOfLines = 1
        return label
    }()

    private func setupView(){
        contentView.addSubview(label)
        let layoutGuide = contentView.layoutMarginsGuide
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor),
            label.topAnchor.constraint(equalTo: layoutGuide.topAnchor),
            label.bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor),
            label.trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor),
            label.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
