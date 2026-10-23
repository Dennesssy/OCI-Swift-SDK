// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates.  All rights reserved.
// This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

import Foundation

public protocol HTTPClient {
}

public protocol Signer {
}

public protocol ClientProtocol {
}

public struct Region: Codable, Sendable, Hashable, CustomStringConvertible {
    public let identifier: String

    public init(_ identifier: String) {
        self.identifier = identifier
    }

    public var description: String {
        identifier
    }
}

public protocol ConfigurationProvider: Sendable {
    var region: String? { get }
}

public extension Common {
    static func checkForEnabledServices(_ serviceName: String) -> Bool {
        true
    }

    static func generateRetryToken() -> String {
        UUID().uuidString
    }
}
