Ext.define('WebManager.model.menuModel', {
	extend: 'Ext.data.Model',
	fields:[
		{name:'id', type:'int'},
		{name:'pid', type:'int'},
		{name:'text', type:'varchar'},
		{name:'isold', type:'boolean',defaultValue: false},
		{name:'obj', type:'varchar'},
		{name:'leaf', type:'boolean', defaultValue: false},
		{name: 'url', type:'varchar'}
	]
});