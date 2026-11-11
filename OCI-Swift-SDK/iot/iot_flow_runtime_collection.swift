import Foundation

// MARK: - IotFlowRuntimeCollection

public struct IotFlowRuntimeCollection: Codable, Sendable {

    public var items: [IotFlowRuntimeSummary]

    private enum CodingKeys: String, CodingKey {
        case items
    }

    public init(
                items: [IotFlowRuntimeSummary]
    ) {
        self.items = items
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension IotFlowRuntimeCollection: CustomStringConvertible {
    public var description: String { "IotFlowRuntimeCollection()" }
}