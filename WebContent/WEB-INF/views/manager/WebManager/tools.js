Ext.example = function(){
    var msgCt;
    function createBox(t, s ,status){
    	if(status=='fail')
    		return '<div class="msg-'+status+'"><h3>' + t + '</h3><p>' + s + '</p></div>';
       	return '<div class="msg"><h3>' + t + '</h3><p>' + s + '</p></div>';
    }
    return {
        msg : function(title, format, status){
            if(!msgCt)
                msgCt = Ext.DomHelper.insertFirst(document.body, {id:'msg-div'}, true);
            var m = Ext.DomHelper.append(msgCt, createBox(title, format , status), true);
            m.hide();
            m.slideIn('t').ghost("t", { delay: 2000, remove: true});
        },
        init : function(){
            if(!msgCt){
                msgCt = Ext.DomHelper.insertFirst(document.body, {id:'msg-div'}, true);
            }
        }
    };
}();
Ext.onReady(Ext.example.init, Ext.example);