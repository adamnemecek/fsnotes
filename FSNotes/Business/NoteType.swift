//
//  NoteFileType.swift
//  FSNotes
//
//  Created by Oleksandr Glushchenko on 1/6/18.
//  Copyright © 2018 Oleksandr Glushchenko. All rights reserved.
//

enum NoteType: String {
    case Markdown = "md"
    case RichText = "rtf"
    case PlainText = "txt"

    static func withExt(rawValue: String) -> NoteType {
        switch rawValue {
            case "markdown", "md", "mkd": return .Markdown
            case "rtf": return .RichText
            default: return .PlainText
        }
    }
}
