Ext.define('WebManager.view.system.CompetenceGridPanel' ,{
	extend: 'Ext.tree.Panel',
	alias: 'widget.competenceGridPanel',
	id:'competenceGridPanel',
	initComponent : function(){
		var me = this;
		roleN = null;
		roleI = null;
		Ext.apply(this,{
			region:"center",
			title:'权限',
			useArrows: true,
			xtype: 'check-tree',
			root: {
        		id:0,        		
        		expanded: true
        	},
        	rootVisible: false,
        	tools:[{
				type:'save',
				tooltip: '保存',
				handler:function(e,el){
        			if(roleN!=null){
				        var records = me.getView().getChecked();
				        var node = [];
				        Ext.Array.each(records, function(rec){
				            node.push(rec.get('id'));
				        });
				        Ext.Msg.show({
				            title: '保存权限?',
				            msg: '你确定要重新设置 <b>'+roleN+'</b> 角色的权限?',
				            icon: Ext.MessageBox.QUESTION,
				            animateTarget: el,
				            buttons: Ext.Msg.YESNO,
				            fn:function(ob){
				        		if(ob=='yes'){
				        			Ext.Ajax.request({
										params: {'node':node,'mlimit.role_id':roleI},
										url: '../manager/limitAction_u',
										success: function(response, options) {
											var obj=Ext.decode(response.responseText);
											if(obj.success)
												Ext.example.msg('Success', '<b>'+roleN+'</b> 权限保存成功','');
											else{
												Ext.example.msg('Failure', '<b>'+roleN+'</b> 权限保存失败<br/>错误信息:'+obj.info,'fail');
											}
										}
									});
				        		}
				            }
				        });
			        }
			    }
			}],
        	store:Ext.create('WebManager.store.menuLimitStore'),
        	listeners:{
				checkchange:function (node,checked,eOpts){
					me.setChildChecked(node,checked,me);
					me.setParentChecked(node,checked,me);
				},
				load:function(){
					this.expandAll();
				}
			},
		});
		this.callParent(arguments);
	},
	setChildChecked:function(node,checked,me){
		node.expand();
		node.set({checked:checked});
		if(node.hasChildNodes()){
			node.eachChild(function(child) {
				me.setChildChecked(child,checked);
			});
		}
	},
	setParentChecked:function(node,checked,me){
		node.set({checked:checked});
		var parentNode = node.parentNode;
		if(parentNode !=null){
			var flag = false;
			parentNode.eachChild(function(child) {
				if(child.data.checked == true){
	                    flag = true;
	                }
	            });
	        if(checked == false){
	            if(!flag){
	            	me.setParentChecked(parentNode,checked,me);
	            }
	        }else{
	        	if(flag){
	            	me.setParentChecked(parentNode,checked,me);
	            }
	    	}
		}
	},
	createTree:function(roleId,roleName){
		roleN = roleName;
		roleI = roleId;
		this.setTitle(roleName+'权限');
		this.getStore().reload({params:{'mlimit.role_id':roleId},});
	}
});