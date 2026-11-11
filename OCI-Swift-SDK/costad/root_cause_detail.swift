import Foundation
import OCICommon

// MARK: - RootCauseDetail

public struct RootCauseDetail: Codable, Sendable {

    public var value: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case value
    }

    public init(
                value: JSONValue? = nil
    ) {
        self.value = value
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension RootCauseDetail: CustomStringConvertible {
    public var description: String { "RootCauseDetail()" }
}