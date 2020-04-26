define(function(require, exports, module) {
    window.$ = window.jQuery = require('jquery');
    require('bootstrap');
    require('html580');
    require('pushy');
    //require('iscroll');
    require('cookie');
    require('lazyload');
    require('jquery-confirm');
    require('jquery-confirm-css');
    $("a[rel='external'],a[rel='external nofollow']").click(function() {
        window.open(this.href);
        return false;
    });
    if (app.scripts) {
        for(var i=0,l=app.scripts.length;i<l;i++) {
            seajs.use(app.scripts[i], function(module) {
                if ($.isFunction(module.run)) {
                    module.run();
                }
            });
        }
    }

    var rscriptType = /^$|\/(?:java|ecma)script/i,rcleanScript = /^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g;
    function getJavaScript(data) {
        var scripts = jQuery.map($(data), function( elem ){
            elem.type = (jQuery.find.attr( elem, "type" ) !== null) + "/" + elem.type;
            return elem;
        });
        hasScripts = scripts.length;
        if ( hasScripts ) {
            doc = scripts[ scripts.length - 1 ].ownerDocument;
            jQuery.map( scripts, function(elem){
                var match = /^true\/(.*)/.exec( elem.type );
                if ( match ) {
                    elem.type = match[1];
                } else {
                    elem.removeAttribute("type");
                }
                return elem;
            });
            for (var i = 0; i < hasScripts; i++ ) {
                node = scripts[ i ];
                if ( rscriptType.test( node.type || "" )) {
                    if ( node.src ) {
                        if ( jQuery._evalUrl ) {
                            jQuery._evalUrl( node.src );
                        }
                    } else {
                        jQuery.globalEval( ( node.text || node.textContent || node.innerHTML || "" ).replace( rcleanScript, "" ) );
                    }
                }
            }
        }
    }
    //全局ajax处理
    $.ajaxSetup({
        complete: function (jqXHR,type) {
            if(type=='parsererror'){
                getJavaScript(jqXHR.responseText);
            }
        },
        data: {
            __isajax__: true
        },
        error: function (jqXHR, textStatus, errorThrown) {
        }
    });

    /*var myScroll = new IScroll('#wrapper', {
		mouseWheel: true,
		scrollbars: true,
		mouseWheel: true,
		interactiveScrollbars: true,
		shrinkScrollbars: 'scale',
		fadeScrollbars: true,
		cacheSize: 1000
	});*/
    $('[data-lazy="lazy"]').lazyload({effect : "fadeIn",container: $("#scroller")});
    function loadData(thizs){
        var thiz=$(thizs);
        var page = thiz.data("page");
        if(thiz.data("init")&&thiz.data("init")=='true'){
            page = 1;
        }else{
            page++;
        }
        thiz.data("page",page);
        $.ajax({
            url : thiz.data("href"),
            type:"POST",
            beforeSend:function(){
                thiz.html("加载中...");
            },
            data:{template:thiz.data("template"),page:page,rows:thiz.data("rows"),cat:thiz.data("cat"),siteName:thiz.data("sitename")},
            success: function(rs) {
                var type = thiz.data("type");
                if(rs.indexOf("没有更多内容")>=0){
                    thiz.html("没有更多内容");
                    thiz.unbind("click");
                }else{
                    var $rs=$(rs);
                    if(page=="1"&&thiz.data("init")&&thiz.data("init")=='true'){
                        $(thiz.data("target")).html(rs);
                    }else if(type=="append"){
                        $(thiz.data("target")).append($rs);
                    }else{
                        $(thiz.data("target")).html($rs);
                    }
                    //myScroll.refresh();
                    thiz.html("点击查看更多");
                    $rs.find('[data-lazy="lazy"]').lazyload({effect : "fadeIn",container: $("#scroller")});
                }
            },
            error:function(){
                thiz.html("点击查看更多");
            }
        });
    }
    $('[data-ajax="html580"]').each(function(){
        $(this).bind("click",function(e){
            if($(this).html().indexOf("没有更多内容")>=0){
                $(this).unbind("click");
            }else if($(this).html()==="加载中..."){
                $.confirm({
                    keyboardEnabled: true,
                    content:"点击过快，请稍等片刻!",
                    confirmButton: false,
                    columnClass: 'col-xs-4 col-xs-offset-4',
                    autoClose: 'cancel|2000',
                    cancelButtonClass: 'btn-primary',
                    cancelButton: '确定'
                });
            }else{
                loadData(this);
            }
            e.preventDefault();
        });
        if($(this).data("init")){
            loadData(this);
        }
    });

    $("li.nav-hover").mouseenter(function(event) {
        $(this).addClass("open");
    }).mouseleave(function(event) {
        $(this).removeClass("open");
    });
});