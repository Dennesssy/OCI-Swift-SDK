import Foundation

// MARK: - VantagePointNode

public struct VantagePointNode: Codable, Sendable {

    public var name: String?
    public var id: String?
    public var displayName: String?
    public var geoInfo: String?
    public var outgoingLinks: [String]?

    private enum CodingKeys: String, CodingKey {
        case name, id, displayName, geoInfo, outgoingLinks
    }

    public init(
                name: String? = nil,
                id: String? = nil,
                displayName: String? = nil,
                geoInfo: String? = nil,
                outgoingLinks: [String]? = nil
    ) {
        self.name = name
        self.id = id
        self.displayName = displayName
        self.geoInfo = geoInfo
        self.outgoingLinks = outgoingLinks
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension VantagePointNode: CustomStringConvertible {
    public var description: String { "VantagePointNode()" }
}