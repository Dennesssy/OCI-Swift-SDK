import Foundation

// MARK: - Vnic

public struct Vnic: Codable, Sendable {

    public var id: String?
    public var sourceIps: [String]

    private enum CodingKeys: String, CodingKey {
        case id, sourceIps
    }

    public init(
                id: String? = nil,
                sourceIps: [String]
    ) {
        self.id = id
        self.sourceIps = sourceIps
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Vnic: CustomStringConvertible {
    public var description: String { "Vnic()" }
}