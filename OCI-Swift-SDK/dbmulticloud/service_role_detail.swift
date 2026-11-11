import Foundation

// MARK: - ServiceRoleDetail

public struct ServiceRoleDetail: Codable, Sendable {

    public var roleArn: String?
    public var servicePrivateEndpoint: String?
    public var serviceType: ServiceRoleDetailServiceTypeEnum

    private enum CodingKeys: String, CodingKey {
        case roleArn, servicePrivateEndpoint, serviceType
    }

    public init(
                roleArn: String? = nil,
                servicePrivateEndpoint: String? = nil,
                serviceType: ServiceRoleDetailServiceTypeEnum
    ) {
        self.roleArn = roleArn
        self.servicePrivateEndpoint = servicePrivateEndpoint
        self.serviceType = serviceType
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ServiceRoleDetail: CustomStringConvertible {
    public var description: String { "ServiceRoleDetail()" }
}