Ext.define('WebManager.view.system.AdminGrid' ,{
	extend: 'Ext.grid.Panel',
	alias: 'widget.adminGrid',
	config:{parentItem:null},
	initComponent : function(){
		var me = this;
		var rowEditing = Ext.create('Ext.grid.plugin.RowEditing', {
        	clicksToMoveEditor: 1,
        	autoCancel: true
    	});
		var adminStore = Ext.create('WebManager.store.adminStore',{
			autoLoad:false
		});
		var roleStore = Ext.create('WebManager.store.roleStore',{
			listeners: {
	            load: function(sstore, record, opts) {
	                adminStore.load();
	            }
        	}
		});
		Ext.apply(this,{
			store: adminStore,
			selType: 'rowmodel',
			loadMask: true,
			plugins: [rowEditing],
			features:[{
				ftype:'grouping',
				groupByText : '用本字段分组',
                showGroupsText : '角色分组',
                groupHeaderTpl: '所属角色 ({rows.length})',
                startCollapsed: false
			}],
		    columns: [{
		    	header: '员工账号',
		    	dataIndex: 'user_account',
		    	width:200,
		    	flex:1,
		    	groupable:false
		    },{ 
		        header: '状态',
		        dataIndex: 'user_status',
		        width:200,
		        align:'center',
		        flex:1,
		        groupable:false,
		        renderer:function(ob){
		        	if(ob)
		        		return '<font color=gray>已激活</font>';
		        	else
		        		return '<font color=#F75B08>锁定</font>';
		        },
		        editor: {
        			xtype:'checkbox'
            	}
		    },{ 
		        header: '所属角色',
		        dataIndex: 'role_id',
		        width:200,
		        flex:1,
		        renderer:function(value){
		        	var rowIndex = roleStore.find('role_id', value);
        			if (rowIndex < 0) return "<font color=gray>请选择..</font>";
        			var record = roleStore.getAt(rowIndex);
        			return record ? record.get('role_name') : "<font color=gray>请选择..</font>";
		        },
		        editor:{
		        	xtype:'combobox',
		        	store: roleStore,
					queryMode: 'local',
			    	displayField: 'role_name',
			    	valueField: 'role_id',
			    	triggerAction: 'all',
			    	editable:false
		        }
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
		    		iconCls:'reset-icon',
		    		tooltip: '重置',
       				handler: function(grid, rowIndex, colIndex){
		    			var rec = grid.getStore().getAt(rowIndex);
		    			Ext.Msg.show({
	     					title:'重置密码?',
	     					msg: '你确定要重置员工 <b>'+rec.data.user_account+'</b> 的密码吗?',
	     					buttons: Ext.Msg.YESNO,
	     					icon: Ext.Msg.QUESTION,
	     					animateTarget: grid.getEl(),
	     					fn:function(btn){
            					if(btn=='yes'){
				                	Ext.Ajax.request({
										params: {'muser.user_id':rec.data.user_id},
										url: '../manager/muserAction_r',
										success: function(response) {
											Ext.example.msg('Success', '员工 <b>'+rec.data.user_account+'</b> 密码重置成功','');
											adminStore.reload();
										}
									});
				                }
	     					}
            			});
       				}
		    	},{
		    		iconCls:'delete-icon',
		    		tooltip: '删除',
       				handler: function(grid, rowIndex, colIndex){
		    			var rec = grid.getStore().getAt(rowIndex);
		    			Ext.Msg.show({
	     					title:'删除管理员?',
	     					msg: '你确定要删除员工 <b>'+rec.data.user_account+'</b> ?',
	     					buttons: Ext.Msg.YESNO,
	     					icon: Ext.Msg.QUESTION,
	     					animateTarget: grid.getEl(),
	     					fn:function(btn){
				            	if(btn=='yes'){
				                	Ext.Ajax.request({
										params: {'muser.user_id':rec.data.user_id},  
										url: '../manager/muserAction_d',
										success: function(response) {
											Ext.example.msg('Success', '管理员 <b>'+rec.data.user_account+'</b> 删除成功','');
											adminStore.reload();
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
            	store: adminStore,
            	border:false,
            	frame:false,
            	items:[{
            	xtype:'button',
            	text:'添加管理员',
            	iconCls:'add-icon',
            	handler:function(button){
            		var win = Ext.create('Ext.window.Window',{
            			title: '添加管理员',
            			layout:'border',
    					height: 210,
    					width: 300,
    					animateTarget: button.getEl(),
    					modal:true,
    					items:[{
    						xtype:'form',
    						region:"center",
    						bodyPadding: 20,
    						url: "../manager/muserAction_a",
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
					            			Ext.example.msg('Success', '管理员添加成功','');
					            			adminStore.reload();
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
	    						anchor: '100%',
	    						name: "muser.user_account",
	    						allowBlank: false,
	    						blankText:'账号不能为空',
	    						vtype:'alphanum',
	    						vtypeText:'只能是数字和字母',
	    						minLength: 5,
	    						minLengthText:'账号不得少于5个字符',
	    						emptyText:'员工账号'
	    					},{
	    						xtype:'textfield',
	    						emptyText:'密码',
	    						anchor: '100%',
	    						name: "muser.user_pass",
	    						blankText:'密码不能为空',
	    						allowBlank: false,
	    						align:'center',
	    						vtype:'alphanum',
	    						vtypeText:'只能是数字和字母',
	    						minLength: 6,
	    						minLengthText:'密码不得少于6个字符',
	    						inputType:'password'
	    					},{
		        				xtype:'combobox',
		        				store: roleStore,
		        				anchor: '100%',
		        				emptyText:'请选择角色',
		        				blankText:'请选择角色',
		        				editable:false,
		        				name: "muser.role_id",
		        				allowBlank: false,
								queryMode: 'local',
			    				displayField: 'role_name',
			    				valueField: 'role_id',
			    				triggerAction: 'all'
		        			}]
    					}]
            		}).show();
            	}
            },{
            	xtype:'button',
            	text:'删除员工',
            	iconCls:'delete-icon',
            	handler:function(button){
            		var s = me.getSelectionModel().getLastSelected()
            		var selModel = me.getSelectionModel().hasSelection();
            		if(selModel){
	            		Ext.Msg.show({
	     					title:'删除员工?',
	     					msg: '你确定要删除员工 <b>'+s.data.user_account+'</b> ?',
	     					buttons: Ext.Msg.YESNO,
	     					icon: Ext.Msg.QUESTION,
	     					animateTarget: button.getEl(),
	     					fn:function(btn){
				            	if(btn=='yes'){
				                	Ext.Ajax.request({
										params: {
											'muser.user_id':s.data.user_id
										},  
										url: '../manager/muserAction_d',
										success: function(response) {
											Ext.example.msg('Success', '员工 <b>'+s.data.user_account+'</b> 删除成功','');
											adminStore.reload();
										}
									});
				                }
	     					}
						});
	            	}else{
	            		Ext.example.msg('Success', '请先选择一个员工后再执行删除操作','');
	            	}
            	}
            },{
            	xtype:'button',
            	text:'重置密码',
            	iconCls:'reset-icon',
            	handler:function(button){
            		var s = me.getSelectionModel().getLastSelected()
            		var selModel = me.getSelectionModel().hasSelection();
            		if(selModel){
            			Ext.Msg.show({
	     					title:'重置密码?',
	     					msg: '你确定要重置员工 <b>'+s.data.user_account+'</b> 的密码吗?',
	     					buttons: Ext.Msg.YESNO,
	     					icon: Ext.Msg.QUESTION,
	     					fn:function(btn){
            					if(btn=='yes'){
				                	Ext.Ajax.request({
										params: {
											'muser.user_id':s.data.user_id
										},  
										url: '../manager/muserAction_r',
										success: function(response) {
											Ext.example.msg('Success', '员工 <b>'+s.data.user_account+'</b> 密码重置成功','');
											adminStore.reload();
										}
									});
				                }
	     					}
            			});
            		}else{
	            		Ext.example.msg('Success', '请先选择一个员工后再执行重置密码操作','');
	            	}
            	}
            }],
            	dock: 'bottom',
            	emptyMsg: '没有数据',
            	displayInfo: true,
            	displayMsg: '当前显示{0}-{1}条记录 / 共{2}条记录 ',
            	beforePageText: '第',
            	afterPageText: '页/共{0}页'
            }],
		    listeners:{
				edit:function(editor, e){
					Ext.Ajax.request({
		                params: {
							'muser.user_id':e.record.data.user_id,
							'muser.user_status':e.record.data.user_status==true?1:0,
							'muser.role_id':e.record.data.role_id
		                },
		                url: '../manager/muserAction_u',
		                success: function(response) {
		                	Ext.example.msg('Success', '修改 <b>'+e.record.data.user_account+'</b> 成功','');
		                }
		            });
				}
			}
		});
		this.callParent(arguments);
	}
});