import Foundation

// MARK: - Header

public struct Header: Codable, Sendable {

    public var headerName: String?
    public var headerValue: String?

    private enum CodingKeys: String, CodingKey {
        case headerName, headerValue
    }

    public init(
                headerName: String? = nil,
                headerValue: String? = nil
    ) {
        self.headerName = headerName
        self.headerValue = headerValue
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension Header: CustomStringConvertible {
    public var description: String { "Header()" }
}