//
//  NewsTableViewCell.swift
//  TUM Campus App
//
//  This file is part of the TUM Campus App distribution https://github.com/TCA-Team/iOS
//  Copyright (c) 2018 TCA
//
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, version 3.
//
//  This program is distributed in the hope that it will be useful, but
//  WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
//  General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program. If not, see <http://www.gnu.org/licenses/>.
//

import UIKit

class NewsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var detailImageView: UIImageView!
    
    var newsItem: News? {
        didSet {
            guard let newsItem = newsItem else {
                return
            }
            
            titleLabel.text = newsItem.title
            dateLabel.text = newsItem.date.string(using: "hh:mm a - dd MMM, YYYY")
            
            if let imageUrl = newsItem.imageUrl {
                detailImageView.kf.setImage(with: URL(string: imageUrl))
            }
        }
    }

}
