import Foundation

// MARK: - WlsDomainCredentialSummary

public struct WlsDomainCredentialSummary: Codable, Sendable {

    public var type: String?
    public var strategy: WlsDomainCredentialStrategyEnum?

    private enum CodingKeys: String, CodingKey {
        case type, strategy
    }

    public init(
                type: String? = nil,
                strategy: WlsDomainCredentialStrategyEnum? = nil
    ) {
        self.type = type
        self.strategy = strategy
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension WlsDomainCredentialSummary: CustomStringConvertible {
    public var description: String { "WlsDomainCredentialSummary()" }
}