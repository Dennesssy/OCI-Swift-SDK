import Foundation

// MARK: - ManualBuildRunSource

public struct ManualBuildRunSource: Codable, Sendable {

    public init() {}
}

extension ManualBuildRunSource: CustomStringConvertible {
    public var description: String { "ManualBuildRunSource()" }
}