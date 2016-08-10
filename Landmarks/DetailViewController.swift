//
//  DetailViewController.swift
//  Tabbar
//
//  Created by Pawan Selokar on 8/10/16.
//  Copyright © 2016 Pawan Selokar. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var detailItem: Int? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }
    
    func configureView() {
        // Update the user interface for the detail item.
        if let detail = self.detailItem {
            
            print("details \(detail)")
//            if let label = self.detailDescriptionLabel {
//                label.text = detail.description
//            }
        }
    }


    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
