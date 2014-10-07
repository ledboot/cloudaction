Ext.define('WebManager.store.dicTypeStore',{
	extend:'Ext.data.Model',
	model:'WebManager.model.dicTypeModel',
	autoLoad:true,
	pageSize: 20,
	proxy:{
		type:'ajax',
		url:'../manager/dicTypeAction_s',
		params:{
			start:0,
			limit:20
		},
		render:{root:'item', totalProperty: 'results'}
	}
});