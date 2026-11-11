import Foundation
import OCICommon

// MARK: - DigitalTwinAdapterInboundEnvelope

public struct DigitalTwinAdapterInboundEnvelope: Codable, Sendable {

    public var referenceEndpoint: String?
    public var referencePayload: JSONValue?
    public var envelopeMapping: DigitalTwinAdapterEnvelopeMapping?

    private enum CodingKeys: String, CodingKey {
        case referenceEndpoint, referencePayload, envelopeMapping
    }

    public init(
                referenceEndpoint: String? = nil,
                referencePayload: JSONValue? = nil,
                envelopeMapping: DigitalTwinAdapterEnvelopeMapping? = nil
    ) {
        self.referenceEndpoint = referenceEndpoint
        self.referencePayload = referencePayload
        self.envelopeMapping = envelopeMapping
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DigitalTwinAdapterInboundEnvelope: CustomStringConvertible {
    public var description: String { "DigitalTwinAdapterInboundEnvelope()" }
}