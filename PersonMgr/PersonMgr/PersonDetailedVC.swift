//
//  PersonDetailedVC.swift
//  PersonMgr
//
//  Created by Guest User on 28/02/17.
//  Copyright © 2017 Guest User. All rights reserved.
//

import UIKit

class PersonDetailedVC: UIViewController {
    
    @IBOutlet weak var OBFirstname: UILabel!
    @IBOutlet weak var OBLastname: UILabel!
    @IBOutlet weak var OByear: UILabel!
    @IBOutlet weak var OBNationality: UILabel!
    @IBOutlet weak var OBGender: UILabel!
    
    var person : Person?

    override func viewDidLoad() {
        super.viewDidLoad()

    
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        OBFirstname.text = person?.firstname
        OBLastname.text = person?.lastname
        OByear.text = "\(person?.yearOfBirth)"
        OBNationality.text = person?.nationality
        if person?.gender == true {
            OBGender.text = "Male"
        }
        else {
            OBGender.text = "Female"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
