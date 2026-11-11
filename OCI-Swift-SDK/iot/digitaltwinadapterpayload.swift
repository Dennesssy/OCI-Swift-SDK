import Foundation

// MARK: - digitaltwinadapterpayload

public struct digitaltwinadapterpayload: Codable, Sendable {

    public var jsonData: Data?
    public var dataFormat: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, dataFormat
    }

    public init(
                jsonData: Data? = nil,
                dataFormat: String? = nil
    ) {
        self.jsonData = jsonData
        self.dataFormat = dataFormat
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension digitaltwinadapterpayload: CustomStringConvertible {
    public var description: String { "digitaltwinadapterpayload()" }
}