import Foundation

// MARK: - AggregateNetworkDataDetails

public struct AggregateNetworkDataDetails: Codable, Sendable {

    public var vantagePointExecutionTimes: [VantagePointExecution]

    private enum CodingKeys: String, CodingKey {
        case vantagePointExecutionTimes
    }

    public init(
                vantagePointExecutionTimes: [VantagePointExecution]
    ) {
        self.vantagePointExecutionTimes = vantagePointExecutionTimes
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AggregateNetworkDataDetails: CustomStringConvertible {
    public var description: String { "AggregateNetworkDataDetails()" }
}