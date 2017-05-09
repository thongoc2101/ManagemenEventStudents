//
//  StudentList.swift
//  ManagementStudent
//
//  Created by Phan Thi Ngoc Cam on 5/9/17.
//  Copyright © 2017 ngoccam. All rights reserved.
//

import Foundation

class StudentList {

    init() {

    }
    
    public class func students() -> [Student] {
        var studentList: Array<Student> = []
        studentList.append(Student(name: "Phan Thi Ngoc Cam", university: "HCMUTE", description: "Sinh viên năm 4", yearOld: 19))
        studentList.append(Student(name: "Tran Dang Khoa", university: "HCMUTE", description: "Sinh viên năm 4", yearOld: 20))
        studentList.append(Student(name: "Tran Thi My Le", university: "HCMUTE", description: "Sinh viên năm 4", yearOld: 21))
        
        
        return studentList
    }
    
    
}
