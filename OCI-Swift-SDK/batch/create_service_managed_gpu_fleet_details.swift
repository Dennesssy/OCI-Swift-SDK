import Foundation
import OCICommon

// MARK: - CreateServiceManagedGpuFleetDetails

public struct CreateServiceManagedGpuFleetDetails: Codable, Sendable {

    public var name: String?
    public var shape: JSONValue
    public var maxConcurrentTasks: Int?

    private enum CodingKeys: String, CodingKey {
        case name, shape, maxConcurrentTasks
    }

    public init(
                name: String? = nil,
                shape: JSONValue,
                maxConcurrentTasks: Int? = nil
    ) {
        self.name = name
        self.shape = shape
        self.maxConcurrentTasks = maxConcurrentTasks
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}

extension CreateServiceManagedGpuFleetDetails: CustomStringConvertible {
    public var description: String { "CreateServiceManagedGpuFleetDetails()" }
}