import Foundation

// MARK: - OverrideMaintenanceRequest

public struct OverrideMaintenanceRequest: Codable, Sendable {
    public var lustreFileSystemId: String?
    public var ifMatch: String?
    public var opcRequestId: String?
    public var overrideMaintenanceDetails: OverrideMaintenanceDetails?

    private enum CodingKeys: String, CodingKey {
        case lustreFileSystemId, ifMatch, opcRequestId, overrideMaintenanceDetails
    }

    public init(
                lustreFileSystemId: String? = nil,
                ifMatch: String? = nil,
                opcRequestId: String? = nil,
                overrideMaintenanceDetails: OverrideMaintenanceDetails? = nil
    ) {
        self.lustreFileSystemId = lustreFileSystemId
        self.ifMatch = ifMatch
        self.opcRequestId = opcRequestId
        self.overrideMaintenanceDetails = overrideMaintenanceDetails
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OverrideMaintenanceRequest: CustomStringConvertible {
    public var description: String { "OverrideMaintenanceRequest()" }
}

// MARK: - OverrideMaintenanceResponse

public struct OverrideMaintenanceResponse: Codable, Sendable {
    public var opcWorkRequestId: String?
    public var opcRequestId: String?

    private enum CodingKeys: String, CodingKey {
        case opcWorkRequestId, opcRequestId
    }

    public init(
                opcWorkRequestId: String? = nil,
                opcRequestId: String? = nil
    ) {
        self.opcWorkRequestId = opcWorkRequestId
        self.opcRequestId = opcRequestId
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension OverrideMaintenanceResponse: CustomStringConvertible {
    public var description: String { "OverrideMaintenanceResponse()" }
}