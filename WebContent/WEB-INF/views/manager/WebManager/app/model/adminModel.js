Ext.define('WebManager.model.adminModel', {
	extend: 'Ext.data.Model',
	groupField: 'role_id',
	fields:[
		{name:'user_id', type:'int'},
		{name:'user_status', type:'int',
			convert: function (value, record) {
						if(value==1)
                        	return true;
						else
							return false;
                    }
		},
		{name:'user_account', type:'varchar'},
		{name: 'role_id', type:'int'}
	]
});