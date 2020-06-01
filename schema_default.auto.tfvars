{ 
  "schema_default": [

            {
                "name" : "sub",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : false,
                "required" : true,
                "string_attribute_constraints" : [{
                    "min_length" :"1",
                    "max_length" :"2048"
                }]
            },
            {
                "name" : "name",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" :"0",
                    "max_length" :"2048"
                }]
            },
            {
                "name" : "given_name",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : true,
                "string_attribute_constraints" : [{
                    "min_length" :"0",
                    "max_length" :"2048"
                }]
            },
            {
                "name" : "family_name",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : true,
                "string_attribute_constraints" : [{
                    "min_length" :"0",
                    "max_length" :"2048"
                }]
            },
            {
                "name" : "middle_name",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" :"0",
                    "max_length" :"2048"
                }]
            },
            {
                "name" : "nickname",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" :"0",
                    "max_length" :"2048"
                }]
            },
            {
                "name" : "preferred_username",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" :"0",
                    "max_length" :"2048"
                }]
            },
            {
                "name" : "profile",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" :"0",
                    "max_length" :"2048"
                }]
            },
            {
                "name" : "picture",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" :"0",
                    "max_length" :"2048"
                }]
            },
            {
                "name" : "website",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" :"0",
                    "max_length" :"2048"
                }]
            },
            {
                "name" : "email",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : true,
                "string_attribute_constraints" : [{
                    "min_length" :"0",
                    "max_length" :"2048"
                }]
            },
            {
                "name" : "email_verified",
                "attribute_data_type" : "Boolean",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false
            },
            {
                "name" : "gender",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" :"0",
                    "max_length" :"2048"
                }]
            },
            {
                "name" : "birthdate",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" :"10",
                    "max_length" :"10"
                }]
            },
            {
                "name" : "zoneinfo",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" : "0",
                    "max_length" : "2048"
                }]
            },
            {
                "name" : "locale",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" :"0",
                    "max_length" :"2048"
                }]
            },
            {
                "name" : "phone_number",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" :"0",
                    "max_length" :"2048"
                }]
            },
            {
                "name" : "address",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" :"0",
                    "max_length" :"2048"
                }]
            },
            {
                "name" : "updated_at",
                "attribute_data_type" : "Number",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "number_attribute_constraints" : [{
                    "min_value" : "0"
                }]
            },
            {
                "name" : "qp_orgId",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" :"1",
                    "max_length" :"256"
                }]
            },
            {
                "name" : "qp_original_orgId",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" :"1",
                    "max_length" :"256"
                }]
            },
            {
                "name" : "identities",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{}]
            },
            {
                "name" : "qp_role",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" :"1",
                    "max_length" :"256"
                }]
            },
            {
                "name" : "systemManagement",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" :"1",
                    "max_length" :"256"
                }]
            },
            {
                "name" : "avatar_path",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" :"1",
                    "max_length" :"256"
                }]
            },
            {
                "name" : "last_sign_in_at",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" :"1",
                    "max_length" :"256"
                }]
            },
            {
                "name" : "current_sign_in_at",
                "attribute_data_type" : "String",
                "developer_only_attribute" : false,
                "mutable" : true,
                "required" : false,
                "string_attribute_constraints" : [{
                    "min_length" :"1",
                    "max_length" :"256"
                }]
            }
        ]
}
