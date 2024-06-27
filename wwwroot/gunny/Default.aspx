<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tank.Flash._Default" %>

<html>
<head id="Head1" runat="server">
    <META   HTTP-EQUIV="Pragma"   CONTENT="no-cache">    
    <META   HTTP-EQUIV="Cache-Control"   CONTENT="no-cache">    
    <META   HTTP-EQUIV="Expires"   CONTENT="0">    
    <title><%=SiteTitle%></title>
	<script type="text/javascript" src="scripts/dandantang.js"></script>
    <script type="text/javascript" src="scripts/rightClick.js"></script>
    <script type="text/javascript" src="scripts/swfobject.js"></script>
    <script src="scripts/prototype.js" type="text/javascript"></script>
    <script src="scripts/prototype_002.js" type="text/javascript"></script>
    <script src="scripts/popup.js" type="text/javascript"></script>
    <script type="text/javascript" src="scripts/zm.js"></script>
    <script type="text/javascript" src="scripts/zmCore-1.js"></script>
    <script type="text/javascript" src="scripts/feed-dialog-1.js"></script>
    <script type="text/javascript" src="scripts/isSafeFlash.js"></script> 
	
    <script type="text/javascript">
<!--
	var allowLeave = 2;
	var www="";
	var name="弹弹堂";
	
	function trace(){
		alert("充值");
	}
	function setFavorite(path,titlename,allowvalue)
	{ 
             www=path;
             name=titlename;
             allowLeave=allowvalue;
	}
	function toLocation(url,msg){
		alert(msg);
		closeWindow("1",url);
	}
	
	function addToFavorite()
	{
		var ua = navigator.userAgent.toLowerCase();
		if(ua.indexOf("msie 8")>-1){
			external.AddToFavoritesBar(www,name,'');//IE8
		}else{
			try {
				window.external.addFavorite(www, name);
			} catch(e) {
				try {
					window.sidebar.addPanel(name, www, "");//firefox
				} catch(e) {
					alert("Trình duy?n này kh?ng h? tr? tính n?ng này,h?y dùng Ctrl+D ?? thêm");
				}
			}
		}
	}

	function getLocationUrl(){
		var addurl = document.location.href;
		 //thisMovie("7road-ddt-game").sendSwfNowUrl(addurl.toString());
		try{
			thisMovie("7road-ddt-game").sendSwfNowUrl(addurl.toString());
		}catch(e){
			if (window.clipboardData){
				window.clipboardData.setData("Text", addurl.toString());
			}
			else if (window.netscape){
				try {
					netscape.security.PrivilegeManager.enablePrivilege(addurl.toString());
				} catch (e) {
					alert("Trình duy?t t? ch?i,h?y nh?n F6 ?? nh?n link copy"); 
				}
				
			}else{
				alert("Trình duy?n này kh?ng h? tr? tính n?ng này,h?y nh?n F6 ?? nh?n link copy"); 
			}
		}
	}

     //3.1新功能
    //js与as交互
     function thisMovie(movieName) {
         if (navigator.appName.indexOf("Microsoft") != -1) {
             return window[movieName];
         } else {
             return document[movieName];
         }
     }
     
     var flashCall   =false;     
     function closeWindow(flag,loginUrl) { 
     flashCall   =true;
     if(flag=="0"){
	    top.window.opener=null; 
	    top.window.open("","_self"); 
	    top.window.close(); 
         }else if(flag=="1") { 
              //修改登陆Url
	        window.location.href=loginUrl;
         }
    }
    function setFlashCall(){
	flashCall=true;
    }
    
    //set Active and email
     var dailyTask=-1,dailyActivity=-1,dailyEmail=-1;
    function setDailyTask(_dailyTask){
	dailyTask=_dailyTask;
    }
    function setDailyActivity(_dailyActivity){
	dailyActivity=_dailyActivity;
     }
    function setDailyEmail(_dailyEmail){
	dailyEmail=_dailyEmail;
     }
     
	window.onbeforeunload = function(e)
    	{
           if(allowLeave==1)
           {
        	
           }
           if(allowLeave==2||allowLeave==3)
           {
        	    if(!flashCall)
			    {                       
		         //这里是flash的Id
		  	  var message='';
			    if(dailyTask != -1)
				{
			    message+=dailyTask>0?'Nhi?m v? h?ng ngày còn'+dailyTask+'ch?a hoàn thành\n':'Nhi?m v? h?ng ngày：?? hoàn thành h?t\n';
			    message+=dailyActivity>0?'Nhi?m v? s? ki?n còn'+dailyActivity+'ch?a hoàn thành\n':'Nhi?m v? ? ki?n：?? hoàn thành h?t\n';
			    //message+=dailyEmail>0?'还有'+dailyEmail+'封未读邮件\n':'邮件：全部读取\n';		
				}
                   var browser = navigator.appName;
	                if (browser == "Netscape") {
	                e.preventDefault();
			        return message;
	             } else {   			
	                window.event.returnValue =message;
	             }	 		   
		         }
		        flashCall=false;	
           }
    }
    function killErrors() //杀掉所有的出错信息
    { 
	    return true; 
    }
	function sandaFillHandler ()
	{
		if(ibw_public.existNameSpace('sdoNewPay'))
		{
			ibw_public.openWidget('sdoNewPay');
		}
	}
	
	function setFlashFocus()
	{
		//document.getElementById('7road-ddt-game').focus();
	}
  window.onerror = killErrors; 

   	function pushfeed(myJSONtext){
	var data = eval('(' + myJSONtext + ')');
	      		//alert(myJSONtext);
				zmf.ui(
			        {		        	
						pub_key: data.pub_key,
						sign_key: data.sign_key,
						action_id: data.actId,
						uid_to: data.userIdTo,
						object_id: data.objectId,
						attach_name: data.attachName,
						attach_href: data.attachHref,
						attach_caption: data.attachCaption,
						attach_des: data.attachDescription,
						media_type: data.mediaType,
						media_img: data.mediaImage,
						media_src: data.mediaSource,
						actlink_text: data.actionLinkText,
						actlink_href: data.actionLinkHref,
						tpl_id: data.tplId,
						suggestion: [data.itemTitle1,data.itemTitle2,data.itemTitle3]
						//suggestion: ["suggestion1", "suggestion2", "suggestion3"]

			        })
	      	}    
// -->
    </script> 
    <style>
       html, body	{ height:100%; }
      body
        {
            margin: 0px auto;
            padding: 0px;
            background-image: url(images/bg_all.jpg);
	     background-repeat: no-repeat;
        background-position: center center;
        overflow:auto; text-align:center;
        }
    </style>
</head>
<body scroll="no"  onload= "setFlashFocus()">
    <table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td valign="middle">
                    <table border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                            <td align="center" id="bdgame">
                                <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" id="7road-ddt-game" codebase="http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0"
                                    name="Main" width="1000" height="600" align="middle" id="Main">
                                    <param name="allowScriptAccess" value="always" />
                                    <param name="movie" value='Loading.swf?<%=Content %>&v=<%=Edition %>&rand=0.735361468389333' />                   
                                    <param name="quality" value="high" />
                                    <param name="menu" value="false">
                                    <param name="bgcolor" value="#000000" />
                                    <param name="FlashVars" value="<%=AutoParam + "&sex=" + sex %>" />
                                    <embed flashVars="<%=AutoParam + "&sex=" + sex %>"  src='Loading.swf?<%=Content %>&v=<%=Edition %>&rand=0.735361468389333' width="1000" height="600"
                                        align="middle" quality="high" name="Main" allowscriptaccess="sameDomain" type="application/x-shockwave-flash"
                                        pluginspage="http://www.macromedia.com/go/getflashplayer" />
                                </object>
                            </td>
                        </tr>
                    </table>
            </td>
        </tr>
    </table>
</body>
</html>

