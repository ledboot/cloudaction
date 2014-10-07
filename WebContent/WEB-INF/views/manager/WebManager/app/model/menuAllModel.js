Ext.define('WebManager.model.menuAllModel', {
	extend: 'Ext.data.Model',
	fields:[
		{name:'id', type:'int'},
		{name:'pid', type:'int'},
		{name:'text', type:'varchar'},
		{name:'leaf', type:'boolean', defaultValue: false},
		{name:'isold', type:'boolean',defaultValue: false},
		{name:'obj', type:'varchar'},
		{name: 'url', type:'varchar'},
		{name: 'hrefs', type:'varchar'}
	]
});