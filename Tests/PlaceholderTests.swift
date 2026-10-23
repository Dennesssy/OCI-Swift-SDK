// Copyright (c) 2016, 2018, 2024, Oracle and/or its affiliates.  All rights reserved.
// This software is dual-licensed to you under the Universal Permissive License (UPL) 1.0 as shown at https://oss.oracle.com/licenses/upl or Apache License 2.0 as shown at http://www.apache.org/licenses/LICENSE-2.0. You may choose either license.

import Testing
import Foundation
@testable import OCI_Swift_SDK

private struct TestHTTPClient: HTTPClient {
}

private struct TestSigner: Signer {
}

@Test
func accessGovernanceTagValuesEncodeAndDecode() async throws {
    let details = CreateGovernanceInstanceDetails(
        displayName: "test",
        licenseType: .newLicense,
        tenancyNamespace: "namespace",
        compartmentId: "ocid1.compartment.oc1..example",
        idcsAccessToken: "token",
        definedTags: [
            "operations": [
                "costCenter": .string("platform"),
                "priority": .number(1)
            ]
        ],
        freeformTags: ["env": "test"],
        systemTags: [
            "orcl-cloud": [
                "free-tier-retained": .bool(true)
            ]
        ]
    )

    let data = try JSONEncoder().encode(details)
    let decoded = try JSONDecoder().decode(CreateGovernanceInstanceDetails.self, from: data)

    #expect(decoded.definedTags?["operations"]?["costCenter"] == .string("platform"))
    #expect(decoded.definedTags?["operations"]?["priority"] == .number(1))
    #expect(decoded.systemTags?["orcl-cloud"]?["free-tier-retained"] == .bool(true))
}

@Test
func newlyExportedServiceModelsEncodeJSONValueTags() async throws {
    let tags: [String: [String: JSONValue]] = [
        "operations": [
            "costCenter": .string("platform"),
            "priority": .number(2),
            "enabled": .bool(true)
        ]
    ]

    let analytics = AnalyticsInstance(
        id: "ocid1.analyticsinstance.oc1..example",
        compartmentId: "ocid1.compartment.oc1..example",
        name: "analytics",
        lifecycleState: .active,
        timeCreated: Date(timeIntervalSince1970: 0),
        timeUpdated: Date(timeIntervalSince1970: 1),
        definedTags: tags
    )
    let decodedAnalytics = try JSONDecoder().decode(
        AnalyticsInstance.self,
        from: JSONEncoder().encode(analytics)
    )
    #expect(decodedAnalytics.definedTags?["operations"]?["costCenter"] == .string("platform"))

    let apmConfig = Config(definedTags: tags, configType: "metric")
    let decodedConfig = try JSONDecoder().decode(
        Config.self,
        from: JSONEncoder().encode(apmConfig)
    )
    #expect(decodedConfig.definedTags?["operations"]?["priority"] == .number(2))

    let cccSummary = CccInfrastructureSummary(
        id: "ocid1.cccinfrastructure.oc1..example",
        displayName: "ccc",
        compartmentId: "ocid1.compartment.oc1..example",
        subnetId: "ocid1.subnet.oc1..example",
        timeCreated: Date(timeIntervalSince1970: 2),
        lifecycleState: .active,
        definedTags: tags,
        systemTags: ["orcl-cloud": ["free-tier-retained": .bool(false)]]
    )
    let decodedSummary = try JSONDecoder().decode(
        CccInfrastructureSummary.self,
        from: JSONEncoder().encode(cccSummary)
    )
    #expect(decodedSummary.definedTags?["operations"]?["enabled"] == .bool(true))
    #expect(decodedSummary.systemTags?["orcl-cloud"]?["free-tier-retained"] == .bool(false))

    let eventRule = Rule(
        displayName: "rule",
        lifecycleState: .active,
        condition: "event.type = 'com.oraclecloud.objectstorage.createobject'",
        compartmentId: "ocid1.compartment.oc1..example",
        isEnabled: true,
        actions: ActionList(actions: [
            CreateNotificationServiceActionDetails(isEnabled: true, topicId: "ocid1.onstopic.oc1..example")
        ]),
        id: "ocid1.eventrule.oc1..example",
        timeCreated: Date(timeIntervalSince1970: 3),
        definedTags: ["operations": ["costCenter": .string("platform")]]
    )
    let decodedEventRule = try JSONDecoder().decode(Rule.self, from: JSONEncoder().encode(eventRule))
    #expect(decodedEventRule.definedTags?["operations"]?["costCenter"] == .string("platform"))

    let eventClient = EventsClient()
    #expect(String(describing: eventClient) == "EventsClient()")
}

@Test
func umbrellaExportsGeneratedServiceClient() async throws {
    let client = ubdsClient(
        httpClient: TestHTTPClient(),
        region: Region("us-phoenix-1"),
        signer: TestSigner()
    )

    let protocolClient: ClientProtocol = client
    #expect(String(describing: type(of: protocolClient)) == "ubdsClient")
}

@Test
func umbrellaExportsRecentlyAddedServiceTypes() async throws {
    let exportedTypes = [
        String(describing: AuditClient.self),
        String(describing: BastionClient.self),
        String(describing: CapacitymanagementClient.self),
        String(describing: DatalabelingserviceDatalabelingmanagementClient.self),
        String(describing: DatalabelingservicedataplaneDatalabelingClient.self),
        String(describing: EmwarehouseClient.self),
        String(describing: IntegrationIntegrationinstanceClient.self),
        String(describing: MonitoringClient.self),
        String(describing: StreamingStreamClient.self),
        String(describing: VaultVaultsClient.self),
        String(describing: VbsInstanceClient.self),
        String(describing: VisualBuilderVbinstanceClient.self)
    ]

    #expect(exportedTypes.contains("AuditClient"))
    #expect(exportedTypes.contains("BastionClient"))
    #expect(exportedTypes.contains("CapacitymanagementClient"))
    #expect(exportedTypes.contains("DatalabelingserviceDatalabelingmanagementClient"))
    #expect(exportedTypes.contains("DatalabelingservicedataplaneDatalabelingClient"))
    #expect(exportedTypes.contains("EmwarehouseClient"))
    #expect(exportedTypes.contains("IntegrationIntegrationinstanceClient"))
    #expect(exportedTypes.contains("MonitoringClient"))
    #expect(exportedTypes.contains("StreamingStreamClient"))
    #expect(exportedTypes.contains("VaultVaultsClient"))
    #expect(exportedTypes.contains("VbsInstanceClient"))
    #expect(exportedTypes.contains("VisualBuilderVbinstanceClient"))
}
