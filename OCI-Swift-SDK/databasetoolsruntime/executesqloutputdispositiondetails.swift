import Foundation

// MARK: - executesqloutputdispositiondetails

public struct executesqloutputdispositiondetails: Codable, Sendable {

    public var jsonData: Data?
    public var type: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, type
    }

    public init(
                jsonData: Data? = nil,
                type: String? = nil
    ) {
        self.jsonData = jsonData
        self.type = type
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension executesqloutputdispositiondetails: CustomStringConvertible {
    public var description: String { "executesqloutputdispositiondetails()" }
}