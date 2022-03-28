import XCTest
@testable import QuickbooksDecoder
import Foundation

final class QuickbooksDecoderTests: XCTestCase {
    
    
    
    func testYearToDate() throws {
        
        let data = CustomDateResponse.JSONString.data(using: .utf8)!
        let accounts = QuickbooksBalanceSheetDecoder.decodeCashAccounts(with: data)
        
        XCTAssertEqual(accounts.count, 2)
        var expected : [QuickbooksAccountOuput] = []
        expected.append(QuickbooksAccountOuput(ID: "51", name: "Chequing (-357)", balance: "2279.35"))
        expected.append(QuickbooksAccountOuput(ID: "53", name: "One Way Path Legal Services TRUST (-349)", balance: "51.40"))
        
        
        
        for (key, value) in accounts.enumerated() {
            print ("\(value.name), \(value.ID), \(value.balance) ")
            XCTAssertEqual(value, expected[key])
        }
       

           }
    
    func testCustomDate() throws {
        
        let data = CustomDateResponse.JSONString.data(using: .utf8)!
        let accounts = QuickbooksBalanceSheetDecoder.decodeCashAccounts(with: data)
        
        XCTAssertEqual(accounts.count, 4)
        var expected : [QuickbooksAccountOuput] = []
        expected.append(QuickbooksAccountOuput(ID: "51", name: "Chequing (-357)", balance: "2279.35"))
        expected.append(QuickbooksAccountOuput(ID: "53", name: "One Way Path Legal Services TRUST (-349)", balance: "51.40"))
        expected.append(QuickbooksAccountOuput(ID: "72", name: "Line of Credit from Personal", balance: "141684.65"))
        expected.append(QuickbooksAccountOuput(ID: "52", name: "MasterCard (5756)", balance: "43855.74"))
        
        
        for (key, value) in accounts.enumerated() {
            print ("\(value.name), \(value.ID), \(value.balance) ")
            XCTAssertEqual(value, expected[key])
        }
        

           }
    
    
}
