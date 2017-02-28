//
//  Person.swift
//  PersonMgr
//
//  Created by Guest User on 28/02/17.
//  Copyright © 2017 Guest User. All rights reserved.
//

import Foundation

class Person {
    var firstname : String
    var lastname : String
    var yearOfBirth : Int
    var nationality : String
    var gender : Bool

    init(ft : String, lt : String) {
        self.firstname = ft
        self.lastname = lt
        self.yearOfBirth = 0
        self.nationality = "France"
        self.gender = true
    }

  /*
    init(ft : String, lt : String, year : Int, nat : String, gen : Bool) {
        self.firstname = ft
        self.lastname = lt
        self.yearOfBirth = year
        self.nationality = nat
        self.gender = gen
        
    }
*/

}
