//
//  YearToDate.swift
//
//
//  Created by Alex Young on 3/25/22.
//

import Foundation

open class QuickbooksYearToDateDecoder {
    
    public static func decodeCashAccounts(with:Data) -> Array<QuickbooksAccountOuput> {
        
        var accounts : Array<QuickbooksAccountOuput> = []
        accounts.append(QuickbooksAccountOuput(ID: "AccountID", name:"Account Name", balance:"Account Balance"))
        do {
            let balancesheet = try JSONDecoder().decode(BalanceSheetModel.self, from: with)
             
            for row in balancesheet.rows.row
            {
                for Fluffy in row.rows.row
                {
                    for Fluffyr in Fluffy.rows.row
                    {
                        
                        if let array = Fluffyr.rows, let group = Fluffyr.group, group == "CreditCards"{
                             
                        
                            for row in array.row{
                                
                                if let columnData = row.colData,
                                   columnData.count == 2{
                                    
                                    print("Hey: \(columnData)")
                                    print("==================")
                                }
                            }
                        }
                       
                        if let arr = Fluffyr.rows,let group = Fluffyr.group, group == "BankAccounts"
                        {
                        for Tentacle in arr.row
                        {
                            if let coldata = Tentacle.colData
                            {
                                var accountname = ""
                                var accountid = ""
                                var accountbalance = ""
                                if coldata.count == 2
                                {
                                    accountid = coldata[0].id ?? ""
                                    accountname = coldata[0].value
                                    accountbalance = coldata[1].value
                                }
                                accounts.append(QuickbooksAccountOuput(ID: accountid, name:accountname, balance:accountbalance))
                            }
                        }
                            
                        }
                        
                    }
                }
            }
              } catch {
                   // handle error
                  print(error.localizedDescription)
              }
        
        
        return accounts
    }
    
    
    


    // MARK: - BalanceSheet
    struct BalanceSheetModel: Codable {
        let header: BalanceSheetHeader
        let rows: BalanceSheetRows
        let columns: Columns

        enum CodingKeys: String, CodingKey {
            case header = "Header"
            case rows = "Rows"
            case columns = "Columns"
        }
    }

    // MARK: - Columns
    struct Columns: Codable {
        let column: [Column]

        enum CodingKeys: String, CodingKey {
            case column = "Column"
        }
    }

    // MARK: - Column
    struct Column: Codable {
        let colType, colTitle: String
        let metaData: [Option]

        enum CodingKeys: String, CodingKey {
            case colType = "ColType"
            case colTitle = "ColTitle"
            case metaData = "MetaData"
        }
    }

    // MARK: - Option
    struct Option: Codable {
        let name, value: String

        enum CodingKeys: String, CodingKey {
            case name = "Name"
            case value = "Value"
        }
    }

    // MARK: - BalanceSheetHeader
    struct BalanceSheetHeader: Codable {
        let reportName: String
        let option: [Option]
        let dateMacro: String? /* Becuase this one is missing in the custom date JSON. So, We've to make it optional.*/
        let reportBasis, startPeriod, currency: String
        let endPeriod: String
        let time: String
        let summarizeColumnsBy: String

        enum CodingKeys: String, CodingKey {
            case reportName = "ReportName"
            case option = "Option"
            case dateMacro = "DateMacro"
            case reportBasis = "ReportBasis"
            case startPeriod = "StartPeriod"
            case currency = "Currency"
            case endPeriod = "EndPeriod"
            case time = "Time"
            case summarizeColumnsBy = "SummarizeColumnsBy"
        }
    }

    // MARK: - BalanceSheetRows
    struct BalanceSheetRows: Codable {
        let row: [PurpleRow]

        enum CodingKeys: String, CodingKey {
            case row = "Row"
        }
    }

    // MARK: - PurpleRow
    struct PurpleRow: Codable {
        let header: Header
        let rows: PurpleRows
        let type: TypeEnum
        let group: String
        let summary: Header

        enum CodingKeys: String, CodingKey {
            case header = "Header"
            case rows = "Rows"
            case type, group
            case summary = "Summary"
        }
    }

    // MARK: - Header
    struct Header: Codable {
        let colData: [SummaryColDatum]

        enum CodingKeys: String, CodingKey {
            case colData = "ColData"
        }
    }

    // MARK: - SummaryColDatum
    struct SummaryColDatum: Codable {
        let value: String
    }

    // MARK: - PurpleRows
    struct PurpleRows: Codable {
        let row: [FluffyRow]

        enum CodingKeys: String, CodingKey {
            case row = "Row"
        }
    }

    // MARK: - FluffyRow
    struct FluffyRow: Codable {
        let header: Header
        let rows: FluffyRows
        let type: TypeEnum
        let group: String
        let summary: Header

        enum CodingKeys: String, CodingKey {
            case header = "Header"
            case rows = "Rows"
            case type, group
            case summary = "Summary"
        }
    }

    // MARK: - FluffyRows
    struct FluffyRows: Codable {
        let row: [TentacledRow]

        enum CodingKeys: String, CodingKey {
            case row = "Row"
        }
    }

    // MARK: - TentacledRow
    struct TentacledRow: Codable {
        let header: PurpleHeader?
        let rows: TentacledRows?
        let type: TypeEnum
        let group: String?
        let summary: Header?
        let colData: [RowColDatum]?

        enum CodingKeys: String, CodingKey {
            case header = "Header"
            case rows = "Rows"
            case type, group
            case summary = "Summary"
            case colData = "ColData"
        }
    }

    // MARK: - RowColDatum
    struct RowColDatum: Codable {
        let id: String?
        let value: String
    }

    // MARK: - PurpleHeader
    struct PurpleHeader: Codable {
        let colData: [RowColDatum]

        enum CodingKeys: String, CodingKey {
            case colData = "ColData"
        }
    }

    // MARK: - TentacledRows
    struct TentacledRows: Codable {
        let row: [StickyRow]

        enum CodingKeys: String, CodingKey {
            case row = "Row"
        }
    }

    // MARK: - StickyRow
    struct StickyRow: Codable {
        let colData: [RowColDatum]?
        let type: TypeEnum
        let header: Header?
        let rows: StickyRows?
        let group: String?
        let summary: Header?

        enum CodingKeys: String, CodingKey {
            case colData = "ColData"
            case type
            case header = "Header"
            case rows = "Rows"
            case group
            case summary = "Summary"
        }
    }

    // MARK: - StickyRows
    struct StickyRows: Codable {
        let row: [IndigoRow]

        enum CodingKeys: String, CodingKey {
            case row = "Row"
        }
    }

    // MARK: - IndigoRow
    struct IndigoRow: Codable {
        let colData: [RowColDatum]
        let type: TypeEnum

        enum CodingKeys: String, CodingKey {
            case colData = "ColData"
            case type
        }
    }

    enum TypeEnum: String, Codable {
        case data = "Data"
        case section = "Section"
    }

}

fileprivate extension Array where Element == QuickbooksYearToDateDecoder.PurpleRow{
    
    
    func getRows(group: String) -> [QuickbooksYearToDateDecoder.StickyRow]?{
         
        for row in self{
            
            
            if row.group == group{
                  
                if let row = row.rows.row.getRows(group: group){
                    
                    return row
                }

            }else{
                
                if let row = row.rows.row.getRows(group: group){
                 
                    return row
                }
            }
        }
         
        return nil
         
    }
}

fileprivate extension Array where Element == QuickbooksYearToDateDecoder.FluffyRow{
     
    func getRows(group: String) -> [QuickbooksYearToDateDecoder.StickyRow]?{
        
        for row in self{
            
            if row.group == group{
                
                return row.rows.row.first(where: {$0.group == group})?.rows?.row
               
            }else{
                 
                if let row = row.rows.row.getRows(group: group){
                    
                    return row
                } 
            }
        }
      
        return nil
    }
}

fileprivate extension Array where Element == QuickbooksYearToDateDecoder.TentacledRow{
     
    func getRows(group: String) -> [QuickbooksYearToDateDecoder.StickyRow]?{
        
        return self.first(where: {$0.group == group})?.rows?.row
    }
}


