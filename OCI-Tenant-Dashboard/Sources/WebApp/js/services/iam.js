/**
 * IAM Service Module
 * Handles OCI Identity and Access Management
 */

const IAMService = {
    // Users
    async listUsers(compartmentId) {
        try {
            const response = await OCIBridge.call('identity', 'listUsers', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list users:', error);
            return [];
        }
    },
    
    async getUser(userId) {
        try {
            const response = await OCIBridge.call('identity', 'getUser', { userId });
            return response;
        } catch (error) {
            console.error('Failed to get user:', error);
            throw error;
        }
    },
    
    async createUser(config) {
        try {
            const response = await OCIBridge.call('identity', 'createUser', config);
            return response;
        } catch (error) {
            console.error('Failed to create user:', error);
            throw error;
        }
    },
    
    async deleteUser(userId) {
        try {
            await OCIBridge.call('identity', 'deleteUser', { userId });
            return true;
        } catch (error) {
            console.error('Failed to delete user:', error);
            throw error;
        }
    },
    
    async updateUser(userId, config) {
        try {
            const response = await OCIBridge.call('identity', 'updateUser', {
                userId,
                ...config
            });
            return response;
        } catch (error) {
            console.error('Failed to update user:', error);
            throw error;
        }
    },
    
    // Groups
    async listGroups(compartmentId) {
        try {
            const response = await OCIBridge.call('identity', 'listGroups', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list groups:', error);
            return [];
        }
    },
    
    async createGroup(config) {
        try {
            const response = await OCIBridge.call('identity', 'createGroup', config);
            return response;
        } catch (error) {
            console.error('Failed to create group:', error);
            throw error;
        }
    },
    
    async deleteGroup(groupId) {
        try {
            await OCIBridge.call('identity', 'deleteGroup', { groupId });
            return true;
        } catch (error) {
            console.error('Failed to delete group:', error);
            throw error;
        }
    },
    
    // Group Membership
    async listGroupMembers(groupId) {
        try {
            const response = await OCIBridge.call('identity', 'listUserGroupMemberships', { groupId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list group members:', error);
            return [];
        }
    },
    
    async addUserToGroup(userId, groupId) {
        try {
            const response = await OCIBridge.call('identity', 'addUserToGroup', {
                userId,
                groupId
            });
            return response;
        } catch (error) {
            console.error('Failed to add user to group:', error);
            throw error;
        }
    },
    
    async removeUserFromGroup(membershipId) {
        try {
            await OCIBridge.call('identity', 'removeUserFromGroup', { membershipId });
            return true;
        } catch (error) {
            console.error('Failed to remove user from group:', error);
            throw error;
        }
    },
    
    // Policies
    async listPolicies(compartmentId) {
        try {
            const response = await OCIBridge.call('identity', 'listPolicies', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list policies:', error);
            return [];
        }
    },
    
    async getPolicy(policyId) {
        try {
            const response = await OCIBridge.call('identity', 'getPolicy', { policyId });
            return response;
        } catch (error) {
            console.error('Failed to get policy:', error);
            throw error;
        }
    },
    
    async createPolicy(config) {
        try {
            const response = await OCIBridge.call('identity', 'createPolicy', config);
            return response;
        } catch (error) {
            console.error('Failed to create policy:', error);
            throw error;
        }
    },
    
    async updatePolicy(policyId, config) {
        try {
            const response = await OCIBridge.call('identity', 'updatePolicy', {
                policyId,
                ...config
            });
            return response;
        } catch (error) {
            console.error('Failed to update policy:', error);
            throw error;
        }
    },
    
    async deletePolicy(policyId) {
        try {
            await OCIBridge.call('identity', 'deletePolicy', { policyId });
            return true;
        } catch (error) {
            console.error('Failed to delete policy:', error);
            throw error;
        }
    },
    
    // Dynamic Groups
    async listDynamicGroups(compartmentId) {
        try {
            const response = await OCIBridge.call('identity', 'listDynamicGroups', { compartmentId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list dynamic groups:', error);
            return [];
        }
    },
    
    async createDynamicGroup(config) {
        try {
            const response = await OCIBridge.call('identity', 'createDynamicGroup', config);
            return response;
        } catch (error) {
            console.error('Failed to create dynamic group:', error);
            throw error;
        }
    },
    
    async deleteDynamicGroup(dynamicGroupId) {
        try {
            await OCIBridge.call('identity', 'deleteDynamicGroup', { dynamicGroupId });
            return true;
        } catch (error) {
            console.error('Failed to delete dynamic group:', error);
            throw error;
        }
    },
    
    // Compartments
    async listCompartments(compartmentId, accessLevel = 'ANY') {
        try {
            const response = await OCIBridge.call('identity', 'listCompartments', {
                compartmentId,
                accessLevel
            });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list compartments:', error);
            return [];
        }
    },
    
    async getCompartment(compartmentId) {
        try {
            const response = await OCIBridge.call('identity', 'getCompartment', { compartmentId });
            return response;
        } catch (error) {
            console.error('Failed to get compartment:', error);
            throw error;
        }
    },
    
    async createCompartment(config) {
        try {
            const response = await OCIBridge.call('identity', 'createCompartment', config);
            return response;
        } catch (error) {
            console.error('Failed to create compartment:', error);
            throw error;
        }
    },
    
    async deleteCompartment(compartmentId) {
        try {
            await OCIBridge.call('identity', 'deleteCompartment', { compartmentId });
            return true;
        } catch (error) {
            console.error('Failed to delete compartment:', error);
            throw error;
        }
    },
    
    // API Keys
    async listAPIKeys(userId) {
        try {
            const response = await OCIBridge.call('identity', 'listApiKeys', { userId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list API keys:', error);
            return [];
        }
    },
    
    async uploadAPIKey(userId, key) {
        try {
            const response = await OCIBridge.call('identity', 'uploadApiKey', {
                userId,
                key
            });
            return response;
        } catch (error) {
            console.error('Failed to upload API key:', error);
            throw error;
        }
    },
    
    async deleteAPIKey(userId, fingerprint) {
        try {
            await OCIBridge.call('identity', 'deleteApiKey', { userId, fingerprint });
            return true;
        } catch (error) {
            console.error('Failed to delete API key:', error);
            throw error;
        }
    },
    
    // Auth Tokens
    async listAuthTokens(userId) {
        try {
            const response = await OCIBridge.call('identity', 'listAuthTokens', { userId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list auth tokens:', error);
            return [];
        }
    },
    
    async createAuthToken(userId, description) {
        try {
            const response = await OCIBridge.call('identity', 'createAuthToken', {
                userId,
                description
            });
            return response;
        } catch (error) {
            console.error('Failed to create auth token:', error);
            throw error;
        }
    },
    
    async deleteAuthToken(userId, authTokenId) {
        try {
            await OCIBridge.call('identity', 'deleteAuthToken', { userId, authTokenId });
            return true;
        } catch (error) {
            console.error('Failed to delete auth token:', error);
            throw error;
        }
    },
    
    // MFA
    async enableMFA(userId) {
        try {
            const response = await OCIBridge.call('identity', 'createMfaTotpDevice', { userId });
            return response;
        } catch (error) {
            console.error('Failed to enable MFA:', error);
            throw error;
        }
    },
    
    async listMfaDevices(userId) {
        try {
            const response = await OCIBridge.call('identity', 'listMfaTotpDevices', { userId });
            return response.items || [];
        } catch (error) {
            console.error('Failed to list MFA devices:', error);
            return [];
        }
    },
    
    // Helper methods
    getUserStatusColor(user) {
        if (user.isMfaActivated) return 'var(--status-healthy)';
        if (user.lifecycleState === 'ACTIVE') return 'var(--status-warning)';
        return 'var(--status-critical)';
    },
    
    formatUserName(user) {
        return user.displayName || user.name || user.id.split('.').pop();
    },
    
    parsePolicyStatements(policy) {
        if (!policy.statements) return [];
        return policy.statements.map(statement => {
            // Parse policy syntax: Allow group <group> to <verb> <resource> in <compartment>
            const match = statement.match(/Allow\s+(\w+)\s+(\S+)\s+to\s+(\S+)\s+(\S+)\s+in\s+(\S+)/i);
            if (match) {
                return {
                    raw: statement,
                    subjectType: match[1],
                    subject: match[2],
                    verb: match[3],
                    resource: match[4],
                    location: match[5]
                };
            }
            return { raw: statement };
        });
    }
};

window.IAMService = IAMService;
