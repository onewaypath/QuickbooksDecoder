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
    
}

extension Array where Element == QuickbooksAccountOuput{
    
    mutating func add(from sheet: QuickooksCustomDateDecoder.BalanceSheet, group: String){
          
        if let accounts = sheet.rows.row.getRows(group: group)?.quickBooksAccounts{
               
            self.append(contentsOf: accounts)
        }
        
    }
}
