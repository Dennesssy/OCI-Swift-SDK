import Foundation

// MARK: - Usage

public struct Usage: Codable, Sendable {

    public var modelDetails: ModelDetails?
    public var usageDetails: UsageDetails?

    private enum CodingKeys: String, CodingKey {
        case modelDetails, usageDetails
    }

    public init(
                modelDetails: ModelDetails? = nil,
                usageDetails: UsageDetails? = nil
    ) {
        self.modelDetails = modelDetails
        self.usageDetails = usageDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Usage: CustomStringConvertible {
    public var description: String { "Usage()" }
}