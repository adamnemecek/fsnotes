//
//  String+.swift
//  FSNotes
//
//  Created by Jeff Hanbury on 29/08/17.
//  Copyright © 2017 Oleksandr Glushchenko. All rights reserved.
//

extension String {
    func condenseWhitespace() -> String {
        let components = self.components(separatedBy: .whitespacesAndNewlines)
        return components.filter { !$0.isEmpty }.joined(separator: " ")
    }

    // Search the string for the existence of any of the terms in the
    // provided array of terms.
    func localizedCaseInsensitiveContainsTerms(_ terms: [Substring]) -> Bool {
        // Use magic from https://stackoverflow.com/a/41902740/2778502
        return terms.contains { !self.localizedLowercase.contains($0) }
    }

    func trim() -> String {
        return self.trimmingCharacters(in: .whitespaces)
    }
}
