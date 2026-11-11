import Foundation

// MARK: - DeployStageDeployStageTypeEnum

public enum DeployStageDeployStageTypeEnum: String, Codable, Sendable {
    case wait = "WAIT"
    case computeInstanceGroupRollingDeployment = "COMPUTE_INSTANCE_GROUP_ROLLING_DEPLOYMENT"
    case computeInstanceGroupBlueGreenDeployment = "COMPUTE_INSTANCE_GROUP_BLUE_GREEN_DEPLOYMENT"
    case computeInstanceGroupBlueGreenTrafficShift = "COMPUTE_INSTANCE_GROUP_BLUE_GREEN_TRAFFIC_SHIFT"
    case computeInstanceGroupCanaryDeployment = "COMPUTE_INSTANCE_GROUP_CANARY_DEPLOYMENT"
    case computeInstanceGroupCanaryTrafficShift = "COMPUTE_INSTANCE_GROUP_CANARY_TRAFFIC_SHIFT"
    case computeInstanceGroupCanaryApproval = "COMPUTE_INSTANCE_GROUP_CANARY_APPROVAL"
    case okeBlueGreenDeployment = "OKE_BLUE_GREEN_DEPLOYMENT"
    case okeBlueGreenTrafficShift = "OKE_BLUE_GREEN_TRAFFIC_SHIFT"
    case okeCanaryDeployment = "OKE_CANARY_DEPLOYMENT"
    case okeCanaryTrafficShift = "OKE_CANARY_TRAFFIC_SHIFT"
    case okeCanaryApproval = "OKE_CANARY_APPROVAL"
    case okeDeployment = "OKE_DEPLOYMENT"
    case deployFunction = "DEPLOY_FUNCTION"
    case invokeFunction = "INVOKE_FUNCTION"
    case loadBalancerTrafficShift = "LOAD_BALANCER_TRAFFIC_SHIFT"
    case manualApproval = "MANUAL_APPROVAL"
    case okeHelmChartDeployment = "OKE_HELM_CHART_DEPLOYMENT"
    case shell = "SHELL"
}

public extension DeployStageDeployStageTypeEnum {
    static var allValues: [DeployStageDeployStageTypeEnum] { [.wait, .computeInstanceGroupRollingDeployment, .computeInstanceGroupBlueGreenDeployment, .computeInstanceGroupBlueGreenTrafficShift, .computeInstanceGroupCanaryDeployment, .computeInstanceGroupCanaryTrafficShift, .computeInstanceGroupCanaryApproval, .okeBlueGreenDeployment, .okeBlueGreenTrafficShift, .okeCanaryDeployment, .okeCanaryTrafficShift, .okeCanaryApproval, .okeDeployment, .deployFunction, .invokeFunction, .loadBalancerTrafficShift, .manualApproval, .okeHelmChartDeployment, .shell] }
    static var allStringValues: [String] { ["WAIT", "COMPUTE_INSTANCE_GROUP_ROLLING_DEPLOYMENT", "COMPUTE_INSTANCE_GROUP_BLUE_GREEN_DEPLOYMENT", "COMPUTE_INSTANCE_GROUP_BLUE_GREEN_TRAFFIC_SHIFT", "COMPUTE_INSTANCE_GROUP_CANARY_DEPLOYMENT", "COMPUTE_INSTANCE_GROUP_CANARY_TRAFFIC_SHIFT", "COMPUTE_INSTANCE_GROUP_CANARY_APPROVAL", "OKE_BLUE_GREEN_DEPLOYMENT", "OKE_BLUE_GREEN_TRAFFIC_SHIFT", "OKE_CANARY_DEPLOYMENT", "OKE_CANARY_TRAFFIC_SHIFT", "OKE_CANARY_APPROVAL", "OKE_DEPLOYMENT", "DEPLOY_FUNCTION", "INVOKE_FUNCTION", "LOAD_BALANCER_TRAFFIC_SHIFT", "MANUAL_APPROVAL", "OKE_HELM_CHART_DEPLOYMENT", "SHELL"] }
    static func fromString(_ value: String) -> DeployStageDeployStageTypeEnum? { DeployStageDeployStageTypeEnum(rawValue: value) }
}