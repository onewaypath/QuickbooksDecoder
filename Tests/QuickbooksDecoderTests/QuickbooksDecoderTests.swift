import XCTest
@testable import QuickbooksDecoder

final class QuickbooksDecoderTests: XCTestCase {
    func testYearToDate() throws {
        
        let data = YearToDateResponse.JSONString.data(using: .utf8)!
        let accounts = QuickooksYearToDateDecoder.decodeCashAccounts(with: data)
        
        for account in accounts {
            print ("\(account.name), \(account.ID), \(account.balance) ")
            
        }
        XCTAssertEqual(accounts[1].balance, "1365.40")
        XCTAssertEqual(accounts[2].balance, "51.40")

           }
    
    func testCustomDate() throws {
        
        let data = CustomDateResponse.JSONString.data(using: .utf8)!
        let accounts = QuickooksCustomDateDecoder.decodeCashAccounts(with: data)
        
        for account in accounts {
            print ("\(account.name), \(account.ID), \(account.balance) ")
            
        }
        XCTAssertEqual(accounts[1].balance, "1365.40")
        XCTAssertEqual(accounts[2].balance, "51.40")

           }
    
    
}
