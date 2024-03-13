//
//  String+Extensions.swift
//  HatchWorks
//
//  Created by Roy Quesada on 13/3/24.
//

import Foundation

extension String {
    func trimmedAndScaped()-> String {
        let trimmedString = self.trimmingCharacters(in: .whitespacesAndNewlines)
        return trimmedString
            .addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
