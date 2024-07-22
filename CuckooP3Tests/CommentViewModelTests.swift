//
//  CommentViewModelTests.swift
//  CuckooP3Tests
//
//  Created by Ubit Cloud on 12/07/2024.
//


import XCTest
import Cuckoo
@testable import CuckooP3

class CommentViewModelTests: XCTestCase {

    func testComments() {
        let sut = CommentViewModel(commentViewService: MockCommentViewService())
        sut.fetchComments()
        XCTAssertEqual(sut.comments.count, 3, "Expected 3 comments to be fetched.")
    }
    
//
//       func testComments() {
//           // Step 1: Initialize the Mock Object
//           let mockService = MockCommentViewService()
//           
//           // Step 2: Stub the Mock Methods
//           stub(mockService) { stub in
//               when(stub.getComments(completion: any())).then { completion in
//                   guard let jsonData = self.readLocalJsonFile() else {
//                       completion(.failure(.NoData))
//                       return
//                   }
//                   do {
//                       let obj = try JSONDecoder().decode([CommentModel].self, from: jsonData)
//                       completion(.success(obj))
//                   } catch {
//                       completion(.failure(.DecodingError))
//                   }
//               }
//           }
//           
//           // Step 3: Inject the Mock into the SUT
//           let sut = CommentViewModel(commentViewService: mockService)
//           
//           // Step 4: Perform the Test
//           sut.fetchComments()
//           
//           // Verify the expected behavior
//           XCTAssertEqual(sut.comments.count, 3, "Expected 3 comments to be fetched.")
//       }
    
    
    //    func readLocalJsonFile() -> Data? {
    //           do {
    //               guard let fileUrl = Bundle(for: type(of: self)).url(forResource: "Comments", withExtension: "json") else {
    //                   return nil
    //               }
    //               let data = try Data(contentsOf: fileUrl)
    //               return data
    //           } catch let error {
    //               print(error.localizedDescription)
    //               return nil
    //           }
    //       }
    
    
//    func testCompareObjects() {
//        let sut = CommentViewModel(commentViewService: MockCommentViewService())
//        
////        let expectation = self.expectation(description: "Fetch comments")
//
//        sut.fetchComments()
//        
////        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
//            do {
//                if let fileUrl = Bundle.main.url(forResource: "Comments", withExtension: "json") {
//                    let data = try Data(contentsOf: fileUrl)
//                    let json = try JSONDecoder().decode([CommentModel].self, from: data)
//                    
//                    XCTAssertEqual(sut.comments, json, "Comments fetched do not match JSON data.")
//                } else {
//                    XCTFail("File 'Comments.json' not found in the main bundle.")
//                }
//            } catch {
//                XCTFail("Failed to load JSON data from file: \(error.localizedDescription)")
//            }
////            expectation.fulfill()
////        }
//        
////        waitForExpectations(timeout: 10, handler: nil)
//    }
    
    
//    func test_FetchCommentsFromAPI() {
//         let expectation = XCTestExpectation(description: "Fetch comments from API")
//
//         let commentViewService: CommentViewServiceDelegate
//
//         let sut = CommentViewModel(commentViewService: RealCommentViewService())
//
//        commentViewService.getComments(completion: {
//            switch $0 {
//            case .success(let comments):
//                // Assuming your API returns an array of CommentModel
//                XCTAssertFalse(comments.isEmpty, "Returned comments should not be empty")
//
//                expectation.fulfill()
//
//            case .failure(let error):
//                XCTFail("Failed to fetch comments from API: \(error.localizedDescription)")
//            }
//        })
//
//         wait(for: [expectation], timeout: 10.0)
//     }
    
    
    
}
