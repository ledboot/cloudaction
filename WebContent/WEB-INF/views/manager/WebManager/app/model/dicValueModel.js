Ext.define('WebManager.model.dicTypeModel', {
	extend: 'Ext.data.Model',
	fields:[
		{name:'id', type:'int'},
		{name:'dicTypeId', type:'int'},
		{name:'dicName', type:'varchar'},
		{name:'createTime', type:'date'},
		{name:'state', type:'int',
			convert:function(value,record){
				if(value==1)
					return true;
				else
					return false;
			}
		}
	]
});