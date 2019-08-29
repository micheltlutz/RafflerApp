//
//  Data+toString.swift
//  erpBase
//
//  Created by Michel Anderson Lutz Teixeira on 16/11/18.
//

import Foundation
extension Data {
    func toString() -> String {
        // swiftlint:disable force_unwrapping
        return (String(data: self, encoding: .utf8)?.replacingOccurrences(of: "\\/", with: ""))!
    }
}
