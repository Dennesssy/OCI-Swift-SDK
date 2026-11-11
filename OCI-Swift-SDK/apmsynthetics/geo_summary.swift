import Foundation

// MARK: - GeoSummary

public struct GeoSummary: Codable, Sendable {

    public var adminDivCode: String?
    public var cityName: String?
    public var countryCode: String?
    public var countryName: String?
    public var latitude: Double?
    public var longitude: Double?

    private enum CodingKeys: String, CodingKey {
        case adminDivCode, cityName, countryCode, countryName, latitude, longitude
    }

    public init(
                adminDivCode: String? = nil,
                cityName: String? = nil,
                countryCode: String? = nil,
                countryName: String? = nil,
                latitude: Double? = nil,
                longitude: Double? = nil
    ) {
        self.adminDivCode = adminDivCode
        self.cityName = cityName
        self.countryCode = countryCode
        self.countryName = countryName
        self.latitude = latitude
        self.longitude = longitude
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension GeoSummary: CustomStringConvertible {
    public var description: String { "GeoSummary()" }
}