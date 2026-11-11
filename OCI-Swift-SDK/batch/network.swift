import Foundation

// MARK: - Network

public struct Network: Codable, Sendable {

    public var subnetId: String?
    public var nsgIds: [String]
    public var vnics: [Vnic]

    private enum CodingKeys: String, CodingKey {
        case subnetId, nsgIds, vnics
    }

    public init(
                subnetId: String? = nil,
                nsgIds: [String],
                vnics: [Vnic]
    ) {
        self.subnetId = subnetId
        self.nsgIds = nsgIds
        self.vnics = vnics
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Network: CustomStringConvertible {
    public var description: String { "Network()" }
}