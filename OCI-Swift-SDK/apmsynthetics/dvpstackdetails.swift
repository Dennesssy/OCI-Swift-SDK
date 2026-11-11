import Foundation

// MARK: - dvpstackdetails

public struct dvpstackdetails: Codable, Sendable {

    public var jsonData: Data?
    public var dvpVersion: String?
    public var dvpStackType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, dvpVersion, dvpStackType
    }

    public init(
                jsonData: Data? = nil,
                dvpVersion: String? = nil,
                dvpStackType: String? = nil
    ) {
        self.jsonData = jsonData
        self.dvpVersion = dvpVersion
        self.dvpStackType = dvpStackType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension dvpstackdetails: CustomStringConvertible {
    public var description: String { "dvpstackdetails()" }
}