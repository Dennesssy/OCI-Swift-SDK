import Foundation

// MARK: - outputlocation

public struct outputlocation: Codable, Sendable {

    public var jsonData: Data?
    public var outputLocationType: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, outputLocationType
    }

    public init(
                jsonData: Data? = nil,
                outputLocationType: String? = nil
    ) {
        self.jsonData = jsonData
        self.outputLocationType = outputLocationType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension outputlocation: CustomStringConvertible {
    public var description: String { "outputlocation()" }
}