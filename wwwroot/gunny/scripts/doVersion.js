    //�����ַ
    var url = "http://192.168.0.4:728/";
    
    //��ȡcookie��ֵ
    function checkCookie(objName) {
        var arrStr = document.cookie.split("; ");
        for(var i = 0;i < arrStr.length;i ++){
         var temp = arrStr[i].split("=");
         if(temp[0] == objName) return unescape(temp[1]);
        }
    }

    //���cookie
    function addCookie(name, value, expires) {
        var str = name + "=" + escape(value);
        if (expires != "") {
            var date = new Date();
            date.setTime(date.getTime() + expires * 24 * 3600 * 1000); //expires��λΪ��
            str += ";expires=" + date.toGMTString();
        }
        document.cookie = str;
    }
    
    //��ȡ�汾��
    function CheckFlash() {
        var n = navigator, fl = null;
        if (n.plugins && n.plugins.length) {
            var version = swfobject.getFlashPlayerVersion();
            fl = version['major'] + "." + version['minor'] + "." + version['release'] + ".0";
        } else if (window.ActiveXObject) {
            try {
                fl = eval("new ActiveXObject('ShockwaveFlash.ShockwaveFlash." + Math.floor("10") + "');");
                fl = fl.GetVariable('$version').replace(/,/gi, '.');
                fl = fl.replace("WIN ", '');
            } catch (e) { return fl; }
        }
        return fl;
    }

    function SendVersion(Version) {
        jQuery.ajax({
        url: url+"UpdateVersion.ashx?Version=" + Version,
        type: "get"
        });
    }

    $(document).ready(function(){
        var cookieName = "FlashCheck";
        if (!checkCookie(cookieName)) {
            addCookie(cookieName, CheckFlash(), 1);
            //���÷��񴫵ݰ汾��
            SendVersion(CheckFlash());
        }
	});