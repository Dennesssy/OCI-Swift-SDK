/**
 * Provisioning Service Module
 * Handles resource creation and API enablement workflows
 */

const ProvisioningService = {
    // Resource creation workflows
    async provisionCompute(config) {
        try {
            const response = await OCIBridge.call('core', 'launchInstance', {
                compartmentId: config.compartmentId,
                displayName: config.name,
                shape: config.shape,
                sourceDetails: {
                    sourceType: 'image',
                    imageId: config.imageId
                },
                subnetId: config.subnetId,
                sshPublicKey: config.sshKey,
                metadata: config.metadata || {}
            });
            return response;
        } catch (error) {
            console.error('Failed to provision compute:', error);
            throw error;
        }
    },
    
    async provisionStorage(config) {
        try {
            const response = await OCIBridge.call('objectstorage', 'createBucket', {
                namespace: config.namespace,
                bucketName: config.name,
                compartmentId: config.compartmentId,
                storageTier: config.tier || 'Standard',
                versioning: config.versioning || 'Disabled',
                autoTiering: config.autoTiering || 'Disabled'
            });
            return response;
        } catch (error) {
            console.error('Failed to provision storage:', error);
            throw error;
        }
    },
    
    async provisionDatabase(config) {
        try {
            let response;
            
            if (config.type === 'autonomous') {
                response = await OCIBridge.call('database', 'createAutonomousDatabase', {
                    compartmentId: config.compartmentId,
                    displayName: config.name,
                    dbName: config.dbName,
                    dbWorkload: config.workload || 'OLTP',
                    cpuCoreCount: config.cpuCount || 1,
                    dataStorageSizeInTBs: config.storageTB || 1,
                    adminPassword: config.adminPassword,
                    isFreeTier: config.freeTier || false
                });
            } else {
                response = await OCIBridge.call('database', 'launchDBSystem', {
                    compartmentId: config.compartmentId,
                    displayName: config.name,
                    shape: config.shape,
                    subnetId: config.subnetId,
                    dbHome: {
                        dbVersion: config.dbVersion,
                        database: {
                            dbName: config.dbName,
                            adminPassword: config.adminPassword
                        }
                    }
                });
            }
            
            return response;
        } catch (error) {
            console.error('Failed to provision database:', error);
            throw error;
        }
    },
    
    async provisionKubernetes(config) {
        try {
            const response = await OCIBridge.call('containerengine', 'createCluster', {
                compartmentId: config.compartmentId,
                name: config.name,
                vcnId: config.vcnId,
                kubernetesVersion: config.k8sVersion || 'v1.28.2',
                options: {
                    serviceLbSubnetIds: config.lbSubnetIds || [],
                    podsCidr: config.podsCidr || '10.244.0.0/16',
                    servicesCidr: config.servicesCidr || '10.96.0.0/16'
                }
            });
            return response;
        } catch (error) {
            console.error('Failed to provision Kubernetes:', error);
            throw error;
        }
    },
    
    async createNodePool(clusterId, config) {
        try {
            const response = await OCIBridge.call('containerengine', 'createNodePool', {
                clusterId: clusterId,
                compartmentId: config.compartmentId,
                name: config.name,
                nodeShape: config.shape,
                nodeConfigDetails: {
                    size: config.nodeCount || 3,
                    placementConfigs: config.placementConfigs || []
                },
                nodeSourceDetails: {
                    sourceType: 'image',
                    imageId: config.imageId
                }
            });
            return response;
        } catch (error) {
            console.error('Failed to create node pool:', error);
            throw error;
        }
    },
    
    async provisionNetwork(config) {
        try {
            // Create VCN
            const vcn = await OCIBridge.call('core', 'createVcn', {
                compartmentId: config.compartmentId,
                displayName: config.vcnName,
                cidrBlock: config.cidrBlock || '10.0.0.0/16',
                dnsLabel: config.dnsLabel
            });
            
            const vcnId = vcn.id;
            
            // Create Subnets
            const subnets = [];
            for (const subnetConfig of (config.subnets || [])) {
                const subnet = await OCIBridge.call('core', 'createSubnet', {
                    compartmentId: config.compartmentId,
                    displayName: subnetConfig.name,
                    vcnId: vcnId,
                    cidrBlock: subnetConfig.cidr,
                    subnetAccess: subnetConfig.access || 'PUBLIC',
                    dnsLabel: subnetConfig.dnsLabel,
                    prohibitPublicIpOnVnic: subnetConfig.access === 'PRIVATE'
                });
                subnets.push(subnet);
            }
            
            // Create Internet Gateway if public subnet exists
            if (config.subnets?.some(s => s.access === 'PUBLIC')) {
                await OCIBridge.call('core', 'createInternetGateway', {
                    compartmentId: config.compartmentId,
                    displayName: `${config.vcnName}-igw`,
                    vcnId: vcnId,
                    isEnabled: true
                });
            }
            
            return { vcn, subnets };
        } catch (error) {
            console.error('Failed to provision network:', error);
            throw error;
        }
    },
    
    async provisionLoadBalancer(config) {
        try {
            const response = await OCIBridge.call('loadbalancer', 'createLoadBalancer', {
                compartmentId: config.compartmentId,
                displayName: config.name,
                shapeName: config.shape || '100Mbps',
                subnetIds: config.subnetIds,
                isPrivate: config.isPrivate || false,
                listeners: config.listeners || {},
                backendSets: config.backendSets || {}
            });
            return response;
        } catch (error) {
            console.error('Failed to provision load balancer:', error);
            throw error;
        }
    },
    
    // API Enablement
    async enableService(serviceName, compartmentId) {
        try {
            // Enable service in compartment
            const response = await OCIBridge.call('identity', 'enableService', {
                compartmentId,
                serviceName
            });
            return response;
        } catch (error) {
            console.error(`Failed to enable service ${serviceName}:`, error);
            throw error;
        }
    },
    
    async listAvailableServices() {
        return [
            { name: 'compute', displayName: 'Compute', category: 'dev', enabled: true },
            { name: 'objectstorage', displayName: 'Object Storage', category: 'dev', enabled: true },
            { name: 'blockstorage', displayName: 'Block Volume', category: 'dev', enabled: true },
            { name: 'filestorage', displayName: 'File Storage', category: 'dev', enabled: false },
            { name: 'database', displayName: 'Database', category: 'enterprise', enabled: true },
            { name: 'containerengine', displayName: 'Kubernetes', category: 'dev', enabled: false },
            { name: 'functions', displayName: 'Functions', category: 'dev', enabled: false },
            { name: 'loadbalancer', displayName: 'Load Balancer', category: 'enterprise', enabled: true },
            { name: 'networkloadbalancer', displayName: 'Network Load Balancer', category: 'enterprise', enabled: false },
            { name: 'dns', displayName: 'DNS', category: 'enterprise', enabled: false },
            { name: 'vault', displayName: 'Vault', category: 'security', enabled: false },
            { name: 'waf', displayName: 'WAF', category: 'security', enabled: false },
            { name: 'apigateway', displayName: 'API Gateway', category: 'dev', enabled: false },
            { name: 'streaming', displayName: 'Streaming', category: 'dev', enabled: false },
            { name: 'queue', displayName: 'Queue', category: 'dev', enabled: false },
            { name: 'nosql', displayName: 'NoSQL', category: 'dev', enabled: false },
            { name: 'dataintegration', displayName: 'Data Integration', category: 'enterprise', enabled: false },
            { name: 'datascience', displayName: 'Data Science', category: 'ai', enabled: false },
            { name: 'generativeai', displayName: 'Generative AI', category: 'ai', enabled: false },
            { name: 'ai_vision', displayName: 'AI Vision', category: 'ai', enabled: false },
            { name: 'ai_language', displayName: 'AI Language', category: 'ai', enabled: false },
            { name: 'cloudguard', displayName: 'Cloud Guard', category: 'security', enabled: false },
            { name: 'logging', displayName: 'Logging', category: 'enterprise', enabled: false },
            { name: 'monitoring', displayName: 'Monitoring', category: 'enterprise', enabled: true },
            { name: 'ons', displayName: 'Notifications', category: 'enterprise', enabled: true },
            { name: 'events', displayName: 'Events', category: 'enterprise', enabled: false },
            { name: 'resourcemanager', displayName: 'Resource Manager', category: 'dev', enabled: false },
            { name: 'devops', displayName: 'DevOps', category: 'dev', enabled: false }
        ];
    },
    
    async enableAllAIservices(compartmentId) {
        const aiServices = [
            'datascience',
            'generativeai',
            'ai_vision',
            'ai_language',
            'ai_speech',
            'ai_anomaly_detection',
            'ai_forecasting'
        ];
        
        const results = [];
        for (const service of aiServices) {
            try {
                const result = await this.enableService(service, compartmentId);
                results.push({ service, success: true, result });
            } catch (error) {
                results.push({ service, success: false, error: error.message });
            }
        }
        
        return results;
    },
    
    // Quick provisioning templates
    getQuickTemplates() {
        return [
            {
                id: 'web-server',
                name: 'Web Server',
                description: 'VM with public IP, web ports open',
                resources: ['compute', 'network', 'security'],
                config: {
                    shape: 'VM.Standard.E2.1.Micro',
                    image: 'Oracle-Linux-9',
                    ports: [80, 443, 22]
                }
            },
            {
                id: 'kubernetes-cluster',
                name: 'Kubernetes Cluster',
                description: 'OKE cluster with 3 nodes',
                resources: ['containerengine', 'network', 'compute'],
                config: {
                    nodeCount: 3,
                    shape: 'VM.Standard2.1',
                    k8sVersion: 'v1.28.2'
                }
            },
            {
                id: 'autonomous-db',
                name: 'Autonomous Database',
                description: 'Always Free ADB instance',
                resources: ['database'],
                config: {
                    workload: 'OLTP',
                    freeTier: true,
                    cpuCount: 1,
                    storageTB: 0.02
                }
            },
            {
                id: 'object-storage',
                name: 'Object Storage Setup',
                description: 'Bucket with lifecycle policies',
                resources: ['objectstorage'],
                config: {
                    tier: 'Standard',
                    versioning: 'Enabled'
                }
            },
            {
                id: 'secure-vault',
                name: 'Secure Vault',
                description: 'Vault with auto-rotation',
                resources: ['keymanagement'],
                config: {
                    type: 'DEFAULT'
                }
            }
        ];
    },
    
    async provisionFromTemplate(templateId, compartmentId, customConfig = {}) {
        const templates = this.getQuickTemplates();
        const template = templates.find(t => t.id === templateId);
        
        if (!template) {
            throw new Error(`Template ${templateId} not found`);
        }
        
        const config = { ...template.config, ...customConfig, compartmentId };
        
        switch (templateId) {
            case 'web-server':
                return this.provisionCompute({
                    ...config,
                    name: customConfig.name || 'web-server',
                    shape: config.shape,
                    imageId: config.image
                });
                
            case 'kubernetes-cluster':
                // First create network
                const network = await this.provisionNetwork({
                    compartmentId,
                    vcnName: `${config.name}-vcn`,
                    subnets: [
                        { name: 'k8s-subnet', cidr: '10.0.1.0/24', access: 'PUBLIC' }
                    ]
                });
                
                // Then create cluster
                return this.provisionKubernetes({
                    ...config,
                    name: customConfig.name || 'k8s-cluster',
                    vcnId: network.vcn.id
                });
                
            case 'autonomous-db':
                return this.provisionDatabase({
                    ...config,
                    name: customConfig.name || 'autonomous-db',
                    dbName: customConfig.dbName || 'ADBDEV',
                    type: 'autonomous'
                });
                
            case 'object-storage':
                return this.provisionStorage({
                    ...config,
                    name: customConfig.name || 'app-bucket'
                });
                
            case 'secure-vault':
                return OCIBridge.call('keymanagement', 'createVault', {
                    compartmentId,
                    displayName: customConfig.name || 'app-vault',
                    vaultType: config.type
                });
                
            default:
                throw new Error(`Unknown template: ${templateId}`);
        }
    }
};

window.ProvisioningService = ProvisioningService;
