import Foundation

// MARK: - InfrastructureServer

public struct InfrastructureServer: Codable, Sendable {

    public var id: String?
    public var serverName: String?
    public var serverIpAddress: String?
    public var ilomName: String?
    public var ilomIpAddress: String?
    public var lifecycleState: InfrastructureServerLifecycleStateEnum
    public var baseVmCount: Int?
    public var instanceVmCount: Int?
    public var computeCapacity: ComputeCapacityDetails?

    private enum CodingKeys: String, CodingKey {
        case id, serverName, serverIpAddress, ilomName, ilomIpAddress, lifecycleState, baseVmCount, instanceVmCount, computeCapacity
    }

    public init(
                id: String? = nil,
                serverName: String? = nil,
                serverIpAddress: String? = nil,
                ilomName: String? = nil,
                ilomIpAddress: String? = nil,
                lifecycleState: InfrastructureServerLifecycleStateEnum,
                baseVmCount: Int? = nil,
                instanceVmCount: Int? = nil,
                computeCapacity: ComputeCapacityDetails? = nil
    ) {
        self.id = id
        self.serverName = serverName
        self.serverIpAddress = serverIpAddress
        self.ilomName = ilomName
        self.ilomIpAddress = ilomIpAddress
        self.lifecycleState = lifecycleState
        self.baseVmCount = baseVmCount
        self.instanceVmCount = instanceVmCount
        self.computeCapacity = computeCapacity
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension InfrastructureServer: CustomStringConvertible {
    public var description: String { "InfrastructureServer()" }
}