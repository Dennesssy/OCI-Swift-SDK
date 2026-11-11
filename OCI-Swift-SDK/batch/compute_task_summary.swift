import Foundation

// MARK: - ComputeTaskSummary

public struct ComputeTaskSummary: Codable, Sendable {

    public var id: String?
    public var jobId: String?
    public var name: String?
    public var hierarchicalName: String?
    public var groupTaskName: String?
    public var description: String?
    public var lifecycleDetails: String?
    public var lifecycleState: BatchTaskLifecycleStateEnum?

    private enum CodingKeys: String, CodingKey {
        case id, jobId, name, hierarchicalName, groupTaskName, description, lifecycleDetails, lifecycleState
    }

    public init(
                id: String? = nil,
                jobId: String? = nil,
                name: String? = nil,
                hierarchicalName: String? = nil,
                groupTaskName: String? = nil,
                description: String? = nil,
                lifecycleDetails: String? = nil,
                lifecycleState: BatchTaskLifecycleStateEnum? = nil
    ) {
        self.id = id
        self.jobId = jobId
        self.name = name
        self.hierarchicalName = hierarchicalName
        self.groupTaskName = groupTaskName
        self.description = description
        self.lifecycleDetails = lifecycleDetails
        self.lifecycleState = lifecycleState
    }

    public func validateEnumValue() throws {
        // No enums to validate
    }
}
