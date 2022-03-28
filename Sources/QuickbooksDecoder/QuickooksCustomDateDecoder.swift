//
//  CustomDate.swift
//
//
//  Created by Alex Young on 3/25/22.
//

import Foundation


open class QuickooksCustomDateDecoder{
 
    public static func decodeCashAccounts(with:Data) -> Array<QuickbooksAccountOuput> {
        
        var accounts : Array<QuickbooksAccountOuput> = []
        accounts.append(QuickbooksAccountOuput(ID: "AccountID", name:"Account Name", balance:"Account Balance"))
        do {
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromUpperCamelCase
            
            let balancesheet = try decoder.decode(BalanceSheet.self, from: with)
            accounts.add(from: balancesheet, group: "CreditCards")
             
        }catch{
            
            fatalError(error.localizedDescription)
        }
        
        return accounts
    }
    
    struct BalanceSheet: Codable {
      
        let header: Header
        let rows: Rows
        let columns: Columns
 
        struct Header: Codable{
             
            let dateMacro: String?
            let time, reportName, reportBasis, startPeriod, endPeriod, summarizeColumnsBy, currency: String
            
            
            let option: [Option]
            struct Option: Codable{
                
                let name: String
                let value: String
            }
        }
        
        struct Columns: Codable{
            
            let column: [Column]
            
            struct Column: Codable{
                
                let colTitle: String
                let colType: String
                let metaData: [Meta]
                 
                struct Meta: Codable{
                    
                    let name: String
                    let value: String
                }
            }
        }
        
        struct Rows: Codable{
            
            let row: [Row]
            
            struct Row: Codable{
                
                let header: Column?
                let rows: Rows?
                let summary: Column?
                let type: String?
                let group: String?
                
                let colData: [Column.Data]?
                
                struct Column: Codable{
                     
                    let colData: [Data]
                    
                    struct Data: Codable{
                        
                        let value: String
                        let id: String?
                    }
                     
                }
            }
        }
    }
}
 
extension QuickooksCustomDateDecoder.BalanceSheet.Rows.Row{
    
    var quickBooksAccounts: [QuickbooksAccountOuput]? {
        
        var output: [QuickbooksAccountOuput] = []

        if let datas = self.rowsColumnDatas{
            
            
            for data in datas {
               
                if let nameAndId = data.first(where: {$0.id != nil}),
                   let balance = data.first(where: {$0.id == nil})?.value{
                   
                    if let id = nameAndId.id{
                     
                        let name = nameAndId.value
                        output.append(QuickbooksAccountOuput(ID: id, name: name, balance: balance))
                    }
                }
            }
        }
        
        return output.count > 0 ? output : nil
    }
    
    var rowsColumnDatas: [[QuickooksCustomDateDecoder.BalanceSheet.Rows.Row.Column.Data]]?{
        
        var columnData: [[QuickooksCustomDateDecoder.BalanceSheet.Rows.Row.Column.Data]] = []
         
        if let rows = self.rows?.row{
             
            for row in rows{
                
                if let columns = row.colData{
                    
                    columnData.append(columns)
                }
            }
        }
        
        return columnData.count > 0 ? columnData : nil
    }
    
}

extension Array where Element == QuickooksCustomDateDecoder.BalanceSheet.Rows.Row{
     
    
    func getRows(group name: String) -> Element?{
         
        for row in self{
            
            if let group = row.group{
                
                if group == name{
                    
                    return row
                }
            }
            
            if let rows = row.rows?.row{
                
                if let row = rows.getRows(group: name){
                    
                    return row
                }
            }
        }
         
        return nil
         
    }
}
