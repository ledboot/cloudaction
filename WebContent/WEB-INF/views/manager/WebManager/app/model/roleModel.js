Ext.define('WebManager.model.roleModel', {
	extend: 'Ext.data.Model',
	fields:[
		{name:'role_id', type:'int'},
		{name:'role_name', type:'varchar'},
		{name: 'role_description', type:'varchar'}
	]
});