import Foundation
import OCICommon

// MARK: - SnapshotDetail

public struct SnapshotDetail: Codable, Sendable {

    public var key: String?
    public var value: JSONValue?

    private enum CodingKeys: String, CodingKey {
        case key, value
    }

    public init(
                key: String? = nil,
                value: JSONValue? = nil
    ) {
        self.key = key
        self.value = value
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension SnapshotDetail: CustomStringConvertible {
    public var description: String { "SnapshotDetail()" }
}