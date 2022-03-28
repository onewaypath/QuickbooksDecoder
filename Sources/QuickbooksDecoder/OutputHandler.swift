//
//  OutputHandler.swift
//  
//
//  Created by Alex Young on 3/25/22.
//


public struct QuickbooksAccountOuput : Equatable{
    
    public var ID: String
    public var name : String
    public var balance: String
    
    init(ID:String, name:String, balance:String){
        self.ID = ID
        self.name = name
        self.balance = balance
    }
    
    public static func == (lhs: QuickbooksAccountOuput, rhs: QuickbooksAccountOuput) -> Bool {
        return lhs.ID == rhs.ID && lhs.name == rhs.name && lhs.balance == rhs.balance
        }
}
