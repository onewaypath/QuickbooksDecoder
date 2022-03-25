//
//  OutputHandler.swift
//  
//
//  Created by Alex Young on 3/25/22.
//


public struct QuickbooksAccountOuput {
    
    public var ID: String
    public var name : String
    public var balance: String
    
    init(ID:String, name:String, balance:String){
        self.ID = ID
        self.name = name
        self.balance = balance
    }
}
