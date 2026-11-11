import Foundation

// MARK: - AvailableCapability

public struct AvailableCapability: Codable, Sendable {

    public var capability: String?
    public var count: Int?

    private enum CodingKeys: String, CodingKey {
        case capability, count
    }

    public init(
                capability: String? = nil,
                count: Int? = nil
    ) {
        self.capability = capability
        self.count = count
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AvailableCapability: CustomStringConvertible {
    public var description: String { "AvailableCapability()" }
}