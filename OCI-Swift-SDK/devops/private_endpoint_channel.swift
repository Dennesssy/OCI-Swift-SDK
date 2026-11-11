import Foundation

// MARK: - PrivateEndpointChannel

public struct PrivateEndpointChannel: Codable, Sendable {

    public var subnetId: String?
    public var nsgIds: [String]?

    private enum CodingKeys: String, CodingKey {
        case subnetId, nsgIds
    }

    public init(
                subnetId: String? = nil,
                nsgIds: [String]? = nil
    ) {
        self.subnetId = subnetId
        self.nsgIds = nsgIds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PrivateEndpointChannel: CustomStringConvertible {
    public var description: String { "PrivateEndpointChannel()" }
}