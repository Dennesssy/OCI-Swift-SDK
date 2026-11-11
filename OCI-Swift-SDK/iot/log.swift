import Foundation

// MARK: - Log

public struct Log: Codable, Sendable {

    public init() {}
}

extension Log: CustomStringConvertible {
    public var description: String { "Log()" }
}