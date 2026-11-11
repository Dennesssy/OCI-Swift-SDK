import Foundation

// MARK: - joboutput

public struct joboutput: Codable, Sendable {

    public var jsonData: Data?
    public var jobOutputLocation: String?

    private enum CodingKeys: String, CodingKey {
        case jsonData, jobOutputLocation
    }

    public init(
                jsonData: Data? = nil,
                jobOutputLocation: String? = nil
    ) {
        self.jsonData = jsonData
        self.jobOutputLocation = jobOutputLocation
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension joboutput: CustomStringConvertible {
    public var description: String { "joboutput()" }
}