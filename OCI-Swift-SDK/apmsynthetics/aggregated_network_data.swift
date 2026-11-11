import Foundation

// MARK: - AggregatedNetworkData

public struct AggregatedNetworkData: Codable, Sendable {

    public var resultState: AggregatedNetworkDataResultStateEnum
    public var vantagePointNodes: [VantagePointNode]?
    public var nodesByLevel: [[Node]]?
    public var links: [String: Link]?
    public var errorDetails: String?

    private enum CodingKeys: String, CodingKey {
        case resultState, vantagePointNodes, nodesByLevel, links, errorDetails
    }

    public init(
                resultState: AggregatedNetworkDataResultStateEnum,
                vantagePointNodes: [VantagePointNode]? = nil,
                nodesByLevel: [[Node]]? = nil,
                links: [String: Link]? = nil,
                errorDetails: String? = nil
    ) {
        self.resultState = resultState
        self.vantagePointNodes = vantagePointNodes
        self.nodesByLevel = nodesByLevel
        self.links = links
        self.errorDetails = errorDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AggregatedNetworkData: CustomStringConvertible {
    public var description: String { "AggregatedNetworkData()" }
}