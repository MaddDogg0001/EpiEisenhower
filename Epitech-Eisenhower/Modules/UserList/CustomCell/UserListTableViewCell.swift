//
//  UserListTableViewCell.swift
//  Epitech-Eisenhower
//
//  Created by Odet Alexandre on 26/03/2018.
//  Copyright © 2018 Odet Alexandre. All rights reserved.
//

import Foundation
import UIKit

final class UserListTableViewCell: UITableViewCell {
    @IBOutlet weak var profileImage: UIImageView?
    @IBOutlet weak var nameLabel: UILabel?
    
    func buildCell(with user: UserPreviewCellProtocol) {
        nameLabel?.text = user.name
    }
}
