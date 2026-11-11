import Foundation

// MARK: - UpdateAnalyzeApplicationsConfigurationDetails

public struct UpdateAnalyzeApplicationsConfigurationDetails: Codable, Sendable {

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

extension UpdateAnalyzeApplicationsConfigurationDetails: CustomStringConvertible {
    public var description: String { "UpdateAnalyzeApplicationsConfigurationDetails()" }
}