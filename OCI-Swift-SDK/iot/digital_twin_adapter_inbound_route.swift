import Foundation
import OCICommon

// MARK: - DigitalTwinAdapterInboundRoute

public struct DigitalTwinAdapterInboundRoute: Codable, Sendable {

    public var condition: String?
    public var referencePayload: JSONValue?
    public var target: String?
    public var contentRoot: String?
    public var payloadMapping: [String: String]?
    public var description: String?

    private enum CodingKeys: String, CodingKey {
        case condition, referencePayload, target, contentRoot, payloadMapping, description
    }

    public init(
                condition: String? = nil,
                referencePayload: JSONValue? = nil,
                target: String? = nil,
                contentRoot: String? = nil,
                payloadMapping: [String: String]? = nil,
                description: String? = nil
    ) {
        self.condition = condition
        self.referencePayload = referencePayload
        self.target = target
        self.contentRoot = contentRoot
        self.payloadMapping = payloadMapping
        self.description = description
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
