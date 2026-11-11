import Foundation

// MARK: - filter

public struct filter: Codable, Sendable {

    public var jsonData: Data?
    public var triggerSource: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, triggerSource
    }

    public init(
                jsonData: Data? = nil,
                triggerSource: String? = nil
    ) {
        self.jsonData = jsonData
        self.triggerSource = triggerSource
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension filter: CustomStringConvertible {
    public var description: String { "filter()" }
}