import Foundation

// MARK: - QueryResultsTopologyInfo

public struct QueryResultsTopologyInfo: Codable, Sendable {

    public var nodes: [QueryResultsTopologyNodeInfo]?

    private enum CodingKeys: String, CodingKey {
        case nodes
    }

    public init(
                nodes: [QueryResultsTopologyNodeInfo]? = nil
    ) {
        self.nodes = nodes
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension QueryResultsTopologyInfo: CustomStringConvertible {
    public var description: String { "QueryResultsTopologyInfo()" }
}