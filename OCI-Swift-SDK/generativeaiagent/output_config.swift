import Foundation
import OCICommon

// MARK: - OutputConfig

public struct OutputConfig: Codable, Sendable {

    public var outputLocation: JSONValue
    public var retentionPeriodInMinutes: Int?

    private enum CodingKeys: String, CodingKey {
        case outputLocation, retentionPeriodInMinutes
    }

    public init(
                outputLocation: JSONValue,
                retentionPeriodInMinutes: Int? = nil
    ) {
        self.outputLocation = outputLocation
        self.retentionPeriodInMinutes = retentionPeriodInMinutes
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OutputConfig: CustomStringConvertible {
    public var description: String { "OutputConfig()" }
}