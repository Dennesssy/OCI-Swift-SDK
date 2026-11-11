import Foundation

// MARK: - StopBatchContextDetails

public struct StopBatchContextDetails: Codable, Sendable {

    public init() {}
}

extension StopBatchContextDetails: CustomStringConvertible {
    public var description: String { "StopBatchContextDetails()" }
}