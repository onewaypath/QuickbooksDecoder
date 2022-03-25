import XCTest
@testable import QuickbooksDecoder
import Foundation

final class QuickbooksDecoderTests: XCTestCase {
    func testYearToDate() throws {
        
        let data = YearToDateResponse.JSONString.data(using: .utf8)!
        let accounts = QuickbooksYearToDateDecoder.decodeCashAccounts(with: data)
        
        XCTAssertEqual(accounts.count, 3)
        let expected = ["Account Balance", "1365.40", "51.40"]
        
        for (key, value) in accounts.enumerated() {
            print ("\(value.name), \(value.ID), \(value.balance) ")
            XCTAssertEqual(accounts[key].balance, expected[key])
        }
       

           }
    
    func testCustomDate() throws {
        
        let data = CustomDateResponse.JSONString.data(using: .utf8)!
        let accounts = QuickooksCustomDateDecoder.decodeCashAccounts(with: data)
        
        XCTAssertEqual(accounts.count, 3)
        let expected = ["Account Balance", "2279.35", "51.41"]
        
        for (key, value) in accounts.enumerated() {
            print ("\(value.name), \(value.ID), \(value.balance) ")
            XCTAssertEqual(accounts[key].balance, expected[key])
        }
        

           }
    
    
}
