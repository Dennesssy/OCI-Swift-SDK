import Foundation

// MARK: - OperationTypeEnum

public enum OperationTypeEnum: String, Codable, Sendable {
    case createProject = "CREATE_PROJECT"
    case updateProject = "UPDATE_PROJECT"
    case deleteProject = "DELETE_PROJECT"
    case moveProject = "MOVE_PROJECT"
    case createDeployPipeline = "CREATE_DEPLOY_PIPELINE"
    case updateDeployPipeline = "UPDATE_DEPLOY_PIPELINE"
    case deleteDeployPipeline = "DELETE_DEPLOY_PIPELINE"
    case createDeployStage = "CREATE_DEPLOY_STAGE"
    case updateDeployStage = "UPDATE_DEPLOY_STAGE"
    case deleteDeployStage = "DELETE_DEPLOY_STAGE"
    case createDeployArtifact = "CREATE_DEPLOY_ARTIFACT"
    case updateDeployArtifact = "UPDATE_DEPLOY_ARTIFACT"
    case deleteDeployArtifact = "DELETE_DEPLOY_ARTIFACT"
    case createDeployEnvironment = "CREATE_DEPLOY_ENVIRONMENT"
    case updateDeployEnvironment = "UPDATE_DEPLOY_ENVIRONMENT"
    case deleteDeployEnvironment = "DELETE_DEPLOY_ENVIRONMENT"
    case createDeployment = "CREATE_DEPLOYMENT"
    case updateDeployment = "UPDATE_DEPLOYMENT"
    case deleteDeployment = "DELETE_DEPLOYMENT"
    case createBuildPipeline = "CREATE_BUILD_PIPELINE"
    case updateBuildPipeline = "UPDATE_BUILD_PIPELINE"
    case deleteBuildPipeline = "DELETE_BUILD_PIPELINE"
    case createBuildPipelineStage = "CREATE_BUILD_PIPELINE_STAGE"
    case updateBuildPipelineStage = "UPDATE_BUILD_PIPELINE_STAGE"
    case deleteBuildPipelineStage = "DELETE_BUILD_PIPELINE_STAGE"
    case createConnection = "CREATE_CONNECTION"
    case updateConnection = "UPDATE_CONNECTION"
    case deleteConnection = "DELETE_CONNECTION"
    case createTrigger = "CREATE_TRIGGER"
    case updateTrigger = "UPDATE_TRIGGER"
    case deleteTrigger = "DELETE_TRIGGER"
    case executeTrigger = "EXECUTE_TRIGGER"
    case createRepository = "CREATE_REPOSITORY"
    case updateRepository = "UPDATE_REPOSITORY"
    case deleteRepository = "DELETE_REPOSITORY"
    case mirrorRepository = "MIRROR_REPOSITORY"
    case forkRepository = "FORK_REPOSITORY"
    case syncForkRepository = "SYNC_FORK_REPOSITORY"
    case scheduleCascadingProjectDeletion = "SCHEDULE_CASCADING_PROJECT_DELETION"
    case cancelScheduledCascadingProjectDeletion = "CANCEL_SCHEDULED_CASCADING_PROJECT_DELETION"
    case createPullRequest = "CREATE_PULL_REQUEST"
    case updatePullRequest = "UPDATE_PULL_REQUEST"
    case deletePullRequest = "DELETE_PULL_REQUEST"
    case movePullRequest = "MOVE_PULL_REQUEST"
    case mergePullRequest = "MERGE_PULL_REQUEST"
}

public extension OperationTypeEnum {
    static var allValues: [OperationTypeEnum] { [.createProject, .updateProject, .deleteProject, .moveProject, .createDeployPipeline, .updateDeployPipeline, .deleteDeployPipeline, .createDeployStage, .updateDeployStage, .deleteDeployStage, .createDeployArtifact, .updateDeployArtifact, .deleteDeployArtifact, .createDeployEnvironment, .updateDeployEnvironment, .deleteDeployEnvironment, .createDeployment, .updateDeployment, .deleteDeployment, .createBuildPipeline, .updateBuildPipeline, .deleteBuildPipeline, .createBuildPipelineStage, .updateBuildPipelineStage, .deleteBuildPipelineStage, .createConnection, .updateConnection, .deleteConnection, .createTrigger, .updateTrigger, .deleteTrigger, .executeTrigger, .createRepository, .updateRepository, .deleteRepository, .mirrorRepository, .forkRepository, .syncForkRepository, .scheduleCascadingProjectDeletion, .cancelScheduledCascadingProjectDeletion, .createPullRequest, .updatePullRequest, .deletePullRequest, .movePullRequest, .mergePullRequest] }
    static var allStringValues: [String] { ["CREATE_PROJECT", "UPDATE_PROJECT", "DELETE_PROJECT", "MOVE_PROJECT", "CREATE_DEPLOY_PIPELINE", "UPDATE_DEPLOY_PIPELINE", "DELETE_DEPLOY_PIPELINE", "CREATE_DEPLOY_STAGE", "UPDATE_DEPLOY_STAGE", "DELETE_DEPLOY_STAGE", "CREATE_DEPLOY_ARTIFACT", "UPDATE_DEPLOY_ARTIFACT", "DELETE_DEPLOY_ARTIFACT", "CREATE_DEPLOY_ENVIRONMENT", "UPDATE_DEPLOY_ENVIRONMENT", "DELETE_DEPLOY_ENVIRONMENT", "CREATE_DEPLOYMENT", "UPDATE_DEPLOYMENT", "DELETE_DEPLOYMENT", "CREATE_BUILD_PIPELINE", "UPDATE_BUILD_PIPELINE", "DELETE_BUILD_PIPELINE", "CREATE_BUILD_PIPELINE_STAGE", "UPDATE_BUILD_PIPELINE_STAGE", "DELETE_BUILD_PIPELINE_STAGE", "CREATE_CONNECTION", "UPDATE_CONNECTION", "DELETE_CONNECTION", "CREATE_TRIGGER", "UPDATE_TRIGGER", "DELETE_TRIGGER", "EXECUTE_TRIGGER", "CREATE_REPOSITORY", "UPDATE_REPOSITORY", "DELETE_REPOSITORY", "MIRROR_REPOSITORY", "FORK_REPOSITORY", "SYNC_FORK_REPOSITORY", "SCHEDULE_CASCADING_PROJECT_DELETION", "CANCEL_SCHEDULED_CASCADING_PROJECT_DELETION", "CREATE_PULL_REQUEST", "UPDATE_PULL_REQUEST", "DELETE_PULL_REQUEST", "MOVE_PULL_REQUEST", "MERGE_PULL_REQUEST"] }
    static func fromString(_ value: String) -> OperationTypeEnum? { OperationTypeEnum(rawValue: value) }
}