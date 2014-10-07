Ext.define('WebManager.view.system.RoleGrid' ,{
	extend: 'Ext.grid.Panel',
	alias: 'widget.roleGrid',
	initComponent : function(){
		var me = this;
		var rowEditing = Ext.create('Ext.grid.plugin.RowEditing', {
        	clicksToMoveEditor: 1,
        	autoCancel: true
    	});
		var roleStore = Ext.create('WebManager.store.roleStore');
		Ext.apply(this,{
			store: roleStore,
			selType: 'rowmodel',
			loadMask: true,
			plugins: [rowEditing],
		    columns: [{
		    	header: '角色名称',
		    	dataIndex: 'role_name',
		    	width:200,
		    	flex:1,
		    	editor:{}
		    },{ 
		        header: '说明',
		        dataIndex: 'role_description',
		        width:200,
		        flex:1,
		        editor:{}
		    },{
		    	header: '操作',
		    	xtype: 'actioncolumn',
		    	width:200,
		    	flex:1,
		    	menuDisabled: true,
   				sortable: false,
   				align:'center',
   				groupable:false,
		    	items:[{
		    		iconCls:'delete-icon',
		    		tooltip: '删除',
       				handler: function(grid, rowIndex, colIndex){
		    			var rec = grid.getStore().getAt(rowIndex);
		    			Ext.Msg.show({
	     					title:'删除角色?',
	     					msg: '你确定要删除 <b>'+rec.data.role_name+'</b> 角色?',
	     					buttons: Ext.Msg.YESNO,
	     					icon: Ext.Msg.QUESTION,
	     					fn:function(btn){
				            	if(btn=='yes'){
				                	Ext.Ajax.request({
										params: {'mrole.role_id':rec.data.role_id},  
										url: '../manager/roleAction_d',
										success: function(response) {
											Ext.example.msg('Success', '<b>'+rec.data.role_name+'</b> 角色删除成功','');
											roleStore.reload();
										}
									});
				                }
	     					}
	     				});
       				}
		    	}]
		    }],
		    dockedItems: [{
            	xtype: 'pagingtoolbar',
            	store: roleStore,
            	dock: 'bottom',
            	emptyMsg: '没有数据',
            	items:[{
            	xtype:'button',
            	text:'添加角色',
            	iconCls:'add-icon',
            	handler:function(button){
            		var win = Ext.create('Ext.window.Window',{
            			title: '添加角色',
            			layout:'border',
    					height: 220,
    					width: 300,
    					animateTarget: button.getEl(),
    					modal:true,
    					items:[{
    						xtype:'form',
    						region:"center",
    						bodyPadding: 20,
    						url: "../manager/roleAction_a",
    						border:false,
    						buttons:[{
						    	text: '保存',
						    	width:100,
					        	formBind: true,
					        	disabled: true,
					        	handler:function(button){
    								var form = button.up('form').getForm();
				            		form.submit({
					        			waitMsg : '正在保存数据，请稍后...',
							        	success : function(form, action) {
					            			win.close();
					            			Ext.example.msg('Success', '角色添加成功','');
					            			roleStore.reload();
							        	},
							            failure : function(form, action) {
							        		Ext.example.msg('Failure', action.result.info,'fail');
							            	form.reset();
							            }
						        	});
					        	}
						    }],
	    					items:[{
	    						xtype:'textfield',
	    						align:'center',
	    						name: "mrole.role_name",
	    						allowBlank: false,
	    						anchor: '100%',
	    						blankText:'角色名称不能为空',
	    						minLength: 2,
	    						minLengthText:'名称不得少于2个字符',
	    						emptyText:'角色名称'
	    					},{
	    						xtype:'textarea',
	    						emptyText:'角色说明',
	    						anchor: '100%',
	    						name: "mrole.role_description"
	    					}]
    					}]
            		}).show();
            	}
            },{
            	xtype:'button',
            	text:'删除角色',
            	iconCls:'delete-icon',
            	handler:function(button){
            		var s = me.getSelectionModel().getLastSelected()
            		var selModel = me.getSelectionModel().hasSelection();
            		if(selModel){
	            		Ext.Msg.show({
	     					title:'删除角色?',
	     					msg: '你确定要删除 <b>'+s.data.role_name+'</b> 角色?',
	     					buttons: Ext.Msg.YESNO,
	     					icon: Ext.Msg.QUESTION,
	     					animateTarget: button.getEl(),
	     					fn:function(btn){
				            	if(btn=='yes'){
				                	Ext.Ajax.request({
										params: {'mrole.role_id':s.data.role_id},  
										url: '../manager/roleAction_d',
										success: function(response) {
											Ext.example.msg('Success', '<b>'+s.data.user_account+'</b> 角色删除成功','');
											roleStore.reload();
										}
									});
				                }
	     					}
						});
	            	}else{
	            		Ext.example.msg('Success', '请先选择一个角色后再执行删除操作','');
	            	}
            	}
            }],
            	displayInfo: true,
            	displayMsg: '当前显示{0}-{1}条记录 / 共{2}条记录 ',
            	beforePageText: '第',
            	afterPageText: '页/共{0}页'
            }],
		    listeners:{
				edit:function(editor, e){
					Ext.Ajax.request({
		                params: {
							'mrole.role_id':e.record.data.role_id,
							'mrole.role_name':e.record.data.role_name,
							'mrole.role_description':e.record.data.role_description
		                },
		                url: '../manager/roleAction_u',
		                success: function(response) {
		                	Ext.example.msg('Success', '修改 <b>'+e.record.data.role_name+'</b> 成功','');
		                }
		            });
				}
			}
		});
		this.callParent(arguments);
	}
});