import Foundation

// MARK: - StartBatchContextDetails

public struct StartBatchContextDetails: Codable, Sendable {

    public init() {}
}

extension StartBatchContextDetails: CustomStringConvertible {
    public var description: String { "StartBatchContextDetails()" }
}