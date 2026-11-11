import Foundation

// MARK: - QueryResultsTopologyNodeInfo

public struct QueryResultsTopologyNodeInfo: Codable, Sendable {

    public var nodeName: String?

    private enum CodingKeys: String, CodingKey {
        case nodeName
    }

    public init(
                nodeName: String? = nil
    ) {
        self.nodeName = nodeName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryResultsTopologyNodeInfo: CustomStringConvertible {
    public var description: String { "QueryResultsTopologyNodeInfo()" }
}