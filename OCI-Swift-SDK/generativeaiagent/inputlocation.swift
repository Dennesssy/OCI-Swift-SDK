import Foundation

// MARK: - inputlocation

public struct inputlocation: Codable, Sendable {

    public var jsonData: Data?
    public var inputLocationType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, inputLocationType
    }

    public init(
                jsonData: Data? = nil,
                inputLocationType: String? = nil
    ) {
        self.jsonData = jsonData
        self.inputLocationType = inputLocationType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension inputlocation: CustomStringConvertible {
    public var description: String { "inputlocation()" }
}