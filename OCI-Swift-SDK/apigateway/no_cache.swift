import Foundation

// MARK: - NoCache

public struct NoCache: Codable, Sendable {

    public init() {}
}

extension NoCache: CustomStringConvertible {
    public var description: String { "NoCache()" }
}