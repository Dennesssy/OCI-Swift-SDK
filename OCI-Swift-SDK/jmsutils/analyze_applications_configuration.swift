import Foundation

// MARK: - AnalyzeApplicationsConfiguration

public struct AnalyzeApplicationsConfiguration: Codable, Sendable {

    public var namespaceName: String?
    public var bucketName: String?

    private enum CodingKeys: String, CodingKey {
        case namespaceName, bucketName
    }

    public init(
                namespaceName: String? = nil,
                bucketName: String? = nil
    ) {
        self.namespaceName = namespaceName
        self.bucketName = bucketName
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension AnalyzeApplicationsConfiguration: CustomStringConvertible {
    public var description: String { "AnalyzeApplicationsConfiguration()" }
}