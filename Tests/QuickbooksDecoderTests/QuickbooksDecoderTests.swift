import XCTest
@testable import QuickbooksDecoder
import Foundation

final class QuickbooksDecoderTests: XCTestCase {
    func testYearToDate() throws {
        
        let data = YearToDateResponse.JSONString.data(using: .utf8)!
        let accounts = QuickbooksBalanceSheetDecoder.decodeCashAccounts(with: data)
        
        XCTAssertEqual(accounts.count, 2)
        let expected = ["1365.40", "51.40"]
        
        for (key, value) in accounts.enumerated() {
            print ("\(value.name), \(value.ID), \(value.balance) ")
            XCTAssertEqual(accounts[key].balance, expected[key])
        }
       

           }
    
    func testCustomDate() throws {
        
        let data = CustomDateResponse.JSONString.data(using: .utf8)!
        let accounts = QuickbooksBalanceSheetDecoder.decodeCashAccounts(with: data)
        
        XCTAssertEqual(accounts.count, 2)
        let expected = ["2279.35", "51.40"] 
        
        for (key, value) in accounts.enumerated() {
            print ("\(value.name), \(value.ID), \(value.balance) ")
            XCTAssertEqual(accounts[key].balance, expected[key])
        }
        

           }
    
    
}
