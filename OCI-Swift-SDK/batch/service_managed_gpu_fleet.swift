import Foundation
import OCICommon

// MARK: - ServiceManagedGpuFleet

public struct ServiceManagedGpuFleet: Codable, Sendable {

    public var name: String?
    public var shape: JSONValue
    public var maxConcurrentTasks: Int?
    public var state: String?
    public var details: String?

    private enum CodingKeys: String, CodingKey {
        case name, shape, maxConcurrentTasks, state, details
    }

    public init(
                name: String? = nil,
                shape: JSONValue,
                maxConcurrentTasks: Int? = nil,
                state: String? = nil,
                details: String? = nil
    ) {
        self.name = name
        self.shape = shape
        self.maxConcurrentTasks = maxConcurrentTasks
        self.state = state
        self.details = details
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension ServiceManagedGpuFleet: CustomStringConvertible {
    public var description: String { "ServiceManagedGpuFleet()" }
}