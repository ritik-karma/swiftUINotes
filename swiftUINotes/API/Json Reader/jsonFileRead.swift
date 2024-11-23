//
//  jsonFileRead.swift
//  swiftUINotes
//
//  Created by Ritik Karma on 11/19/24.
//

import Foundation

func loadData() -> [user] {
    //return type is array of struct users
    guard let url = Bundle.main.url(forResource: "userData", withExtension: "json") else {
        print("json file not found")
        return []
    } //Storing file location in 'url'
    let data = try? Data(contentsOf: url) //Getting json content in 'data'
    let users = try? JSONDecoder().decode([user].self, from: data!) // Decoding data(json) in struct users formate which we have created in userModel file & storing in users var
    return users!
}
