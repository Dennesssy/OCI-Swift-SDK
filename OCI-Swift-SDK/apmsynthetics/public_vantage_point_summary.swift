import Foundation

// MARK: - PublicVantagePointSummary

public struct PublicVantagePointSummary: Codable, Sendable {

    public var displayName: String?
    public var name: String?
    public var geo: GeoSummary?

    private enum CodingKeys: String, CodingKey {
        case displayName, name, geo
    }

    public init(
                displayName: String? = nil,
                name: String? = nil,
                geo: GeoSummary? = nil
    ) {
        self.displayName = displayName
        self.name = name
        self.geo = geo
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension PublicVantagePointSummary: CustomStringConvertible {
    public var description: String { "PublicVantagePointSummary()" }
}