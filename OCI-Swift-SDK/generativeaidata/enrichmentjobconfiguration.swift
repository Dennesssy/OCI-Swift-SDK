import Foundation

// MARK: - enrichmentjobconfiguration

public struct enrichmentjobconfiguration: Codable, Sendable {

    public var jsonData: Data?
    public var enrichmentJobType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, enrichmentJobType
    }

    public init(
                jsonData: Data? = nil,
                enrichmentJobType: String? = nil
    ) {
        self.jsonData = jsonData
        self.enrichmentJobType = enrichmentJobType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension enrichmentjobconfiguration: CustomStringConvertible {
    public var description: String { "enrichmentjobconfiguration()" }
}