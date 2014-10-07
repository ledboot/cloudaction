Ext.define('WebManager.model.menuLimitModel', {
	extend: 'Ext.data.Model',
	fields:[
		{name:'id', type:'int'},
		{name:'pid', type:'int'},
		{name:'text', type:'varchar'},
		{name:'checked', type:'boolean'},
		{name:'leaf', type:'boolean', defaultValue: false}
	]
});