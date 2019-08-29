//
//  RefflerController.swift
//  App
//
//  Created by Michel Anderson Lutz Teixeira on 28/08/19.
//

import Vapor

final class RefflerController {
    private let directory = DirectoryConfig.detect()
    private let staticDir = "Resources/CSV"
    private let decoder = JSONDecoder()

    private func randomizeName() -> String? {
        do {
            let data = try Data(contentsOf: URL(fileURLWithPath: directory.workDir)
                .appendingPathComponent(staticDir, isDirectory: true)
                .appendingPathComponent("Demo.csv", isDirectory: false))

            let csv = CSwiftV(with: data.toString())
            let ramdonIndex = Int.random(in: 0 ..< csv.rows.count)
            let row = csv.rows[ramdonIndex].first
            return row
        } catch {
            print("error: \(error)")
            return nil
        }
    }

    func ramdomName() -> String {
        guard let name = randomizeName() else { return ""}
        return name
    }
}
