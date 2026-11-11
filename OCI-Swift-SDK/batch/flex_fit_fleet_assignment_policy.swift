import Foundation

// MARK: - FlexFitFleetAssignmentPolicy

public struct FlexFitFleetAssignmentPolicy: Codable, Sendable {

    public var threshold: Float?

    private enum CodingKeys: String, CodingKey {
        case threshold
    }

    public init(
                threshold: Float? = nil
    ) {
        self.threshold = threshold
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension FlexFitFleetAssignmentPolicy: CustomStringConvertible {
    public var description: String { "FlexFitFleetAssignmentPolicy()" }
}