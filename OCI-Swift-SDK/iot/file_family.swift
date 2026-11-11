import Foundation

// MARK: - FileFamily

public struct FileFamily: Codable, Sendable {

    public init() {}
}

extension FileFamily: CustomStringConvertible {
    public var description: String { "FileFamily()" }
}