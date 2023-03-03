//
//  GroupOfStudent.swift
//  GroupOfStudent
//
//  Created by Pavel Shymanski on 3.03.23.
//

import Foundation

struct StudentsGroup {
    
    var numberOfGroup:String
    var group : [String]
}

let group1 = StudentsGroup(numberOfGroup: "Group №1" ,group:  ["Shymanski Pavel","Ivan Ivanov","Skulov Andrei","Nekrasov Kirill"])

let group2 = StudentsGroup(numberOfGroup: "Group №2", group:  ["Krotov Aleksander", "Nemchinski Sergei"])

let group3 = StudentsGroup(numberOfGroup: "Group №3", group:  ["Petrov Aleksander"])

let group4 = StudentsGroup(numberOfGroup: "Group №4", group:  ["Karasev Anton","Sverdlov Konstantin","Nikolaev Stepan"])

let group5 = StudentsGroup(numberOfGroup: "Group №5", group: ["Shymanski Pavel","Ivan Ivanov",
                                                              "Skulov Andrei","Nekrasov Kirill","Krotov Aleksander",
                                                              "Nemchinski Sergei","Petrov Aleksander"])

