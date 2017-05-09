//
//  StudentDetailViewController.swift
//  ManagementStudent
//
//  Created by Phan Thi Ngoc Cam on 5/9/17.
//  Copyright © 2017 ngoccam. All rights reserved.
//

import UIKit

class StudentDetailViewController: UIViewController {

    @IBOutlet var lblName: UILabel!
    @IBOutlet var lblUniversity: UILabel!
    @IBOutlet var txtDescription: UITextView!
    @IBOutlet var lblYearOld: UILabel!

    
    var student: Student?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Thông tin chi tiết"
        lblName.text = student?.name
        lblUniversity.text = student?.university
        txtDescription.text = student?.description
        if let x = student?.yearOld {
            lblYearOld.text = "\(x)"
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}
