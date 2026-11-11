import Foundation

// MARK: - IdentityInfoDetails

public struct IdentityInfoDetails: Codable, Sendable {

    public var regionName: String?
    public var apmShortId: String?
    public var collectorEndPoint: String?

    private enum CodingKeys: String, CodingKey {
        case regionName, apmShortId, collectorEndPoint
    }

    public init(
                regionName: String? = nil,
                apmShortId: String? = nil,
                collectorEndPoint: String? = nil
    ) {
        self.regionName = regionName
        self.apmShortId = apmShortId
        self.collectorEndPoint = collectorEndPoint
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension IdentityInfoDetails: CustomStringConvertible {
    public var description: String { "IdentityInfoDetails()" }
}