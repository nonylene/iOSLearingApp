//
//  nonyappTests.swift
//  nonyappTests
//
//  Created by nonylene on 2/10/16.
//  Copyright © 2016 nonylene. All rights reserved.
//

import XCTest
@testable import nonyapp

class nonyappTests: XCTestCase {

    func testInitialize() {
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)

        // Failure cases.
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName, "Empty name is invalid")



        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "negative, invalid")

    }
}
