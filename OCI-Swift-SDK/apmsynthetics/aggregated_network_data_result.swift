import Foundation

// MARK: - AggregatedNetworkDataResult

public struct AggregatedNetworkDataResult: Codable, Sendable {

    public var aggregatedNetworkData: AggregatedNetworkData?

    private enum CodingKeys: String, CodingKey {
        case aggregatedNetworkData
    }

    public init(
                aggregatedNetworkData: AggregatedNetworkData? = nil
    ) {
        self.aggregatedNetworkData = aggregatedNetworkData
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AggregatedNetworkDataResult: CustomStringConvertible {
    public var description: String { "AggregatedNetworkDataResult()" }
}