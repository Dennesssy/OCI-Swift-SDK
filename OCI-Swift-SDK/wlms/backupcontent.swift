import Foundation

// MARK: - backupcontent

public struct backupcontent: Codable, Sendable {

    public var jsonData: Data?
    public var contentType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, contentType
    }

    public init(
                jsonData: Data? = nil,
                contentType: String? = nil
    ) {
        self.jsonData = jsonData
        self.contentType = contentType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension backupcontent: CustomStringConvertible {
    public var description: String { "backupcontent()" }
}