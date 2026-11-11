import Foundation

// MARK: - ScheduledQueryProcessingConfig

public struct ScheduledQueryProcessingConfig: Codable, Sendable {

    public var streaming: Streaming?
    public var objectStorage: ObjectStorage?
    public var customMetric: CustomMetric?

    private enum CodingKeys: String, CodingKey {
        case streaming, objectStorage, customMetric
    }

    public init(
                streaming: Streaming? = nil,
                objectStorage: ObjectStorage? = nil,
                customMetric: CustomMetric? = nil
    ) {
        self.streaming = streaming
        self.objectStorage = objectStorage
        self.customMetric = customMetric
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ScheduledQueryProcessingConfig: CustomStringConvertible {
    public var description: String { "ScheduledQueryProcessingConfig()" }
}