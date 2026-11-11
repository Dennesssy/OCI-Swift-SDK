import Foundation

// MARK: - DigitalTwinAdapterEnvelopeMapping

public struct DigitalTwinAdapterEnvelopeMapping: Codable, Sendable {

    public var timeObserved: String?
    public var target: String?
    public var contentRoot: String?

    private enum CodingKeys: String, CodingKey {
        case timeObserved, target, contentRoot
    }

    public init(
                timeObserved: String? = nil,
                target: String? = nil,
                contentRoot: String? = nil
    ) {
        self.timeObserved = timeObserved
        self.target = target
        self.contentRoot = contentRoot
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DigitalTwinAdapterEnvelopeMapping: CustomStringConvertible {
    public var description: String { "DigitalTwinAdapterEnvelopeMapping()" }
}