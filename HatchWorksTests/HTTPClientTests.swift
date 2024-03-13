//
//  HTTPClientTests.swift
//  HatchWorksTests
//
//  Created by Roy Quesada on 13/3/24.
//

import XCTest
@testable import HatchWorks

class HTTPClientTests: XCTestCase {
    var httpClient: HTTPClient!
    
    override func setUpWithError() throws {
        super.setUp()
        httpClient = HTTPClient()
    }

    override func tearDownWithError() throws {
        httpClient = nil
        super.tearDown()
    }

    func testGetMovieBy_ValidSearch_Success() {
        // Given
        let expectation = self.expectation(description: "Get movie by search")
        let search = "Inception"
        
        // When
        httpClient.getMovieBy(search: search) { result in
            // Then
            switch result {
            case .success(let movies):
                XCTAssertNotNil(movies)
                // Additional assertions can be added here
            case .failure:
                XCTFail("Expected success, got failure")
            }
            expectation.fulfill()
        }

        waitForExpectations(timeout: 5, handler: nil)
    }

    func testGetMovieBy_InvalidSearch_Failure() {
        // Similar setup as the previous test, but for invalid search
    }

    func testGetMovieDetailsBy_ValidImdbId_Success() {
        // Similar setup as testGetMovieBy_ValidSearch_Success but for movie details
    }

    func testGetMovieDetailsBy_InvalidImdbId_Failure() {
        // Similar setup as the previous test, but for invalid IMDb ID
    }
}
