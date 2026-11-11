import Foundation

// MARK: - LogGroup

public struct LogGroup: Codable, Sendable {

    public init() {}
}

extension LogGroup: CustomStringConvertible {
    public var description: String { "LogGroup()" }
}