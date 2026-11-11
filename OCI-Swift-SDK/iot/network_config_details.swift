import Foundation

// MARK: - NetworkConfigDetails

public struct NetworkConfigDetails: Codable, Sendable {

    public var subnetId: String?
    public var networkSecurityGroupIds: [String]?
    public var fileStorageMounts: [FileStorageMountDetails]?

    private enum CodingKeys: String, CodingKey {
        case subnetId, networkSecurityGroupIds, fileStorageMounts
    }

    public init(
                subnetId: String? = nil,
                networkSecurityGroupIds: [String]? = nil,
                fileStorageMounts: [FileStorageMountDetails]? = nil
    ) {
        self.subnetId = subnetId
        self.networkSecurityGroupIds = networkSecurityGroupIds
        self.fileStorageMounts = fileStorageMounts
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension NetworkConfigDetails: CustomStringConvertible {
    public var description: String { "NetworkConfigDetails()" }
}