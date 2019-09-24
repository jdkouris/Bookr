//
//  BookDetailViewController.swift
//  Bookr
//
//  Created by John Kouris on 9/24/19.
//  Copyright © 2019 John Kouris. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController {
    
    @IBOutlet var bookImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var ratingImageView: UIImageView!
    @IBOutlet var descriptionLabel: UILabel!
    @IBOutlet var reviewsTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
