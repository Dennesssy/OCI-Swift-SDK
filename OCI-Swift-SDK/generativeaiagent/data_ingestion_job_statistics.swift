import Foundation

// MARK: - DataIngestionJobStatistics

public struct DataIngestionJobStatistics: Codable, Sendable {

    public var numberOfFailedFiles: Int?
    public var numberOfIngestedFiles: Int?
    public var numberOfIgnoredFiles: Int?
    public var durationInSeconds: Int?

    private enum CodingKeys: String, CodingKey {
        case numberOfFailedFiles, numberOfIngestedFiles, numberOfIgnoredFiles, durationInSeconds
    }

    public init(
                numberOfFailedFiles: Int? = nil,
                numberOfIngestedFiles: Int? = nil,
                numberOfIgnoredFiles: Int? = nil,
                durationInSeconds: Int? = nil
    ) {
        self.numberOfFailedFiles = numberOfFailedFiles
        self.numberOfIngestedFiles = numberOfIngestedFiles
        self.numberOfIgnoredFiles = numberOfIgnoredFiles
        self.durationInSeconds = durationInSeconds
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension DataIngestionJobStatistics: CustomStringConvertible {
    public var description: String { "DataIngestionJobStatistics()" }
}