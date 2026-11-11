import Foundation
import OCICommon

// MARK: - DigitalTwinAdapterJsonPayload

public struct DigitalTwinAdapterJsonPayload: Codable, Sendable {

    public var data: [String: JSONValue]

    private enum CodingKeys: String, CodingKey {
        case data
    }

    public init(
                data: [String: JSONValue]
    ) {
        self.data = data
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DigitalTwinAdapterJsonPayload: CustomStringConvertible {
    public var description: String { "DigitalTwinAdapterJsonPayload()" }
}