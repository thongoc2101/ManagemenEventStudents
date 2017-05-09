//
//  AddStudentsViewController.swift
//  ManagementStudent
//
//  Created by Phan Thi Ngoc Cam on 5/9/17.
//  Copyright © 2017 ngoccam. All rights reserved.
//

import UIKit

class AddStudentViewController: UIViewController {
    
    @IBOutlet var txtYearOld: UITextField!
    @IBOutlet var txtDescription: UITextView!
    @IBOutlet var txtName: UITextField!
    @IBOutlet var txtUniversity: UITextField!
    
    
    override func viewDidLoad() {
        
                super.viewDidLoad()
        txtYearOld.keyboardType = UIKeyboardType.decimalPad
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnSave(_ sender: Any) {
        if txtName.text!.isEmpty || txtUniversity.text!.isEmpty || txtDescription.text!.isEmpty || txtYearOld.text!.isEmpty {
           
            
            // Xuất thông báo khi nhập sai hoặc thiếu
            let alert = UIAlertController(title: "Lỗi", message: "Bạn chưa điền đầy đủ thông tin hoặc thông tin nhập chưa chính xác!!", preferredStyle: UIAlertControllerStyle.alert);
            alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil));
            self.present(alert, animated: true, completion: nil);
        }
        else {
            TempStudent.check = true
            let student: Student = Student(name: txtName.text!, university: txtUniversity.text!, description: txtDescription.text!, yearOld: Int(txtYearOld.text!)!)
            TempStudent.student = student
            self.navigationController?.popViewController(animated: true)
        }
    }

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        txtName.resignFirstResponder()
        txtUniversity.resignFirstResponder()
        txtDescription.resignFirstResponder()
        txtYearOld.resignFirstResponder()
        return true
    }
    
    @IBAction func userTappedBackground(sender: AnyObject){
        txtName.resignFirstResponder()
        txtUniversity.resignFirstResponder()
        txtDescription.resignFirstResponder()
        txtYearOld.resignFirstResponder()
    }
    
    @IBAction func userTappedBackground(_ sender: Any) {
        view.endEditing(true)
    }

}
