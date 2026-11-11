import Foundation

// MARK: - CreateServiceManagedFleetDetails

public struct CreateServiceManagedFleetDetails: Codable, Sendable {

    public var name: String?
    public var shape: FleetShape?
    public var maxConcurrentTasks: Int?

    private enum CodingKeys: String, CodingKey {
        case name, shape, maxConcurrentTasks
    }

    public init(
                name: String? = nil,
                shape: FleetShape? = nil,
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

extension CreateServiceManagedFleetDetails: CustomStringConvertible {
    public var description: String { "CreateServiceManagedFleetDetails()" }
}