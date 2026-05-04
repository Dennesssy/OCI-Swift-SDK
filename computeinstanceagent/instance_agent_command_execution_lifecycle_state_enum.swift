// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates. All rights reserved.
// Licensed under the Universal Permissive License (UPL) 1.0 or Apache License 2.0.

import Foundation

public enum InstanceAgentCommandExecutionLifecycleStateEnum: String, Codable {
    case accepted = "ACCEPTED"
    case inProgress = "IN_PROGRESS"
    case succeeded = "SUCCEEDED"
    case failed = "FAILED"
    case timedOut = "TIMED_OUT"
    case canceled = "CANCELED"
    
    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        let rawValue = try container.decode(String.self)
        self = InstanceAgentCommandExecutionLifecycleStateEnum(rawValue: rawValue.uppercased()) ?? .accepted
    }
    
    public static func fromString(_ value: String) -> InstanceAgentCommandExecutionLifecycleStateEnum {
        switch value.uppercased() {
        case "ACCEPTED": return .accepted
        case "IN_PROGRESS": return .inProgress
        case "SUCCEEDED": return .succeeded
        case "FAILED": return .failed
        case "TIMED_OUT": return .timedOut
        case "CANCELED": return .canceled
        default: return .accepted
        }
    }
    
    public static func allValues() -> [InstanceAgentCommandExecutionLifecycleStateEnum] {
        return [.accepted, .inProgress, .succeeded, .failed, .timedOut, .canceled]
    }
}
