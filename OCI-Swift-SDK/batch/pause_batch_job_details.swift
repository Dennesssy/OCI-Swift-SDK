import Foundation

// MARK: - PauseBatchJobDetails

public struct PauseBatchJobDetails: Codable, Sendable {

    public init() {}
}

extension PauseBatchJobDetails: CustomStringConvertible {
    public var description: String { "PauseBatchJobDetails()" }
}