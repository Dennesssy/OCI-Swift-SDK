import Foundation

// MARK: - ServiceRoleDetails

public struct ServiceRoleDetails: Codable, Sendable {

    public var roleArn: String?
    public var servicePrivateEndpoint: String?
    public var serviceType: ServiceRoleDetailsServiceTypeEnum
    public var assumeRoleStatus: ServiceRoleDetailsAssumeRoleStatusEnum?
    public var awsNodes: [AwsNodes]?

    private enum CodingKeys: String, CodingKey {
        case roleArn, servicePrivateEndpoint, serviceType, assumeRoleStatus, awsNodes
    }

    public init(
                roleArn: String? = nil,
                servicePrivateEndpoint: String? = nil,
                serviceType: ServiceRoleDetailsServiceTypeEnum,
                assumeRoleStatus: ServiceRoleDetailsAssumeRoleStatusEnum? = nil,
                awsNodes: [AwsNodes]? = nil
    ) {
        self.roleArn = roleArn
        self.servicePrivateEndpoint = servicePrivateEndpoint
        self.serviceType = serviceType
        self.assumeRoleStatus = assumeRoleStatus
        self.awsNodes = awsNodes
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ServiceRoleDetails: CustomStringConvertible {
    public var description: String { "ServiceRoleDetails()" }
}