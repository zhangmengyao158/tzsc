<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<head><script type="text/javascript" async src="detail_files/index_005.js"></script><script type="text/javascript" async src="detail_files/entry_002.js"></script><script type="text/javascript" async src="detail_files/agp_heat_002.js"></script><script type="text/javascript" async charset="utf-8" src="detail_files/core_002.php"></script><script async src="detail_files/aplus_v2_002.js"></script><script src="detail_files/adapter.js"></script><script type="text/javascript" async src="detail_files/entry.js"></script><script type="text/javascript" async src="detail_files/agp_heat.js"></script><script type="text/javascript" async src="detail_files/index.js"></script><script src="detail_files/a_010" async charset="utf-8"></script><script src="detail_files/a_008.txt" async charset="utf-8"></script><script src="detail_files/a_007" async charset="utf-8"></script><script src="detail_files/compiler-min.js" async charset="utf-8"></script><script src="detail_files/runtime-min.js" async charset="utf-8"></script><script src="detail_files/webww.js" async></script><script src="detail_files/overlay-min.js" async charset="utf-8"></script><script src="detail_files/facade-min.js" async charset="utf-8"></script><script src="detail_files/a_009" async charset="utf-8"></script><script src="detail_files/a_006" async charset="utf-8"></script><script src="detail_files/a_004" async charset="utf-8"></script><script src="detail_files/a_003" async charset="utf-8"></script><script type="text/javascript" async charset="utf-8" src="detail_files/core.php"></script><script>/* 2016-12-15 20:52:31 */
!function t(e,a,n){function i(r,s){if(!a[r]){if(!e[r]){var l="function"==typeof require&&require;if(!s&&l)return l(r,!0);if(o)return o(r,!0);throw new Error("Cannot find module '"+r+"'")}var u=a[r]={exports:{}};e[r][0].call(u.exports,function(t){var a=e[r][1][t];return i(a?a:t)},u,u.exports,t,e,a,n)}return a[r].exports}for(var o="function"==typeof require&&require,r=0;r<n.length;r++)i(n[r]);return i}({1:[function(t,e,a){"use strict";var n=location.search,i={VERSION:{DEFAULT:"7",MANUAL:9,MANUAL_TIMEOUT:7},TIME:{MANUAL_TIMEOUT:6e3},RATE:{AHOT_SAMPLING:.1},DEBUG:{AHOT:n.indexOf("ap-debug-ahot")>-1,ANTI_SPAM:n.indexOf("ap-debug-antispam")>-1,LS_PROXY:n.indexOf("ap-debug-lsproxy")>-1}},o={NAME_STORAGE:{REFERRER:"wm_referrer",REFERRER_PV_ID:"refer_pv_id",LOST_PV_PAGE_DIFFTIME:"lost_pv_page_difftime",LOST_PV_PAGE:"lost_pv_page"}};a.COMFIG=i,a.KEY=o},{}],2:[function(t,e,a){!function(){var e=t("./lib/utils/v")||{},a=e.script_name||"aplus_v2";if(!document.getElementsByTagName("body").length)return void setTimeout(arguments.callee,50);var n=window,i="g_tb_aplus_loaded2";if(!n[i]){n[i]=1;var o=t("./lib/goldlog").goldlog;o._$.script_name=a,t("./lib/monitor/onload").run({ratio:1}),t("./lib/main")}}()},{"./lib/goldlog":14,"./lib/main":19,"./lib/monitor/onload":23,"./lib/utils/v":42}],3:[function(t,e,a){"use strict";function n(){return i.isContain(o.getExParams(),"atp_isdpp")}var i=t("../lib/utils/util"),o=t("./misc");a.inAntiSpamWhiteList=function(){for(var t,e=!1,a=["item.taobao.com","detail.tmall.com","list.tmall.com","s.taobao.com","list.taobao.com","tw.taobao.com","detail.tmall.hk","chaoshi.tmall.com"],i=location.hostname,o=0;o<a.length;o++)if(t=a[o],i.indexOf(t)>-1){e=!0;break}return n()&&(e=!0),e}},{"../lib/utils/util":41,"./misc":22}],4:[function(t,e,a){"use strict";var n=location,i=n.protocol,o="https:"==i,r=o?i:"http:",s=t("../lib/utils/rule"),l=t("./iframe"),u=goldlog._$,c=r+"//log.mmstat.com/",m=r+(u.is_terminal?"//wgo.mmstat.com/":"//gm.mmstat.com/"),d=c+s.getBeaconSrc(n.hostname,u.is_terminal,l.is_in)+".gif";a.base=c,a.hjlj=function(){return m},a.tblog=d},{"../lib/utils/rule":38,"./iframe":15}],5:[function(t,e,a){"use strict";function n(){var t,e;if(!l.is_in&&c){var a=location.href,n=c&&(a.indexOf("login.taobao.com")>=0||a.indexOf("login.tmall.com")>=0),i=u.getRefer();n&&i?(t=i,e=r.getItem(s.NAME_STORAGE.REFERRER_PV_ID)):(t=a,e=goldlog.pvid),r.setItem(s.NAME_STORAGE.REFERRER,t),r.setItem(s.NAME_STORAGE.REFERRER_PV_ID,e)}}function i(t){var e=window.goldlog||{},a=e._$=e._$||{},n=a.send_pv_count||0,i=a.meta_info||{},o=i["aplus-waiting"]||"";if(n<1&&"MAN"!==o){var l=location.href;r.setItem(s.NAME_STORAGE.LOST_PV_PAGE,l),r.setItem(s.NAME_STORAGE.LOST_PV_PAGE_DIFFTIME,t)}}var o=t("../lib/utils/util"),r=t("./nameStorage").nameStorage,s=t("../config").KEY,l=t("./iframe"),u=t("./referrer"),c="https:"==location.protocol;a.run=function(){var t=new Date;o.on(window,"beforeunload",function(){if(n(),goldlog&&goldlog._$){var e=new Date,a=e.getTime()-t.getTime();i(a)}})}},{"../config":1,"../lib/utils/util":41,"./iframe":15,"./nameStorage":25,"./referrer":33}],6:[function(t,e,a){"use strict";!function(t,e){var n=2,i="ali_analytics";if(t[i]&&t[i].ua&&n<=t[i].ua.version)return void(a.info=t[i].ua);var o,r,s,l,u,c,m,d,p,f,g,h,b,v,_,y,k,w=t.navigator,A=w.appVersion,E=w&&w.userAgent||"",S=function(t){var e=0;return parseFloat(t.replace(/\./g,function(){return 0===e++?".":""}))},P=function(t,e){var a,n;e[a="trident"]=.1,(n=t.match(/Trident\/([\d.]*)/))&&n[1]&&(e[a]=S(n[1])),e.core=a},x=function(t){var e,a;return(e=t.match(/MSIE ([^;]*)|Trident.*; rv(?:\s|:)?([0-9.]+)/))&&(a=e[1]||e[2])?S(a):0},T=function(t){return t||"other"},M=function(a){function n(){for(var t=[["Windows NT 5.1","winXP"],["Windows NT 6.1","win7"],["Windows NT 6.0","winVista"],["Windows NT 6.2","win8"],["Windows NT 10.0","win10"],["iPad","ios"],["iPhone;","ios"],["iPod","ios"],["Macintosh","mac"],["Android","android"],["Ubuntu","ubuntu"],["Linux","linux"],["Windows NT 5.2","win2003"],["Windows NT 5.0","win2000"],["Windows","winOther"],["rhino","rhino"]],e=0,n=t.length;e<n;++e)if(a.indexOf(t[e][0])!==-1)return t[e][1];return"other"}function i(e,a,n,i){var o,r=t.navigator.mimeTypes;try{for(o in r)if(r.hasOwnProperty(o)&&r[o][e]==a){if(void 0!==n&&i.test(r[o][n]))return!0;if(void 0===n)return!0}return!1}catch(s){return!1}}var o,r,s,l,u,c,m,d="",p=d,f=d,g=[6,9],h="{{version}}",b="<!--[if IE "+h+"]><s></s><![endif]-->",v=e&&e.createElement("div"),_=[],y={webkit:void 0,edge:void 0,trident:void 0,gecko:void 0,presto:void 0,chrome:void 0,safari:void 0,firefox:void 0,ie:void 0,ieMode:void 0,opera:void 0,mobile:void 0,core:void 0,shell:void 0,phantomjs:void 0,os:void 0,ipad:void 0,iphone:void 0,ipod:void 0,ios:void 0,android:void 0,nodejs:void 0,extraName:void 0,extraVersion:void 0};if(v&&v.getElementsByTagName&&(v.innerHTML=b.replace(h,""),_=v.getElementsByTagName("s")),_.length>0){for(P(a,y),l=g[0],u=g[1];l<=u;l++)if(v.innerHTML=b.replace(h,l),_.length>0){y[f="ie"]=l;break}!y.ie&&(s=x(a))&&(y[f="ie"]=s)}else((r=a.match(/AppleWebKit\/*\s*([\d.]*)/i))||(r=a.match(/Safari\/([\d.]*)/)))&&r[1]?(y[p="webkit"]=S(r[1]),(r=a.match(/OPR\/(\d+\.\d+)/))&&r[1]?y[f="opera"]=S(r[1]):(r=a.match(/Chrome\/([\d.]*)/))&&r[1]?y[f="chrome"]=S(r[1]):(r=a.match(/\/([\d.]*) Safari/))&&r[1]?y[f="safari"]=S(r[1]):y.safari=y.webkit,(r=a.match(/Edge\/([\d.]*)/))&&r[1]&&(p=f="edge",y[p]=S(r[1])),/ Mobile\//.test(a)&&a.match(/iPad|iPod|iPhone/)?(y.mobile="apple",r=a.match(/OS ([^\s]*)/),r&&r[1]&&(y.ios=S(r[1].replace("_","."))),o="ios",r=a.match(/iPad|iPod|iPhone/),r&&r[0]&&(y[r[0].toLowerCase()]=y.ios)):/ Android/i.test(a)?(/Mobile/.test(a)&&(o=y.mobile="android"),r=a.match(/Android ([^\s]*);/),r&&r[1]&&(y.android=S(r[1]))):(r=a.match(/NokiaN[^\/]*|Android \d\.\d|webOS\/\d\.\d/))&&(y.mobile=r[0].toLowerCase()),(r=a.match(/PhantomJS\/([^\s]*)/))&&r[1]&&(y.phantomjs=S(r[1]))):(r=a.match(/Presto\/([\d.]*)/))&&r[1]?(y[p="presto"]=S(r[1]),(r=a.match(/Opera\/([\d.]*)/))&&r[1]&&(y[f="opera"]=S(r[1]),(r=a.match(/Opera\/.* Version\/([\d.]*)/))&&r[1]&&(y[f]=S(r[1])),(r=a.match(/Opera Mini[^;]*/))&&r?y.mobile=r[0].toLowerCase():(r=a.match(/Opera Mobi[^;]*/))&&r&&(y.mobile=r[0]))):(s=x(a))?(y[f="ie"]=s,P(a,y)):(r=a.match(/Gecko/))&&(y[p="gecko"]=.1,(r=a.match(/rv:([\d.]*)/))&&r[1]&&(y[p]=S(r[1]),/Mobile|Tablet/.test(a)&&(y.mobile="firefox")),(r=a.match(/Firefox\/([\d.]*)/))&&r[1]&&(y[f="firefox"]=S(r[1])));o||(o=n());var k,w,E;if(!i("type","application/vnd.chromium.remoting-viewer")){k="scoped"in e.createElement("style"),E="v8Locale"in t;try{w=t.external||void 0}catch(T){}if(r=a.match(/360SE/))c="360";else if((r=a.match(/SE\s([\d.]*)/))||w&&"SEVersion"in w)c="sougou",m=S(r[1])||.1;else if((r=a.match(/Maxthon(?:\/)+([\d.]*)/))&&w){c="maxthon";try{m=S(w.max_version||r[1])}catch(M){m=.1}}else k&&E?c="360se":k||E||!/Gecko\)\s+Chrome/.test(A)||y.opera||y.edge||(c="360ee")}return(r=a.match(/TencentTraveler\s([\d.]*)|QQBrowser\/([\d.]*)/))?(c="tt",m=S(r[2])||.1):(r=a.match(/LBBROWSER/))||w&&"LiebaoGetVersion"in w?c="liebao":(r=a.match(/TheWorld/))?(c="theworld",m=3):(r=a.match(/TaoBrowser\/([\d.]*)/))?(c="taobao",m=S(r[1])||.1):(r=a.match(/UCBrowser\/([\d.]*)/))&&(c="uc",m=S(r[1])||.1),y.os=o,y.core=y.core||p,y.shell=f,y.ieMode=y.ie&&e.documentMode||y.ie,y.extraName=c,y.extraVersion=m,y.resolution=t.screen.width+"x"+t.screen.height,y},O=function(t){function e(t){return Object.prototype.toString.call(t)}function a(t,a,n){if("[object Function]"==e(a)&&(a=a(n)),!a)return null;var i={name:t,version:""},o=e(a);if(a===!0)return i;if("[object String]"===o){if(n.indexOf(a)!==-1)return i}else if(a.exec){var r=a.exec(n);if(r)return r.length>=2&&r[1]?i.version=r[1].replace(/_/g,"."):i.version="",i}}var n={name:"other",version:""};t=(t||"").toLowerCase();for(var i=[["nokia",function(t){return t.indexOf("nokia ")!==-1?/\bnokia ([0-9]+)?/:/\bnokia([a-z0-9]+)?/}],["samsung",function(t){return t.indexOf("samsung")!==-1?/\bsamsung(?:[ \-](?:sgh|gt|sm))?-([a-z0-9]+)/:/\b(?:sgh|sch|gt|sm)-([a-z0-9]+)/}],["wp",function(t){return t.indexOf("windows phone ")!==-1||t.indexOf("xblwp")!==-1||t.indexOf("zunewp")!==-1||t.indexOf("windows ce")!==-1}],["pc","windows"],["ipad","ipad"],["ipod","ipod"],["iphone",/\biphone\b|\biph(\d)/],["mac","macintosh"],["mi",/\bmi[ \-]?([a-z0-9 ]+(?= build|\)))/],["hongmi",/\bhm[ \-]?([a-z0-9]+)/],["aliyun",/\baliyunos\b(?:[\-](\d+))?/],["meizu",function(t){return t.indexOf("meizu")>=0?/\bmeizu[\/ ]([a-z0-9]+)\b/:/\bm([0-9x]{1,3})\b/}],["nexus",/\bnexus ([0-9s.]+)/],["huawei",function(t){var e=/\bmediapad (.+?)(?= build\/huaweimediapad\b)/;return t.indexOf("huawei-huawei")!==-1?/\bhuawei\-huawei\-([a-z0-9\-]+)/:e.test(t)?e:/\bhuawei[ _\-]?([a-z0-9]+)/}],["lenovo",function(t){return t.indexOf("lenovo-lenovo")!==-1?/\blenovo\-lenovo[ \-]([a-z0-9]+)/:/\blenovo[ \-]?([a-z0-9]+)/}],["zte",function(t){return/\bzte\-[tu]/.test(t)?/\bzte-[tu][ _\-]?([a-su-z0-9\+]+)/:/\bzte[ _\-]?([a-su-z0-9\+]+)/}],["vivo",/\bvivo(?: ([a-z0-9]+))?/],["htc",function(t){return/\bhtc[a-z0-9 _\-]+(?= build\b)/.test(t)?/\bhtc[ _\-]?([a-z0-9 ]+(?= build))/:/\bhtc[ _\-]?([a-z0-9 ]+)/}],["oppo",/\boppo[_]([a-z0-9]+)/],["konka",/\bkonka[_\-]([a-z0-9]+)/],["sonyericsson",/\bmt([a-z0-9]+)/],["coolpad",/\bcoolpad[_ ]?([a-z0-9]+)/],["lg",/\blg[\-]([a-z0-9]+)/],["android",/\bandroid\b|\badr\b/],["blackberry",function(t){return t.indexOf("blackberry")>=0?/\bblackberry\s?(\d+)/:"bb10"}]],o=0;o<i.length;o++){var r=i[o][0],s=i[o][1],l=a(r,s,t);if(l){n=l;break}}return n},I=1;try{o=M(E),r=O(E),s=o.os,l=o.shell,u=o.core,c=o.resolution,m=o.extraName,d=o.extraVersion,p=r.name,f=r.version,h=s?s+(o[s]?o[s]:""):"",b=l?l+parseInt(o[l]):"",v=u,_=c,y=m?m+(d?parseInt(d):""):"",k=p+f}catch(j){}g={p:I,o:T(h),b:T(b),w:T(v),s:_,mx:y,ism:k},t[i]||(t[i]={}),t[i].ua||(t[i].ua={}),a.info=t[i].ua={version:n,ua_info:g}}(window,document)},{}],7:[function(t,e,a){"use strict";var n=t("../utils/util"),i=[],o=function(t){n.indexof(i,t)===-1&&i.push(t)},r=function(){i=[]};e.exports=function(t,e){return function(a){var s,l,u=t.length,c=0,m=0,d=0,p=function(){if(c===u&&"function"==typeof e)return a="done",m=0,r(),void e.call(this,a);n.indexof(i,c)===-1&&(o(c),a=t[c].call(this,a,function(t){a=null,m=1}));var f="number"==typeof a;if("pause"===a||f){var g=f?a:200;d+=g,d>1e4?(window.console&&window.console.log,a=null,clearTimeout(s),clearTimeout(l),c++,m=0,p(c)):s=n.sleep(g,function(){1===m&&(c++,m=0),p(c)})}else"done"===a?(c=u,p(c)):(c++,m=0,p(c))};return p(c)}}},{"../utils/util":41}],8:[function(t,e,a){"use strict";var n=t("../../utils/util"),i=t("../compose"),o=t("../plugins/pluginsLoader");a.run=function(t,e,a){var r=new o;r.init({middleware:[],config:t});var s=r.run();s.push(function(e){goldlog._$.send_pv_count++,goldlog.launch({isAplusInternal:"Y"},t)}),s.push(function(a){n.each(e.fn_after_pv,function(e){e(goldlog,t)})}),i(s,function(){"function"==typeof a&&a()})()}},{"../../utils/util":41,"../compose":7,"../plugins/pluginsLoader":10}],9:[function(t,e,a){"use strict";function n(){return[{name:"when_to_send",enable:!0,path:t("./when_to_sendpv.js")}]}function i(){var t=[];switch(o.script_name){case"aplus_v2":t=n();break;case"aplus_wap":case"aplus_o":case"aplus_b2b":case"aplus_b2b2":}return t}var o=t("../../utils/v")||{};e.exports=i()},{"../../utils/v":42,"./when_to_sendpv.js":11}],10:[function(t,e,a){"use strict";var n=t("./plugins.js");e.exports=function(){return{init:function(t){this.opts=t,t&&"object"==typeof t.middleware&&t.middleware.length>0?this.middleware=t.middleware:this.middleware=[]},run:function(){var t=this.middleware,e=this.opts;if(n&&"object"==typeof n&&n.length>0)for(var a=0;a<n.length;a++){var i=n[a];i.enable&&t.push(function(t,a){var n=new i.path;return n.init(e&&e.config?e.config:{}),n.run(t,a)})}else window.console;return t}}}},{"./plugins.js":9}],11:[function(t,e,a){"use strict";var n=t("../../utils/util"),i=t("../../metaInfo");e.exports=function(){return{init:function(t){this.options=t},getMetaInfo:function(){var t=goldlog._$=goldlog._$||{},e=t.meta_info||i.getInfo();return e},getAplusWaiting:function(){var t=this.getMetaInfo()||{};return t["aplus-waiting"]},run:function(t,e){var a=this.getAplusWaiting();if(a&&this.options.is_auto)switch(a=this.getAplusWaiting()+""){case"MAN":return"done";case"1":return n.sleep(6e3,function(){e()}),"pause";default:var i=1*a;if(i+""!="NaN")return n.sleep(i,function(){e()}),"pause"}}}}},{"../../metaInfo":21,"../../utils/util":41}],12:[function(t,e,a){"use strict";function n(t,e){var a=new Date;a.setTime(a.getTime()+63072e7),e+="; expires="+a.toUTCString(),e+="; domain="+l.getDomain(location.hostname),e+="; path=/",r.cookie=t+"="+e}function i(t){var e=r.cookie.match(new RegExp("(?:^|;)\\s*"+t+"=([^;]+)"));return e?e[1]:""}function o(){var t={};return s.each(c,function(e){t[e]=i(e)}),t.cnaui=/\btanx\.com$/.test(u)?i("cnaui"):"",t}var r=document,s=t("../lib/utils/util"),l=t("../lib/utils/tld"),u=location.hostname;a.setCookie=n,a.getCookie=i;var c=["tracknick","thw","cna"];a.getData=o},{"../lib/utils/tld":40,"../lib/utils/util":41}],13:[function(t,e,a){function n(t,e){var a=new Date;a.setTime(a.getTime()+31536e7),e+="; expires="+a.toUTCString(),e+="; domain="+o.getDomain(location.hostname),e+="; path=/",r.cookie=t+"="+e}function i(t,e){function a(t){n.onreadystatechange=n.onload=n.onerror=null,n=null,e(t)}var n=r.createElement("script");if(n.async=!0,"onload"in n)n.onload=a;else{var i=function(){/loaded|complete/.test(n.readyState)&&a()};n.onreadystatechange=i,i()}n.onerror=function(){a(1)},n.src=t,s.appendChild(n)}var o=t("../lib/utils/tld"),r=document,s=r.head||r.getElementsByTagName("head")[0],l=0,u=-1,c="",m=!1;e.exports={init:function(t){if(t)return void(l=1);var e=null;m=!0,i("https://log.mmstat.com/eg.js",function(t){t&&(u=-3),m&&(m=!1,goldlog.Etag&&(c=goldlog.Etag,n("cna",c)),"undefined"!=typeof goldlog.stag&&(u=goldlog.stag),clearTimeout(e))}),e=setTimeout(function(){m=!1,u=-2},1e3)},inject:function(t,e){var a=function(n,i,o){return i?!l&&m?(setTimeout(function(){a(n,i,o)},50),n):(i.push(["tag",l]),i.push(["stag",u]),!l&&c&&i.unshift([e(),"cna="+c]),t(n,i,o)):n};return a}}},{"../lib/utils/tld":40}],14:[function(t,e,a){"use strict";function n(t,e,a,n){n=(arguments[3]||"")+"";var i,o,r="?",s=!1,l=y.getCookie("cna"),u=location.href,c="",g=m.spm_ab?m.spm_ab.join("."):"0.0",b=g+".0.0."+m.pvid,v="//ac.mmstat.com/";if("ac"==t)i=v+"1.gif",s=f.isStartWith(n,"A")&&n.substr(1)==f.makeChkSum(t);else if(f.isStartWith(t,"ac-"))i=v+t.substr(3),s=f.isStartWith(n,"A")&&n.substr(1)==f.makeChkSum(t);else if(f.isStartWith(t,"/"))s=f.isStartWith(n,"H")&&n.substr(1)==f.makeChkSum(t),i=E.hjlj({spmab:g,logkey:t})+t.substr(1),o=!0,c+="&spm-cnt="+b;else{if(!f.isEndWith(t,".gif"))return!1;i=E.tblog+t}if(!s&&"%"!=n&&f.makeChkSum(u)!=n)return!1;d=d||k(),d&&(a+=(a?"&":"")+"st_page_id="+d);try{var _=h.getExParams(),w=f.param2obj(_).userid;w&&(a+=(a?"&":"")+"_gr_uid_="+w)}catch(A){}i+=r+"cache="+h.makeCacheNum()+"&gmkey="+encodeURIComponent(e)+"&gokey="+encodeURIComponent(a)+"&cna="+l+"&isbeta="+S.v+c,o&&(i+="&logtype=2");var P=R({logkey:t,gmkey:e,spm_ab:m.spm_ab}),x={gmkey:e,gokey:a,isbeta:S},T={},M=function(a){var n=x;P&&(n._is_g2u_=1),n.version=S.toUtVersion,n.spmcnt=b;try{n=JSON.stringify(x),"{}"==n&&(n="")}catch(i){n=""}var o=p.meta_info.isonepage_data.isonepage,r=p.meta_info.isonepage_data.urlpagename;T.functype=O.getFunctypeValue({logkey:t,gmkey:e,spm_ab:m.spm_ab});var s;try{s=p.spm?p.spm.spm_pre:""}catch(i){}T.spmpre=s,T.logkey=t,T.logkeyargs=n,T.urlpagename=r,T.url=u,T.cna=l||"",T.extendargs="",T.isonepage=o,m.WindVane.call("WVTBUserTrack","toUT",T,function(){a({isSuccess:!0})},function(t){a({isSuccess:!1,msg:t})},5e3)};return p.is_WindVane&&p.is_terminal&&"function"==typeof m.WindVane.call&&!/^\/aplus\.99\.(\d)+$/.test(t)&&M(function(t){t&&!t.isSuccess&&j.run({isSingleSend:P,userAgent:navigator.userAgent,url:location.href,windVaneData:T})}),P?m.useDebug?T:f.makeUrl(i,x):m.send(i)}function i(){var t,e,a,n,i=u.getElementsByTagName("meta");for(t=0,e=i.length;t<e;t++)if(a=i[t],n=a.getAttribute("name"),"data-spm"===n||"spm-id"===n)return a}function o(){var t=u.createElement("meta");t.setAttribute("name","data-spm");var e=u.getElementsByTagName("head")[0];return e&&e.insertBefore(t,e.firstChild),t}function r(){var t=i();t||(t=o()),t.setAttribute("content",m.spm_ab[0]||"");var e=u.getElementsByTagName("body")[0];e&&e.setAttribute("data-spm",m.spm_ab[1]||"")}function s(){var t,e,a,n=u.getElementsByTagName("*");for(t=0,e=n.length;t<e;t++)a=n[t],a.getAttribute("data-spm-max-idx")&&a.setAttribute("data-spm-max-idx",""),a.getAttribute("data-spm-anchor-id")&&a.setAttribute("data-spm-anchor-id","")}var l=window,u=document,c="goldlog",m=l[c]||{};l[c]=m;var d,p=m._$=m._$||{},f=t("../lib/utils/util"),g=t("./log"),h=t("./misc"),b=t("./spm"),v=t("./antiSpam"),_=t("./logSend"),y=t("./cookie"),k=t("./makeid").makePageId,w=t("./metaInfo").getInfo();p.meta_info=w;var A=/TB\-PD/i.test(navigator.userAgent);p.is_terminal=A||"1"==w["aplus-terminal"],p.is_touch_enabled="1"==w["aplus-touch"],p.aplusWaiting=w["aplus-waiting"];var E=t("./beaconBase"),S=t("../lib/utils/v"),P=t("./nameStorage").nameStorage;m.nameStorage=P,m.getCookie=y.getCookie;var x=[],T=[],M=t("../lib/personality/index.js"),O=M.windvaneParams,I=t("../lib/monitor/tracker.js"),j=new I({ratio:5,logkey:"/aplus.99.4",chksum:"H46747616"});m.beforeSendPV=function(t){x.push(t)},m.afterSendPV=function(t){T.push(t)},m.send=function(t,e){var a=new Image,n="_img_"+Math.random(),i=f.makeUrl(t,e);return l[n]=a,a.onload=a.onerror=function(){l[n]=null},a.src=i,a=null,i};var N=0;m.launch=function(e,a){if(!(N>0)||a){N++;var n,i,o=m.pv_data.basic,r=S.v,s=h.getExParams(),u=o.slice(0);p.is_waiting&&(r=S.MANUAL,e&&e.isWait&&(r=S.MANUAL_TIMEOUT)),p.is_waiting=!1;var c="N";if(e){e.hasOwnProperty("isAplusInternal")&&(c=e.isAplusInternal,delete e.isAplusInternal);for(n in e)e.hasOwnProperty(n)&&(i=e[n])&&u.push([n,i])}u.push([f.mkPlainKey(),s]),u.push(["isAplusInternal",c]);var d=y.getCookie("workno")||y.getCookie("emplId");d&&u.push(["workno",d]),u.push(["isbeta",r]),u=u.concat(m.pv_data.extra);var k=h.makeCacheNum();g.updateKey(u,"cache",k);var w,A,P;if(a&&!a.is_auto){P=m.pvid,A=t("./pvid").makePVId(),w=a.page_id,u.push([f.mkPlainKey(),a.gokey]),g.updateSPMCnt(u,w,A),g.updateSPMUrl(u,P);var x=b.data.b;x&&(x=w?x.split("/")[0]+"/"+w:x.split("/")[0],b.setB(x))}p.page_url!=location.href&&(p.page_referrer=p.page_url,p.page_url=location.href),a&&a.referrer&&(p.page_referrer=a.referrer),p.page_referrer&&g.updateKey(u,"pre",p.page_referrer);var T=v.inAntiSpamWhiteList();if(T&&u.push([f.mkPlainKey(),"isAntiSpam=true"]),_.tblogSend(E.tblog,u,function(t){m.req=l.g_aplus_pv_req=t}),T){var M=f.param2obj(s).asid,O=f.obj2param({asid:M,pre:p.page_referrer});m.record("/ahot.1.9","",O,"H1733420")}}},p.send_pv_count=0,m.sendPV=function(e){if(e=e||{},p.send_pv_count>0&&!g.checkIfSendPV(e.checksum))return!1;if(f.any(x,function(t){return t(m,e)===!1}))return!1;var a=t("../lib/config/middleware/sendpv");return a.run(e,{fn_after_pv:T},function(){}),!0};var R=function(t){return!!(p.is_WindVane&&p.is_terminal&&"function"==typeof m.WindVane.call&&O.isSingleSendLog(t))},C=[],V=[];m.beforeRecord=function(t){C.push(t)},m.afterRecord=function(t){V.push(t)},m.record=function(){if(!f.any(C,function(t){return t(m)===!1})){var t=n.apply(null,arguments);return f.each(V,function(t){t(m)}),t}},m.setPageSPM=function(e,a,n){m.spm_ab=m.spm_ab||[],e&&(m.spm_ab[0]=""+e,p.spm.data.a=e),a&&(m.spm_ab[1]=""+a,p.spm.data.b=a);var i=t("./client").info;b.init(m,w),m.pv_data=t("./pvData").make(m,b,i,w),r(),s(),"function"==typeof n&&n()},a.goldlog=m},{"../lib/config/middleware/sendpv":8,"../lib/monitor/tracker.js":24,"../lib/personality/index.js":30,"../lib/utils/util":41,"../lib/utils/v":42,"./antiSpam":3,"./beaconBase":4,"./client":6,"./cookie":12,"./log":17,"./logSend":18,"./makeid":20,"./metaInfo":21,"./misc":22,"./nameStorage":25,"./pvData":31,"./pvid":32,"./spm":34}],15:[function(t,e,a){"use strict";var n=document,i=t("../lib/utils/rule"),o=t("./referrer").getRefer(),r={is_in:parent!==self};r.is_exception=r.is_in&&i.is_iframeExcption(o),r.create=function(t,e){var a=n.createElement("iframe");a.style.width="1px",a.style.height="1px",a.style.position="absolute",a.style.display="none",a.src=t,e&&(a.name=e);var i=n.getElementsByTagName("body")[0];return i.appendChild(a),a},e.exports=r},{"../lib/utils/rule":38,"./referrer":33}],16:[function(t,e,a){"use strict";function n(){var t,e="_ap",a=s[e]=s[e]||[];a.push=t=function(){for(var t,e,n=0,i=arguments.length;n<i;n++)t=arguments[n],u.isString(t)?goldlog.send(c.hjlj()+t):u.isArray(t)&&"push"!=(e=t[0])&&(a[e]=a[e]||[]).push(t.slice(1))};for(var n;n=a.shift();)t(n)}function i(){function t(){var t,a,n,i=s[e];if(i&&u.isArray(i)&&i.length)for(s[e]&&u.isArray(s[e])||(s[e]=[]);t=i.shift();)if(t&&t.action&&u.isString(t.action)&&t.arguments&&u.isArray(t.arguments)){for(n=t.action.split("."),a=s;n.length;)if(a=a[n.shift()],!a)return;if("function"==typeof a)try{a.apply(a,t.arguments)}catch(o){}}}var e="goldlog_queue";try{t()}catch(a){}}function o(){var t=function(){try{i(),setTimeout(t,200)}catch(e){}};t(),u.on(s,"beforeunload",i)}function r(){var e="//g.alicdn.com",a=(new Date).getTime(),n=Math.floor(a/72e5);Math.random()<.01&&u.addScript(e+"/alilog/stat/a.js?t="+n);var i="laiwang",o="/ilw/a/lwlog.js?v=140709";u.isContain(location.href.split("?")[0],i)&&u.addScript(e+o);var r=goldlog._$.meta_info;r.ms_data_instance_id&&r.ms_prototype_id&&r.ms_prototype_id.match(/^[124]$/)&&r.ms_data_shop_id&&t("./personality/index").wp_beacon.init(),u.DOMReady(function(){setTimeout(function(){var t=l.getElementById("aplus-sufei");t&&"script"==t.tagName.toLowerCase()||u.addScript("//g.alicdn.com/secdev/entry/index.js?t="+n)},1e3)});var s="/alilog/mlog/xwj_heat.js?v=151116b",c=r["aplus-rate-ahot"];(Math.random()<c||r["ahot-aplus"])&&u.addScript(e+s),u.onload(function(){var t=e+"/pecdn/mlog/agp_heat.min.js?t="+n;u.addScript(t)}),u.onload(function(){var t=e+"/alilog/oneplus/entry.js?t="+n;u.addScript(t)})}var s=window,l=document,u=t("../lib/utils/util"),c=t("./beaconBase");a.run=function(){n(),o(),r()}},{"../lib/utils/util":41,"./beaconBase":4,"./personality/index":30}],17:[function(t,e,a){"use strict";function n(t){t=t||u.getMetaCnt("aplus-ajax");var e=goldlog.spm_ab;return!(!e||u.makeChkSum([e[0],(e[1]||"").split("/")[0]].join("."))!=t)||u.makeChkSum(location.href.split("#")[0].split("?")[0])==t}function i(t,e,a){s(t,"spm-cnt",function(t){var n=t.split(".");return n[0]=goldlog.spm_ab[0],n[1]=goldlog.spm_ab[1],e?n[1]=n[1].split("/")[0]+"/"+e:n[1]=n[1].split("/")[0],a&&(n[4]=a),n.join(".")})}function o(t,e){var a=window.g_SPM&&g_SPM._current_spm;a&&s(t,"spm-url",function(){return[a.a,a.b,a.c,a.d].join(".")+(e?"."+e:"")},"spm-cnt")}function r(t,e){var a,n,i,o=-1;for(a=0,n=t.length;a<n;a++)if(i=t[a],i[0]===e){o=a;break}o>=0&&t.splice(o,1)}function s(t,e,a,n){var i,o,r=t.length,s=-1,l="function"==typeof a;for(i=0;i<r;i++){if(o=t[i],o[0]===e)return void(l?o[1]=a(o[1]):o[1]=a);n&&o[0]===n&&(s=i)}n&&(l&&(a=a()),s>-1?t.splice(s,0,[e,a]):t.push([e,a]))}function l(t){return!!n(t.checksum)&&void goldlog.launch({isAplusInternal:"Y"},t||{})}var u=t("../lib/utils/util");e.exports={sendPV:l,checkIfSendPV:n,updateSPMCnt:i,updateSPMUrl:o,updateKey:s,removeKey:r}},{"../lib/utils/util":41}],18:[function(t,e,a){"use strict";function n(t){var e,a,n,i,o=[],r={};for(e=t.length-1;e>=0;e--)a=t[e],n=a[0],n&&n.indexOf(c.s_plain_obj)==-1&&r.hasOwnProperty(n)||(i=a[1],("aplus"==n||i)&&(o.unshift([n,i]),r[n]=1));return o}function i(t){var e,a,n,i,o=[],r={logtype:!0,cache:!0,scr:!0,"spm-cnt":!0};for(e=t.length-1;e>=0;e--)a=t[e],n=a[0],i=a[1],c.isStartWith(n,c.s_plain_obj)||r[n]||o.unshift([n,i]);return o}function o(t,e,a){var o;if(!e)return void a();var r=goldlog._$;if(r.is_WindVane&&r.is_terminal){o=i(n(e));var s,u={};try{s=c.arr2obj(o)}catch(f){s=""}var g=p.qGet().isonepage_data;if(u.functype="2001",u.urlpagename=g.urlpagename,u.url=location.href,u.spmcnt=m.spm_cnt,u.spmpre=m.spm_pre||"",u.lzsid="",u.cna=d.getCookie("cna"),u.extendargs=s,u.isonepage=g.isonepage,goldlog.WindVane.call("WVTBUserTrack","toUT",u),goldlog.windVaneData=u,location.hostname.indexOf("tmall.com")!=-1)return a(c.makeUrl(t,e));if(l&&(location.hostname.indexOf("market.m.taobao.com")!=-1||location.hostname.indexOf("huodong.taobao.com")!=-1))return a(c.makeUrl(t,e))}return a(goldlog.send(t,e))}function r(){if("aplus_int"!=goldlog._$.script_name){var e=t("./etag");e.init(d.getCookie("cna")),o=e.inject(o,c.mkPlainKey,arguments[2])}}var s,l,u,c=t("../lib/utils/util"),m=t("./spm"),d=t("./cookie"),p=t("./metaInfo");(u=navigator.userAgent.match(/AliApp\(([A-Z\-]+)\/([\d\.]+)\)/i))&&(s=!0,l="TB"==u[1]),r(),a.tblogSend=o},{"../lib/utils/util":41,"./cookie":12,"./etag":13,"./metaInfo":21,"./spm":34}],19:[function(t,e,a){"use strict";var n=goldlog._$,i=navigator.userAgent;i.match(/AliApp\(([A-Z\-]+)\/([\d\.]+)\)/i)&&(n.is_ali_app=!0),t("./pvid").makePVId();var o=t("./client").info,r=t("./iframe"),s=t("../lib/utils/util"),l=t("./spm");n.spm=l;var u=t("./windvane");u.init(),goldlog.WindVane=u.WindVane;var c=n.meta_info;n.is_WindVane=/WindVane/i.test(i),n.is_waiting="1"==c["aplus-waiting"],n.page_url=location.href,n.page_referrer=t("./referrer").getRefer(),l.init(goldlog,c),goldlog.beforeSendPV(function(e,a){return(!a.is_auto||"1"!==c["aplus-manual-pv"])&&(!(a.is_auto&&r.is_in&&!r.is_exception)&&(e.pv_data=t("./pvData").make(e,l,o,c),void(a.is_auto||s.ifAdd(e.pv_data.extra,[["mansndlog",1]]))))}),goldlog.afterSendPV(function(){window.g_SPM&&(g_SPM._current_spm="")}),goldlog.afterSendPV(function(t){if(1===t._$.send_pv_count){var e=l.data.a,a=e+"."+l.data.b;r.is_in||t._$.is_terminal||"a21bo.7724922"!=a&&"2013"!=e&&"a220o"!=e||r.create("//cookiemapping.wrating.com/link.html")}}),t("./initLoad").run(),t("./beforeUnload").run(),goldlog.sendPV({is_auto:!0})},{"../lib/utils/util":41,"./beforeUnload":5,"./client":6,"./iframe":15,"./initLoad":16,"./pvData":31,"./pvid":32,"./referrer":33,"./spm":34,"./windvane":43}],20:[function(t,e,a){"use strict";function n(){if(!r.is_aliloan())return null;if(i)return i;var t;for(t=(goldlog.page_id||"")+l,t=t.substr(0,20);t.length<42;)t+=o.rndInt32();return t=t.substr(0,42),s.alilog_1688_pvid=s.dmtrack_pageid=s.unique_pageid=t,i=t,t}var i,o=t("../lib/utils/util"),r=t("../lib/utils/rule"),s=window,l=(new Date).getTime();a.makePageId=n},{"../lib/utils/rule":38,"../lib/utils/util":41}],21:[function(t,e,a){"use strict";function n(){var t,e,a,n=p.getMetaTags(),i=n.length,o={};for(d._microscope_data=o,t=0;t<i;t++)e=n[t],"microscope-data"==p.tryToGetAttribute(e,"name")&&(a=p.tryToGetAttribute(e,"content"),p.parseSemicolonContent(a,o),d.is_head_has_meta_microscope_data=!0);d._microscope_data_params=p.obj2param(o),d.ms_data_page_id=o.pageId,d.ms_data_shop_id=o.shopId,d.ms_data_instance_id=o.siteInstanceId,d.ms_data_siteCategoryId=o.siteCategory,d.ms_prototype_id=o.prototypeId,d.site_instance_id_or_shop_id=d.ms_data_instance_id||d.ms_data_shop_id}function i(){var t,e,a,n=p.getMetaTags(),i=n.length;for(d._atp_beacon_data={},t=0;t<i;t++)e=n[t],"atp-beacon"==p.tryToGetAttribute(e,"name")&&(a=p.tryToGetAttribute(e,"content"),p.parseSemicolonContent(a,d._atp_beacon_data));d._atp_beacon_data_params=p.obj2param(d._atp_beacon_data)}function o(){var t,e,a,n,i=p.getMetaTags();for(t=0,e=i.length;t<e;t++)a=i[t],n=p.tryToGetAttribute(a,"name"),"data-spm"==n&&(u=p.tryToGetAttribute(a,"data-spm-protocol"));return u}function r(t){var e=t.isonepage||"-1",a=e.split("|"),n=a[0],i=a[1]?a[1]:"";t.isonepage_data={isonepage:n,urlpagename:i}}function s(){i(),n(),p.each(m,function(t){d[t]=p.getMetaCnt(t)}),d.spm_protocol=o();var t,e,a=["aplus-rate-ahot"],s=a.length;for(t=0;t<s;t++)e=a[t],d[e]=parseFloat(d[e]);return r(d),c=d,d}function l(){return c||s()}var u,c,m=["aplus-terminal","aplus-touch","ahot-aplus","aplus-rate-ahot","isonepage","spm-id","data-spm","microscope-data","atp-beacon","aplus-waiting"],d={},p=t("../lib/utils/util");a.getInfo=s,a.qGet=l},{"../lib/utils/util":41}],22:[function(t,e,a){"use strict";function n(){var t=i.getElementById("tb-beacon-aplus")||i.getElementById("beacon-aplus"),e=r.tryToGetAttribute(t,"exparams");if(!e)return e;var a,n,o=["taobao.com","tmall.com","etao.com","hitao.com","taohua.com","juhuasuan.com","alimama.com"];if(s){for(n=o.length,a=0;a<n;a++)if(r.isContain(location.hostname,o[a]))return e;e=e.replace(/\buserid=\w*&?/,"")}return e=e.replace(/\buserid=/,"uidaplus=")}var i=document,o=window,r=t("../lib/utils/util"),s=parent!==o.self;a.getExParams=n,a.makeCacheNum=function(){return Math.floor(268435456*Math.random()).toString(16)}},{"../lib/utils/util":41}],23:[function(t,e,a){"use strict";var n=t("../nameStorage").nameStorage,i=t("../../config").KEY,o=t("../utils/util"),r=t("./tracker.js"),s=function(t){t=t||{};var e=t.hasOwnProperty("ratio")?t.ratio:1,a={ratio:e,logkey:t.logkey||"/aplus.99.1",chksum:t.chksum||"H46747592"};return new r(a)};a.run=function(t){var e=s(t);o.on(window,"load",function(){try{var t=n.getItem(i.NAME_STORAGE.LOST_PV_PAGE),a=n.getItem(i.NAME_STORAGE.LOST_PV_PAGE_DIFFTIME);if(t){var o="the user leave of page "+t+" after "+a+"ms. but do not send pv!";e.run({message:o,userAgent:navigator.userAgent,url:location.href}),n.setItem(i.NAME_STORAGE.LOST_PV_PAGE,""),n.setItem(i.NAME_STORAGE.LOST_PV_PAGE_DIFFTIME,"")}}catch(r){window.console}})}},{"../../config":1,"../nameStorage":25,"../utils/util":41,"./tracker.js":24}],24:[function(t,e,a){var n={ratio:10,logkey:"/aplus.99.3",gmkey:"",chksum:"H46747615"},i=function(t){t&&"object"==typeof t||(t=n),this.opts=t,this.opts.ratio=t.ratio||n.ratio,this.opts.logkey=t.logkey||n.logkey,this.opts.gmkey=t.gmkey||n.gmkey,this.opts.chksum=t.chksum||n.chksum},o=i.prototype;o.getRandom=function(){return Math.floor(100*Math.random())+1},o.run=function(t){var e,a,n;try{e=this.opts,n=this.getRandom(),"object"==typeof t?(t.lver=goldlog.lver,a=JSON.stringify(t)):(t+="&lver="+goldlog.lver,a=t)}catch(i){a+="&trackerJsError="+i.message}finally{try{goldlog&&"function"==typeof goldlog.record&&n<=e.ratio&&goldlog.record(e.logkey,e.gmkey,a,e.chksum,!0)}catch(o){}}},e.exports=i},{}],25:[function(t,e,a){var n=function(){function t(){var t,e=[],o=!0;for(var c in m)m.hasOwnProperty(c)&&(o=!1,t=m[c]||"",e.push(u(c)+s+u(t)));a.name=o?n:i+u(n)+r+e.join(l)}function e(t,e,a){t&&(t.addEventListener?t.addEventListener(e,a,!1):t.attachEvent&&t.attachEvent("on"+e,function(e){a.call(t,e)}))}var a=window;if(a.nameStorage)return a.nameStorage;var n,i="nameStorage:",o=/^([^=]+)(?:=(.*))?$/,r="?",s="=",l="&",u=encodeURIComponent,c=decodeURIComponent,m={},d={};return function(t){if(t&&0===t.indexOf(i)){var e=t.split(/[:?]/);e.shift(),n=c(e.shift())||"";for(var a,r,s,u=e.join(""),d=u.split(l),p=0,f=d.length;p<f;p++)a=d[p].match(o),a&&a[1]&&(r=c(a[1]),s=c(a[2])||"",m[r]=s)}else n=t||""}(a.name),d.setItem=function(e,a){e&&"undefined"!=typeof a&&(m[e]=String(a),t())},d.getItem=function(t){return m.hasOwnProperty(t)?m[t]:null},d.removeItem=function(e){m.hasOwnProperty(e)&&(m[e]=null,delete m[e],t())},d.clear=function(){m={},t()},d.valueOf=function(){return m},d.toString=function(){var t=a.name;return 0===t.indexOf(i)?t:i+t},e(a,"beforeunload",function(){t()}),d}();a.nameStorage=n},{}],26:[function(t,e,a){"use strict";var n=function(t){var e=t.logkey.toLowerCase();0===e.indexOf("/")&&(e=e.substr(1));var a=t.gmkey.toUpperCase();switch(a){case"EXP":return"2201";case"CLK":return"2101";case"SLD":return"19999";case"OTHER":default:return"19999"}},i=function(){for(var t=navigator.userAgent,e=[{matchValue:"5.11.7",matchRule:t.match(/AliApp\(TB\/(\d+[._]\d+[._]\d+)/i)},{matchValue:"5.24.1",matchRule:t.match(/AliApp\(TM\/(\d+[._]\d+[._]\d+)/i)}],a=0;a<e.length;a++){var n=e[a].matchRule,i=e[a].matchValue;if(n&&2===n.length&&n[1]>=i)return!0}return!1};a.isSingleSendLog=function(t){return(!t||!/^\/aplus\.99\.(\d)+$/.test(t.logkey))&&!!(t&&t.logkey&&t.gmkey&&i()===!0)},a.getFunctypeValue=function(t){
return a.isSingleSendLog(t)?n(t):"2101"}},{}],27:[function(t,e,a){"use strict";function n(t,e){var a,n=2146271213;for(a=0;a<t.length;a++)n=(n<<5)+n+t.charCodeAt(a);return(65535&n)%e}function i(t){var e,a=o.getCookie("t");return"3"!=t.ms_prototype_id&&"5"!=t.ms_prototype_id||(e=a?n(a,20):""),e}var o=t("../../cookie");a.getBucketId=i},{"../../cookie":12}],28:[function(t,e,a){"use strict";var n=t("../../utils/util"),i=window,o=document;a.init=function(){function t(t){for(var e;t&&"BODY"!=t.tagName&&!(e=n.tryToGetAttribute(t,"microscope-data"));)t=t.parentNode;return e||""}function e(t){var e,a,n,i,r,s,l=o.getElementsByTagName("*");for(e=[];t&&1==t.nodeType;t=t.parentNode)if(s=t.getAttribute("id")){for(i=0,a=0;a<l.length;a++)if(r=l[a],r.id==s){i++;break}if(e.unshift(t.tagName.toLowerCase()+'[@id="'+s+'"]'),1==i)return e.unshift("/"),e.join("/")}else{for(a=1,n=t.previousSibling;n;n=n.previousSibling)n.tagName==t.tagName&&a++;e.unshift(t.tagName.toLowerCase()+"["+a+"]")}return e.length?"/"+e.join("/"):null}function a(){var t="BackCompat"==o.compatMode?o.body:o.documentElement,e=Math.max(t.scrollWidth,t.clientWidth),a=Math.max(t.scrollHeight,t.clientHeight);return[e,a,t.scrollTop,t.scrollLeft]}function r(t,e){var i=a(),o=i[0],r=i[1],s=i[2],l=i[3],u=e.pageX,c=e.pageY;n.isNumber(u)||(u=e.clientX+l,c=e.clientY+s);var m,d,p=-1;t&&t.getBoundingClientRect&&(d=t.getBoundingClientRect(),p=d.left+l,m=d.top+s);var f,g=o>>1;return u-=g,p-=g,f=n.isNumber(m)?[["elx",p],["ely",m],["elw",t.offsetWidth],["elh",t.offsetHeight]]:[],f.concat([["docw",o],["doch",r],["x",u],["y",c]]),f}function s(t){for(;t&&t.tagName&&"BODY"!=t.tagName;){if("4111"==n.tryToGetAttribute(t,"data-componentid"))return A;t=t.parentNode}return E}function l(a,i){var l,m,d,p,f,g,h,b,v=0,k=s(a),A=t(a),E=0,T=[];if(A&&(k||"1"==w||"4"==w)){for(T.push(["xpath",e(a)]);a&&a!=o&&(g=a.tagName,g&&"HTML"!=g&&(v=1),p||"A"!=g&&"AREA"!=g&&"IMG"!=g&&"BUTTON"!=g&&"INPUT"!=g&&"TEXTAREA"!=g||(p=a,E=1),"A"!=g&&"AREA"!=g||(f=a,l=n.tryToGetHref(a)),(b=n.tryToGetAttribute(a,"data-widgetid"))&&T.push(["widgetid",b]),(b=n.tryToGetAttribute(a,"data-componentid"))&&T.push(["componentid",b]),m=a.parentNode);)a=m;v&&E&&(l&&T.push(["href",l]),E&&(T.push(["udp_wm_valid_hit",1]),h=r(p,i),T.concat(h),S++,T.push(["cc",S]),d=(new Date).getTime(),T.push(["t",d-P]),T.push(["t2",d-x]),x=d,T.push(["udp_wm_type",1]),T.push(["page_id",c.pageId||""]),T.push(["shop_id",c.shopId||""]),T.push(["site_instance_id",c.siteInstanceId||""]),T.push(["page_prototypeId",w]),T.push(["siteCategory",c.siteCategory||""]),T.push(["moduleId",A]),"2"!=w&&u(_,T),k&&u(y,T)))}}function u(t,e){var a=e.concat(d);m.send(t,a)}var c,m=i.goldlog,d=[["sw",i.screen.width],["sh",i.screen.height]],p=location,f=p.protocol,g="https:"==f,h=g?f:"http:",b=h+(g?"//log":"//ga")+".mmstat.com/",v=h+(g?"//log":"//go")+".mmstat.com/",_=b+"ued.1.1.1?logtype=6",y=v+"ued.1.1.5?logtype=5";try{c=m._$.meta_info._microscope_data||{}}catch(k){c={}}var w=c.prototypeId||"",A=!0,E=!1,S=0,P=(new Date).getTime(),x=P;"1"!=w&&"2"!=w&&"4"!=w||n.on(o,"mousedown",function(t,e){e&&l(e,t)})}},{"../../utils/util":41}],29:[function(t,e,a){"use strict";var n=[{spmab:/^875\.7931836$/,logkey:/^\/?tmallfp\.5001\.[1-6]$/},{spmab:"875.7931836",logkey:"/tmallfp1111.hangyehc.hangye"},{spmab:"875.7403452",logkey:"/tmallfp1111.bannerm.bannerm"},{spmab:"875.7403452",logkey:"/tmallfp1111.huichangm.hangyem"},{spmab:"875.7403452",logkey:"/tmallfp1111.huichangm.renqunm"},{spmab:/^a21sv\.8196(697|700|704)$/,logkey:/^\/?tmwlact\.(20160[1-6]|201609|20161[0-2])$/},{spmab:/^a224f\.820764[4-9]$/,logkey:/^\/?tmallkolguanzhu\.guanzhu\.(guanzhu|hjftab|feedsuv|feedclick|rankuv|rankclick)$/},{spmab:"a3211.919288-5282988",logkey:"/tmallkolguanzhu.guanzhu.contentguanzhu"},{spmab:"a3211.0-3642924",logkey:"/tmallkolguanzhu.guanzhu.myspaceguanzhu"},{spmab:"a21bo.50862",logkey:"/tbindex.20160927.industriy"},{spmab:"a21bo.50862",logkey:"/tbindex.2016092701.category"},{spmab:"a21bo.50862",logkey:"/tbindex.promo.promo"},{spmab:"a21bo.50862",logkey:"/tbindex.2016201863.1"},{spmab:"a21bo.50862",logkey:"/tbindex.2016092702.notice"},{spmab:/^a21bo\.50862$/,logkey:/^\/?tbindex\.881\.1[0-3]$/},{spmab:/^a2265\.biaoqian_\w+$/,logkey:/^\/?taotag\.1111\.2016111[1-4]$/},{spmab:/^a21fj\.8178323/,logkey:/^\/?tbl\.(2|3|10|1111)$/},{spmab:"a1z3i.mxbdtab81",logkey:/^\/?tmwlact\.1818\.[1-3]$/},{spmab:/^a1z3i\.m142etaf7[7-8]$/,logkey:/^\/?tmwlact\.16\.([3-5]|16110[1-2])$/},{spmab:"a223w.8184425",logkey:"/o2osaomahudong.o2osaomahudong.o2osaomahudong"},{spmab:/^a222r\.(8197906|819791[0-1])$/,logkey:/^\/?dacu\.(1|507)\.1\.1$/},{spmab:/^a222r\.(8206578|8197912|8197910)$/,logkey:/^\/?dacu\.1\.1\.[1-5]$/},{spmab:"1111",logkey:/^\/?tabbar.click.tab[1-5]$/},{spmab:"1111",logkey:/^\/?1111active\.list\.(list|algo)$/},{spmab:"1111",logkey:"/tmalllive.1111show.downloadbutton"},{spmab:/^a1zax\.8224871$/,logkey:/^\/?tmwlact.520\.1\.1\.[1-7]$/},{spmab:/^a1zax\.8224847$/,logkey:/^\/?tmwlact.520\.1\.1\.[8-9]$/},{spmab:/^a1zax\.8224847$/,logkey:/^\/?tmwlact.520\.1\.1\.(10|11|12|13|14|16|30)$/},{spmab:/^a1zax\.(8224868|8224854|8224861)$/,logkey:/^\/?tmwlact.520\.1\.1\.(17|18|19|20|21|23|24|25|29)$/},{spmab:"a222r.8215186",logkey:"/dacu.1.1.2"},{spmab:"a222r.8215188",logkey:"/dacu.1.1.2"},{spmab:"a3145.8194095",logkey:"/qingdan.2.3"},{spmab:/^a21sv\.\d{7}$/,logkey:/^\/?1{4}bq\.1{4}01\.1{4}bq\d{2}$/},{spmab:"1111",logkey:/^\/?tmwap\.2016party\.2016([0-1][0-9]|2[0-8])$/},{spmab:/^a224u\.cid$/,logkey:/^\/?tmalllive\.1\.[2-3]$/},{spmab:/^(a2268\.8225801|a2268\.8217919)$/,logkey:/^\/?tmalllive\.2\.[1-3]$/},{spmab:/^a21pv\.8206961$/,logkey:/^\/?ybh\.100\.1\.(cpcb|rcexpos|cpexp)$/},{spmab:"a230r.1",logkey:"/search"},{spmab:"a220m.1000858",logkey:"/mallsearch"},{spmab:/^a223j\.8193990$/,logkey:/^\/?tmalllive\.1111liveroom\.followbutton$/},{spmab:/^a223j\.8193918$/,logkey:/^\/?tmalllive\.1111liveroom\.followgift$/},{spmab:/^a223j\.8205670$/,logkey:/^\/?tmalllive\.1111liveroom\.tlivegiftegg$/}];a.getRecordDomian=function(t){for(var e,a=function(a){var n;return n="object"==typeof e[a]?e[a].test(t[a]):t[a]===e[a]},i=0;i<n.length;i++)if(e=n[i],a("logkey")&&(a("spmab")||"1111"===e.spmab))return"//hd.mmstat.com/";return t.defaultDomain}},{}],30:[function(t,e,a){"use strict";a.wp_beacon=t("./extenal/wp_beacon.js"),a.windvaneParams=t("./common/windvaneParams.js"),a.hd_domain=t("./hd_domain.js")},{"./common/windvaneParams.js":26,"./extenal/wp_beacon.js":28,"./hd_domain.js":29}],31:[function(t,e,a){"use strict";var n,i=document,o=t("../lib/utils/util"),r=t("./iframe"),s=t("./cookie"),l=t("./cookie").getData(),u=t("../lib/personality/extenal/wp"),c=t("./makeid").makePageId,m=t("./misc"),d=o.ifAdd,p=location.hash;p&&0===p.indexOf("#")&&(p=p.substr(1)),a.make=function(t,e,a,f){var g=[["logtype",r.is_in?0:1],[o.mkPlainKey(),"title="+escape(i.title)],["pre",t._$.page_referrer],["cache",m.makeCacheNum()],["scr",screen.width+"x"+screen.height]],h=l.cna||s.getCookie("cna");h&&g.push([o.mkPlainKey(),"cna="+h]),l.tracknick&&g.push([o.mkPlainKey(),"nick="+l.tracknick]);var b="";if(g_SPM&&g_SPM._current_spm){var v=[];for(var _ in g_SPM._current_spm)v.push(g_SPM._current_spm[_]);v.length>0&&(b=v.join("."))}d(g,[["wm_pageid",f.ms_data_page_id],["wm_prototypeid",f.ms_prototype_id],["wm_sid",f.ms_data_shop_id],["spm-url",b?b:""],["spm-cnt",e.spm_cnt],["cnaui",l.cnaui]]);var y=[],k=a.ua_info||{};return d(y,[["thw",l.thw],["bucket_id",u.getBucketId(f)],["urlokey",p],["wm_instanceid",f.ms_data_instance_id],["p",k.p],["o",k.o],["b",k.b],["s",k.s],["w",k.w],["mx",k.mx],["ism",k.ism],["st_page_id",n||c()],["lver",t._tb_idx_doub?t._t_lver:t.lver],["jsver",t._$.script_name]]),{basic:g,extra:y}}},{"../lib/personality/extenal/wp":27,"../lib/utils/util":41,"./cookie":12,"./iframe":15,"./makeid":20,"./misc":22}],32:[function(t,e,a){"use strict";function n(){function t(t){var e="0123456789abcdefhijklmnopqrstuvwxyzABCDEFHIJKLMNOPQRSTUVWXYZ",a="0123456789abcdefghijkmnopqrstuvwxyzABCDEFGHIJKMNOPQRSTUVWXYZ";return 1==t?e.substr(Math.floor(60*Math.random()),1):2==t?a.substr(Math.floor(60*Math.random()),1):"0"}for(var e,a="",n="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ",o=!1;a.length<6;)e=n.substr(Math.floor(62*Math.random()),1),!o&&a.length<=2&&("g"==e.toLowerCase()||"l"==e.toLowerCase())&&(0===a.length&&"g"==e.toLowerCase()?Math.random()<.5&&(e=t(1),o=!0):1==a.length&&"l"==e.toLowerCase()&&"g"==a.charAt(0).toLowerCase()&&(e=t(2),o=!0)),a+=e;return goldlog._tb_idx_doub&&goldlog.pvid&&!i&&(i=a=goldlog.pvid),window.g_aplus_pv_id=a,goldlog.pvid=a,a}var i;a.makePVId=n},{}],33:[function(t,e,a){"use strict";var n=null,i=t("./nameStorage").nameStorage,o=t("../config").KEY;a.getRefer=function(){return null!==n?n:n=document.referrer||i.getItem(o.NAME_STORAGE.REFERRER)||""}},{"../config":1,"./nameStorage":25}],34:[function(t,e,a){"use strict";function n(){if(!s.data.a||!s.data.b){var t=o._SPM_a,e=o._SPM_b;if(t&&e)return t=t.replace(/^{(\w+\/)}$/g,"$1"),e=e.replace(/^{(\w+\/)}$/g,"$1"),s.is_wh_in_page=!0,void s.setAB(t,e);var a=goldlog._$.meta_info;t=a["data-spm"]||a["spm-id"]||"0";var n=t.split(".");n.length>1&&(t=n[0],e=n[1]),s.setA(t),e&&s.setB(e);var i=r.getElementsByTagName("body");i=i&&i.length?i[0]:null,i&&(e=u.tryToGetAttribute(i,"data-spm"),e?s.setB(e):1===n.length&&s.setAB("0","0"))}}function i(){var t=s.data.a,e=s.data.b;t&&e&&(goldlog.spm_ab=[t,e])}var o=window,r=document,s={},l={};s.data=l;var u=t("../lib/utils/util"),c=t("../lib/utils/spmUtil"),m=location.href,d=t("./referrer").getRefer();s.setA=function(t){s.data.a=t,i()},s.setB=function(t){s.data.b=t,i()},s.setAB=function(t,e){s.data.a=t,s.data.b=e,i()};var p=c.getSPMFromUrl;s.init=function(e){s.spm_url=p(m),s.spm_pre=p(d),s.meta_protocol=e.spm_protocol,n();var a;s.data.a&&s.data.b&&(a=[s.data.a,s.data.b].join(".")),s.spm_cnt=(a||"0.0")+".0.0."+goldlog.pvid,goldlog._$.spm=s;var i=t("./spmException").is_exception;i||t("./spmMonitor"),t("./spmact")},e.exports=s},{"../lib/utils/spmUtil":39,"../lib/utils/util":41,"./referrer":33,"./spmException":35,"./spmMonitor":36,"./spmact":37}],35:[function(t,e,a){"use strict";function n(t,e){for(var a=0,n=t.length;a<n;a++)if(i.isContain(e,t[a]))return!0;return!1}var i=t("../lib/utils/util"),o=location.host,r=["xiaobai.com","admin.taobao.org","aliloan.com","mybank.cn"],s=["tmc.admin.taobao.org","tmall.admin.taobao.org"];a.is_exception=n(r,o)&&!n(s,o)},{"../lib/utils/util":41}],36:[function(t,e,a){!function(){function e(){var t=X.spm.data;return[t.a,t.b].join(".")}function a(t){for(var e=["javascript:","tel:","sms:","mailto:","tmall://"],a=0,n=e.length;a<n;a++)if(It(t,e[a]))return!0}function n(){return Math.floor(268435456*Math.random()).toString(16)}function i(t){var e;try{e=Wt(t.getAttribute("href",2))}catch(a){}return e||""}function o(t,e,a){return"tap"==e?void r(t,a):void t[ct]((st?"on":"")+e,function(t){t=t||W.event;var e=t.target||t.srcElement;a(e)},F)}function r(t,e){var a="ontouchend"in document.createElement("div"),n=a?"touchstart":"mousedown";o(t,n,function(t){e&&e(t)})}function s(t,e){var a,n,i,o,r,s,l,u,c,m=[];for(a=Pt(t.getElementsByTagName("a")),n=Pt(t.getElementsByTagName("area")),o=a.concat(n),l=0,u=o.length;l<u;l++){for(s=!1,r=i=o[l];(r=r.parentNode)&&r!=t;)if(xt(r,gt)){s=!0;break}s||(c=xt(i,_t),e||"t"==c?e&&"t"==c&&m.push(i):m.push(i))}return m}function l(t,a,n,o){var r,l,u,c,m,d,p,f,h,v,y,k,A,E,S,P,x,T;if(a=a||t.getAttribute(gt)||"",a&&(r=s(t,o),0!==r.length)){if(u=a.split("."),P=It(a,"110")&&3==u.length,P&&(x=u[2],u[2]="w"+(x||"0"),a=u.join(".")),Rt(k=e())&&k.match(/^[\w\-\*]+(\.[\w\-\*\/]+)?$/))if($t(a,".")){if(!It(a,k)){for(c=k.split("."),u=a.split("."),E=0,A=c.length;E<A;E++)u[E]=c[E];a=u.join(".")}}else $t(k,".")||(k+=".0"),a=k+"."+a;if(a.match&&a.match(/^[\w\-\*]+\.[\w\-\*\/]+\.[\w\-\*\/]+$/)){var M=o?kt:yt;for(T=parseInt(xt(t,M))||0,S=0,m=T,A=r.length;S<A;S++)l=r[S],d=i(l),(o||d)&&(P&&l.setAttribute(At,x),p=l.getAttribute(Et),p&&w(p)?g(l,p,n):(h=_(l.parentNode),h.a_spm_ab?(y=h.a_spm_ab,v=h.ab_idx):(y=void 0,m++,v=m),f=b(l)||v,o&&(f="at"+((Vt(f)?1e3:"")+f)),p=y?a+"-"+y+"."+f:a+"."+f,g(l,p,n)));t.setAttribute(M,m)}}}function u(t){var e,a=["mclick.simba.taobao.com","click.simba.taobao.com","click.tanx.com","click.mz.simba.taobao.com","click.tz.simba.taobao.com","redirect.simba.taobao.com","rdstat.tanx.com","stat.simba.taobao.com","s.click.taobao.com"],n=a.length;for(e=0;e<n;e++)if(t.indexOf(a[e])!=-1)return!0;return!1}function c(t){return t?!!t.match(/^[^\?]*\balipay\.(?:com|net)\b/i):F}function m(t){return t?!!t.match(/^[^\?]*\balipay\.(?:com|net)\/.*\?.*\bsign=.*/i):F}function d(t){for(var e;(t=t.parentNode)&&t.tagName!=rt;)if(e=xt(t,ht))return e;return""}function p(t,e){if(t&&/&?\bspm=[^&#]*/.test(t)&&(t=t.replace(/&?\bspm=[^&#]*/g,"").replace(/&{2,}/g,"&").replace(/\?&/,"?").replace(/\?$/,"")),!e)return t;var a,n,i,o,r,s,l,u="&";if(t.indexOf("#")!=-1&&(i=t.split("#"),t=i.shift(),n=i.join("#")),o=t.split("?"),r=o.length-1,i=o[0].split("//"),i=i[i.length-1].split("/"),s=i.length>1?i.pop():"",r>0&&(a=o.pop(),t=o.join("?")),a&&r>1&&a.indexOf("&")==-1&&a.indexOf("%")!=-1&&(u="%26"),t=t+"?spm="+wt+e+(a?u+a:"")+(n?"#"+n:""),l=$t(s,".")?s.split(".").pop().toLowerCase():""){if({png:1,jpg:1,jpeg:1,gif:1,bmp:1,swf:1}.hasOwnProperty(l))return 0;!a&&r<=1&&(n||{htm:1,html:1,php:1,aspx:1}.hasOwnProperty(l)||(t+="&file="+s))}return t}function f(t){return t&&H.split("#")[0]==t.split("#")[0]}function g(t,o,r){var s=e();if(t.setAttribute(Et,o),V=W.g_aplus_pv_id,V&&(o+="."+V),V||s&&s!=nt){var l=i(t),g="i"==(xt(t,ht)||d(t)||ft),b=tt+"tbspm.1.1?logtype=2&spm=";l&&!u(l)&&(!g&&(It(l,"#")||f(l)||a(l.toLowerCase())||c(l)||m(l))||(g?(b+=o+"&url="+encodeURIComponent(l)+"&cache="+n(),$==t&&Ut(b)):r||(l=p(l,o))&&h(t,l)))}}function h(t,e){var a,n=t.innerHTML;n&&n.indexOf("<")==-1&&(a=L.createElement("b"),a.style.display="none",t.appendChild(a)),t.href=e,a&&t.removeChild(a)}function b(t){var e,a=X.spm.data;return"0"==a.a&&"0"==a.b?e="0":(e=xt(t,gt),e&&e.match(/^d\w+$/)||(e="")),e}function v(t){for(var e,a,n=t;t&&t.tagName!=ot&&t.tagName!=rt&&t.getAttribute;){if(a=t.getAttribute(gt)){e=a,n=t;break}if(!(t=t.parentNode))break}return e&&!/^[\w\-\.\/]+$/.test(e)&&(e="0"),{spm_c:e,el:n}}function _(t){for(var e,a={},n="";t&&t.tagName!=ot&&t.tagName!=rt;){if(!n&&(n=xt(t,St))){e=parseInt(xt(t,"data-spm-ab-max-idx"))||0,a.a_spm_ab=n,a.ab_idx=++e,t.setAttribute("data-spm-ab-max-idx",e);break}if(xt(t,gt))break;t=t.parentNode}return a}function y(t){var e;return t&&(e=t.match(/&?\bspm=([^&#]*)/))?e[1]:""}function k(t,a){var n=e(),o=i(t),r=y(o),s=null,l=n&&2==n.split(".").length;return l?(s=[n,0,b(t)||0],void g(t,s.join("."),a)):void(o&&r&&(o=o.replace(/&?\bspm=[^&#]*/g,"").replace(/&{2,}/g,"&").replace(/\?&/,"?").replace(/\?$/,"").replace(/\?#/,"#"),h(t,o)))}function w(t){var a=e(),n=t.split(".");return n[0]+"."+n[1]==a}function A(t,e){$=t,mt&&T();var a,n,i=xt(t,Et);if(i&&w(i))g(t,i,e);else{if(a=v(t.parentNode),n=a.spm_c,!n)return void k(t,e);it&&(n="0"),l(a.el,n,e),l(a.el,n,e,!0)}}function E(t){if(t&&1==t.nodeType){Mt(t,yt),Mt(t,kt);var e,a=Pt(t.getElementsByTagName("a")),n=Pt(t.getElementsByTagName("area")),i=a.concat(n),o=i.length;for(e=0;e<o;e++)Mt(i[e],Et)}}function S(t){var a=e(),n=t.parentNode;if(!n)return"";var i=xt(t,vt),o=D.parseSemicolonContent(i)||{},r=o.locaid,s=t.getAttribute(gt)||r,l=v(n),u=l.spm_c||0;u&&u.indexOf(".")!=-1&&(u=u.split("."),u=u[u.length-1]);var c=a+"."+u,m=at[c]||0;return m++,at[c]=m,s=s||m,c+".i"+s}function P(t){var e,a=t.tagName;return V=W.g_aplus_pv_id,"A"!=a&&"AREA"!=a?e=S(t):(A(t,U),e=xt(t,Et)),e=(e||"0.0.0.0").split("."),{a:e[0],b:e[1],c:e[2],d:e[3],e:V}}function x(t,e){if(e||(e=L),L.evaluate)return e.evaluate(t,L,null,9,null).singleNodeValue;for(var a,n=t.split("/");!a&&n.length>0;)a=n.shift();var i,o=/^.+?\[@id="(.+?)"]$/i,r=/^(.+?)\[(\d+)]$/i;return(i=a.match(o))?e=e.getElementById(i[1]):(i=a.match(r))&&(e=e.getElementsByTagName(i[1])[parseInt(i[2])-1]),e?0===n.length?e:x(n.join("/"),e):null}function T(){var t,e,a,n={};for(t in dt)dt.hasOwnProperty(t)&&(e=x(t),e&&(n[t]=1,a=dt[t],Tt(e,gt,("A"==e.tagName?a.spmd:a.spmc)||"")));for(t in n)n.hasOwnProperty(t)&&delete dt[t]}function M(){if(!pt){if(!W.spmData)return void(et||setTimeout(arguments.callee,100));pt=U;var t,e,a,n,i=W.spmData.data;if(i&&Ct(i)){for(t=0,e=i.length;t<e;t++)a=i[t],n=a.xpath,n=n.replace(/^id\("(.+?)"\)(.*)/g,'//*[@id="$1"]$2'),dt[n]={spmc:a.spmc,spmd:a.spmd};T()}}}function O(){var t,e,a,n,i=L.getElementsByTagName("iframe"),o=i.length;for(e=0;e<o;e++)t=i[e],!t.src&&(a=xt(t,bt))&&(n=P(t),n?(n=[n.a,n.b,n.c,n.d,n.e].join("."),t.src=p(a,n)):t.src=a)}function I(){function t(){e++,e>10&&(a=3e3),O(),setTimeout(t,a)}var e=0,a=500;t()}function j(t,e){var a,n,i,o="gostr",r="locaid",s="gmkey",l={};if(Lt(e,l),a=l[o],i=l[r],n=l[s],a&&i){It(a,"/")&&(a=a.substr(1));var u=P(t),c=[u.a,u.b,u.c,i].join("."),m=a+"."+c,d=["logtype=2","cache="+Math.random(),"autosend=1","spm-cnt="+[u.a,u.b].join(".")+".0.0"],p=Ot(H);p&&d.push("spm-pre="+p);var f;for(f in l)l.hasOwnProperty(f)&&f!=o&&f!=r&&d.push(f+"="+l[f]);d.length>0&&(m+="?"+d.join("&"));var g=W.goldlog.windVaneData||{},h={gmkey:n,gokey:d.length>0?d.join("&"):""},b="/"+a+"."+c,v=Ft({logkey:a,gmkey:n,spm_ab:goldlog.spm_ab});v&&(h._is_g2u_=1),h.version=z.toUtVersion;try{h=JSON.stringify(h),"{}"==h&&(h="")}catch(_){h=""}var y=function(t){g.functype=Y.getFunctypeValue({logkey:a,gmkey:n,spm_ab:goldlog.spm_ab}),g.logkey=b,g.logkeyargs=h,g.extendargs="",delete g.spmcnt,delete g.spmpre,delete g.lzsid,W.goldlog.call("WVTBUserTrack","toUT",g,function(){t({isSuccess:!0})},function(e){t({isSuccess:!1,msg:e})},5e3)},k=function(){Ut(tt+m),t.setAttribute(Et,c)};J&&W.goldlog&&W.goldlog.call&&!/^\/aplus\.99\.(\d)+$/.test(b)&&y(function(t){t&&!t.isSuccess&&Nt.run({isSingleSend:v,userAgent:navigator.userAgent,url:location.href,windVaneData:g})}),v||k()}}function N(t){W.g_SPM&&(g_SPM._current_spm=P(t));for(var e;t&&t.tagName!=ot;){e=xt(t,vt);{if(e){j(t,e);break}t=t.parentNode}}}function R(){J&&Q?o(L,"tap",N):o(L,"mousedown",N)}function C(t){for(var e;t&&(e=t.tagName);){if("A"==e||"AREA"==e){A(t,F),W.g_SPM&&(g_SPM._current_spm=P(t));break}if(e==rt||e==ot)break;t=t.parentNode}}var V,$,W=window,L=document,B=location,U=!0,F=!1,D=t("../lib/utils/util"),z=t("../lib/utils/v"),G=t("../lib/utils/spmUtil"),X=goldlog._$,q=X.meta_info,H=B.href,K=t("../lib/personality/index.js"),Y=K.windvaneParams,J=X.is_terminal,Q=X.is_touch_enabled,Z=t("./beaconBase"),tt=Z.hjlj(),et=F,at={},nt="0.0",it=!1,ot="HTML",rt="BODY",st=!!L.attachEvent,lt="attachEvent",ut="addEventListener",ct=st?lt:ut,mt=F,dt={},pt=F,ft=q.spm_protocol,gt="data-spm",ht="data-spm-protocol",bt="data-spm-src",vt="data-spm-click",_t="data-auto-spmd",yt="data-spm-max-idx",kt="data-auto-spmd-max-idx",wt="",At="data-spm-wangpu-module-id",Et="data-spm-anchor-id",St="data-spm-ab",Pt=D.nodeListToArray,xt=D.tryToGetAttribute,Tt=D.tryToSetAttribute,Mt=D.tryToRemoveAttribute,Ot=G.getSPMFromUrl,It=D.isStartWith,jt=t("../lib/monitor/tracker.js"),Nt=new jt({ratio:5,logkey:"/aplus.99.4",chksum:"H46747616"}),Rt=D.isString,Ct=D.isArray,Vt=D.isNumber,$t=D.isContain,Wt=D.trim,Lt=D.parseSemicolonContent,Bt=D.DOMReady,Ut=goldlog.send,Ft=function(t){return!!(J&&W.goldlog&&W.goldlog.call&&Y.isSingleSendLog(t))};Bt(function(){et=U}),M(),J||I(),R(),J&&Q?o(L,"tap",C):(o(L,"mousedown",C),o(L,"keydown",C)),W.g_SPM={resetModule:E,anchorBeacon:A,getParam:P}}()},{"../lib/monitor/tracker.js":24,"../lib/personality/index.js":30,"../lib/utils/spmUtil":39,"../lib/utils/util":41,"../lib/utils/v":42,"./beaconBase":4}],37:[function(t,e,a){!function(){function t(t,e,a){t[k]((v?"on":"")+e,function(t){t=t||u.event;var e=t.target||t.srcElement;a(t,e)},!1)}function e(){return/&?\bspm=[^&#]*/.test(location.href)?location.href.match(/&?\bspm=[^&#]*/gi)[0].split("=")[1]:""}function a(t,e){if(t&&/&?\bspm=[^&#]*/.test(t)&&(t=t.replace(/&?\bspm=[^&#]*/g,"").replace(/&{2,}/g,"&").replace(/\?&/,"?").replace(/\?$/,"")),!e)return t;var a,n,i,o,r,s,l,u="&";if(t.indexOf("#")!=-1&&(i=t.split("#"),t=i.shift(),n=i.join("#")),o=t.split("?"),r=o.length-1,i=o[0].split("//"),i=i[i.length-1].split("/"),s=i.length>1?i.pop():"",r>0&&(a=o.pop(),t=o.join("?")),a&&r>1&&a.indexOf("&")==-1&&a.indexOf("%")!=-1&&(u="%26"),t=t+"?spm="+e+(a?u+a:"")+(n?"#"+n:""),l=s.indexOf(".")>-1?s.split(".").pop().toLowerCase():""){if({png:1,jpg:1,jpeg:1,gif:1,bmp:1,swf:1}.hasOwnProperty(l))return 0;!a&&r<=1&&(n||{htm:1,html:1,php:1}.hasOwnProperty(l)||(t+="&file="+s))}return t}function n(t){function e(t){return t=t.replace(/refpos[=(%3D)]\w*/gi,s).replace(o,"%3D"+n+"%26"+i.replace("=","%3D")).replace(r,n),i.length>0&&(t+="&"+i),t}var a=window.location.href,n=a.match(/mm_\d{0,24}_\d{0,24}_\d{0,24}/i),i=a.match(/[&\?](pvid=[^&]*)/i),o=new RegExp("%3Dmm_\\d+_\\d+_\\d+","ig"),r=new RegExp("mm_\\d+_\\d+_\\d+","ig");i=i&&i[1]?i[1]:"";var s=a.match(/(refpos=(\d{0,24}_\d{0,24}_\d{0,24})?(,[a-z]+)?)(,[a-z]+)?/i);return s=s&&s[0]?s[0]:"",n?(n=n[0],e(t)):t}function i(e){var a=u.KISSY;a?a.ready(e):u.jQuery?jQuery(c).ready(e):"complete"===c.readyState?e():t(u,"load",e)}function o(t,e){return t&&t.getAttribute?t.getAttribute(e)||"":""}function r(t){if(t){var e,a=b.length;for(e=0;e<a;e++)if(t.indexOf(b[e])>-1)return!0;return!1}}function s(t,e){if(t&&/&?\bspm=[^&#]*/.test(t)&&(t=t.replace(/&?\bspm=[^&#]*/g,"").replace(/&{2,}/g,"&").replace(/\?&/,"?").replace(/\?$/,"")),!e)return t;var a,n,i,o,r,s,l,u="&";if(t.indexOf("#")!=-1&&(i=t.split("#"),t=i.shift(),n=i.join("#")),o=t.split("?"),r=o.length-1,i=o[0].split("//"),i=i[i.length-1].split("/"),s=i.length>1?i.pop():"",r>0&&(a=o.pop(),t=o.join("?")),a&&r>1&&a.indexOf("&")==-1&&a.indexOf("%")!=-1&&(u="%26"),t=t+"?spm="+e+(a?u+a:"")+(n?"#"+n:""),l=s.indexOf(".")>-1?s.split(".").pop().toLowerCase():""){if({png:1,jpg:1,jpeg:1,gif:1,bmp:1,swf:1}.hasOwnProperty(l))return 0;!a&&r<=1&&(n||{htm:1,html:1,php:1}.hasOwnProperty(l)||(t+="&__file="+s))}return t}function l(t){if(r(t.href)){var a=o(t,h);if(!a){if(!p)return;var n=p(t),i=[n.a,n.b,n.c,n.d,n.e].join(".");f&&(i=[n.a||"0",n.b||"0",n.c||"0",n.d||"0"].join("."),i=(e()||"0.0.0.0.0")+"_"+i),t.href=s(t.href,i),t.setAttribute(h,i)}}}var u=window,c=document,m=u._alimm_spmact_on_;if("undefined"==typeof m&&(m=1),1==m&&(m=1),0==m&&(m=0),m){var d=function(){return{a:0,b:0,c:0,d:0,e:0}},p=u.g_SPM&&u.g_SPM.getParam?u.g_SPM.getParam:d,f=!0;try{f=self.location!=top.location}catch(g){}var h="data-spm-act-id",b=["mclick.simba.taobao.com","click.simba.taobao.com","click.tanx.com","click.mz.simba.taobao.com","click.tz.simba.taobao.com","redirect.simba.taobao.com","rdstat.tanx.com","stat.simba.taobao.com","s.click.taobao.com"],v=!!c.attachEvent,_="attachEvent",y="addEventListener",k=v?_:y;t(c,"mousedown",function(t,e){for(var a,n=0;e&&(a=e.tagName)&&n<5;){if("A"==a||"AREA"==a){l(e);break}if("BODY"==a||"HTML"==a)break;e=e.parentNode,n++}}),i(function(){for(var t,i,r=document.getElementsByTagName("iframe"),s=0;s<r.length;s++){t=o(r[s],"mmsrc"),i=o(r[s],"mmworked");var l=p(r[s]),u=[l.a||"0",l.b||"0",l.c||"0",l.d||"0",l.e||"0"].join(".");t&&!i?(f&&(u=[l.a||"0",l.b||"0",l.c||"0",l.d||"0"].join("."),u=e()+"_"+u),r[s].src=a(n(t),u),r[s].setAttribute("mmworked","mmworked")):r[s].setAttribute(h,u)}})}}()},{}],38:[function(t,e,a){"use strict";function n(t,e,a){if(e)return"m";if(a){if(r.isContain(t,"wrating.com"))return"k";for(var n,i=[["youku.com","yt"],["soku.com","yt"],["tudou.com","yt"],["laifeng.com","yt"]],o=0;o<i.length;o++)if(n=i[o],r.isContain(t,n[0]))return n[1];return"y"}var s,l,u="o",c=[["youku.com","yt"],["soku.com","yt"],["tudou.com","yt"],["laifeng.com","yt"],["ju.taobao.com","4"],["juhuasuan.com","4"],["alipay.com","f"],["china.alibaba.com","6"],["qd.alibaba.com","o"],["jaq.alibaba.com","o"],["110.alibaba.com","o"],["security.alibaba.com","o"],["expo.alibaba.com","z"],["eco.alibaba.com","q"],["dt.alibaba.com","q"],["1688.com","6"],["alibaba.com","7"],["aliloan.com","8"],["cnzz.com","9"],["net.cn","a"],["hichina.com","a"],["phpwind.com","b"],["aliyun.com","c"],["tao123.com","d"],["alimama.com","e"],["taobao.com","1"],["tmall.com","2"],["tmall.hk","2"],["etao.com","3"],["sm.cn","s"],["mei.com","me"],["alibaba-inc.com","q"],["*",u]],m=c.length;for(s=0;s<m;s++)if(l=c[s],r.isContain(t,l[0]))return l[1];return u}function i(t){return!0}function o(){return"boolean"==typeof m?m:m=r.isEndWith(l,u)||r.isEndWith(l,c)}var r=t("./util"),s=location,l=s.hostname,u="aliloan.com",c="mybank.cn";a.getBeaconSrc=n,a.is_iframeExcption=i;var m;a.is_aliloan=o},{"./util":41}],39:[function(t,e,a){"use strict";function n(t){var e,a=t.match(/spm=([^&|#|?|\/]+)/);try{e=a&&2===a.length?a[1]:""}catch(n){o.run({message:'getSPMFromUrl("'+t+'") error message:'+n.message})}finally{return!e&&t&&a&&o.run({message:'getSPMFromUrl("'+t+'") match null from spm=xxxx spm invalid'}),e}}var i=t("../monitor/tracker.js"),o=new i({ratio:10,logkey:"/aplus.99.1",gmkey:"",chksum:"H46747592"});a.getSPMFromUrl=n},{"../monitor/tracker.js":24}],40:[function(t,e,a){"use strict";function n(t){var e,a=t.split("."),n=a.length;return e=i.any(o,function(e){return i.isEndWith(t,e)})?a.slice(n-3):a.slice(n-2),e.join(".")}var i=t("./util"),o=[".com.cn",".net.cn"];a.getDomain=n},{"./util":41}],41:[function(t,e,a){"use strict";function n(t,e){return t&&t.getAttribute?t.getAttribute(e)||"":""}function i(t,e,a){if(t&&t.setAttribute)try{t.setAttribute(e,a)}catch(n){}}function o(t,e){if(t&&t.removeAttribute)try{t.removeAttribute(e)}catch(a){i(t,e,"")}}function r(t){var e,a;try{return e=[].slice.call(t)}catch(n){e=[],a=t.length;for(var i=0;i<a;i++)e.push(t[i]);return e}}function s(t){return O=O||j.getElementsByTagName("head")[0],I&&!t?I:O?I=O.getElementsByTagName("meta"):[]}function l(t){var e,a,i,o=s(),r=o.length;for(e=0;e<r;e++)a=o[e],n(a,"name")===t&&(i=n(a,"content"));return i||""}function u(t){t=(t||"").split("#")[0].split("?")[0];var e=t.length,a=function(t){var e,a=t.length,n=0;for(e=0;e<a;e++)n=31*n+t.charCodeAt(e);return n};return e?a(e+"#"+t.charCodeAt(e-1)):-1}function c(t,e){return t.indexOf(e)>-1}function m(t,e){return 0===t.indexOf(e)}function d(t,e){var a=t.length,n=e.length;return a>=n&&t.indexOf(e)==a-n}function p(t){return"function"==typeof t}function f(t){if("function"!=typeof t)throw new TypeError(t+" is not a function");return t}function g(t){return"[object Array]"===Object.prototype.toString.call(t)}function h(t){return"string"==typeof t}function b(t){return"undefined"==typeof t}function v(t){return"string"==typeof t?t.replace(/^\s+|\s+$/g,""):""}function _(t,e){var a=t.indexOf("?")==-1?"?":"&",n=e?g(e)?y(e):w(e):"";return n?t+a+n:t}function y(t){var e,a,n,i=[],o=t.length;for(n=0;n<o;n++)e=t[n][0],a=t[n][1],i.push(m(e,R)?a:e+"="+encodeURIComponent(a));return i.join("&")}function k(t){var e,a,n,i={},o=t.length;for(n=0;n<o;n++)e=t[n][0],a=t[n][1],i[e]=a;return i}function w(t){var e,a,n=[];for(e in t)t.hasOwnProperty(e)&&(a=""+t[e],n.push(m(e,R)?a:e+"="+encodeURIComponent(a)));return n.join("&")}function A(t){for(var e=t.split("&"),a=0,n=e.length,i={};a<n;a++){var o=e[a],r=o.indexOf("="),s=o.substring(0,r),l=o.substring(r+1);i[s]=E(l)}return i}function E(t,e){var a=e||"";if(t)try{a=decodeURIComponent(t)}catch(n){}return a}function S(t,e){e=e||{};var a,n,i=t.split(";"),o=i.length;for(a=0;a<o;a++)n=i[a].split("="),e[v(n[0])||""]=E(v(n.slice(1).join("=")));return e}function P(t,e,a){t[W]((C?"on":"")+e,function(t){t=t||N.event;var e=t.target||t.srcElement;a(t,e)},!1)}function x(t,e){var a="script",n=j.createElement(a);n.type="text/javascript",n.async=!0;var i="https:"==location.protocol?e||t:t;0===i.indexOf("//")&&(i=L+i),n.src=i;var o=j.getElementsByTagName(a)[0];o.parentNode.insertBefore(n,o)}function T(t,e){var a,n=t.length;for(a=0;a<n;a++)e(t[a])}function M(t,e){var a,n=t.length;for(a=0;a<n;a++)if(e(t[a]))return!0;return!1}var O,I,j=document,N=window;a.tryToGetAttribute=n,a.tryToSetAttribute=i,a.tryToRemoveAttribute=o,a.nodeListToArray=r,a.getMetaTags=s,a.getMetaCnt=l,a.makeChkSum=u,a.isContain=c,a.isStartWith=m,a.isEndWith=d,a.isFunction=p,a.callable=f,a.isArray=g,a.isString=h,a.isUnDefined=b,a.trim=v,a.rndInt32=function(){return Math.round(2147483647*Math.random())};var R="::-plain-::";a.mkPlainKey=function(){return R+Math.random()},a.s_plain_obj=R,a.makeUrl=_,a.arr2obj=k,a.obj2param=w,a.param2obj=A,a.parseSemicolonContent=S;var C=!!j.attachEvent,V="attachEvent",$="addEventListener",W=C?V:$;a.on=P,a.DOMReady=function(t){var e=N.KISSY;e&&p(e.ready)?e.ready(t):N.jQuery?jQuery(j).ready(t):"complete"===j.readyState?t():P(N,"load",t)},a.onload=function(t){P(N,"load",t)};var L=function(){var t="";return"file:"===location.protocol&&(t="http:"),t}();a.ifAdd=function(t,e){var a,n,i,o,r=e.length;for(a=0;a<r;a++)n=e[a],i=n[0],o=n[1],o&&t.push([i,o])},a.addScript=x,a.each=T,a.any=M,a.tryToGetHref=function(t){var e;try{e=v(t.getAttribute("href",2))}catch(a){}return e||""},a.isNumber=function(t){return"number"==typeof t},a.param2arr=function(t){for(var e,a=t.split("&"),n=0,i=a.length,o=[];n<i;n++)e=a[n].split("="),o.push([e.shift(),e.join("=")]);return o},a.mkPlainKeyForExparams=function(t){return t+"exparams"},a.isStartWithProtocol=function(t){for(var e=["javascript:","tel:","sms:","mailto:","tmall://","#"],a=0,n=e.length;a<n;a++)if(m(t,e[a]))return!0;return!1},a.isDisablePvid=function(){var t=!1;try{t=goldlog.config.get("aplus-disable-pvid")}catch(e){}finally{return"true"===t}},a.isTouch=function(){return"ontouchend"in document.createElement("div")},a.sleep=function(t,e){return setTimeout(function(){e()},t)},a.indexof=function(t,e){for(var a=0;a<t.length;a++)if(t[a]===e)return a;return-1}},{}],42:[function(t,e,a){a.v="7",a.MANUAL=9,a.MANUAL_TIMEOUT=7,a.lver="6.9.12",a.toUtVersion="v20161215",a.script_name="aplus_v2"},{}],43:[function(require,module,exports){function compareVersion(t,e){t=t.toString().split("."),e=e.toString().split(".");for(var a=0;a<t.length||a<e.length;a++){var n=parseInt(t[a],10),i=parseInt(e[a],10);if(window.isNaN(n)&&(n=0),window.isNaN(i)&&(i=0),n<i)return-1;if(n>i)return 1}return 0}function callback(t,e){isAndroid&&compareVersion(osVersion,"2.4.0")<0?setTimeout(function(){t&&t(e)},1):t&&t(e)}function init(){var WV_Core={call:function(t,e,a,n,i,o){var r,s;if(lib.promise&&("function"==typeof lib.promise.deferred?s=lib.promise.deferred():"function"==typeof lib.promise.defer&&(s=lib.promise.defer())),r=o>0?setTimeout(function(){WV_Core.onFailure(r,{ret:"TIMEOUT"})},o):WV_Private.getSid(),a.sid=r,WV_Private.registerCall(r,n,i,s),isAndroid?compareVersion(wvVersion,"2.7.0")>=0?WV_Private.callMethodByPrompt(t,e,WV_Private.buildParam(a),r+""):WindVane_Native&&WindVane_Native.callMethod&&WindVane_Native.callMethod(t,e,WV_Private.buildParam(a),r+""):isIOS&&WV_Private.callMethodByIframe(t,e,WV_Private.buildParam(a),r+""),s)return s.promise()},fireEvent:function(t,e){var a=doc.createEvent("HTMLEvents");a.initEvent(t,!1,!0),a.param=WV_Private.parseParam(e),doc.dispatchEvent(a)},getParam:function(t){return WV_Private.params[PARAM_PREFIX+t]||""},onSuccess:function(t,e){clearTimeout(t);var a=WV_Private.unregisterCall(t),n=a.success,i=a.deferred,o=WV_Private.parseParam(e);callback(function(t){n&&n(t),i&&i.resolve(t)},o.value||o),WV_Private.onComplete(t)},onFailure:function(t,e){clearTimeout(t);var a=WV_Private.unregisterCall(t),n=a.failure,i=a.deferred,o=WV_Private.parseParam(e);callback(function(t){n&&n(t),i&&i.reject(t)},o),WV_Private.onComplete(t)}},WV_Private={params:{},buildParam:function(t){return t&&"object"==typeof t?JSON.stringify(t):t||""},parseParam:function(str){var obj;if(str&&"string"==typeof str)try{obj=JSON.parse(str)}catch(e){obj=eval("("+str+")")}else obj=str||{};return obj},getSid:function(){return Math.floor(Math.random()*(1<<50))+""+inc++},registerCall:function(t,e,a,n){e&&(callbackMap[SUCCESS_PREFIX+t]=e),a&&(callbackMap[FAILURE_PREFIX+t]=a),n&&(callbackMap[DEFERRED_PREFIX+t]=n)},unregisterCall:function(t){var e=SUCCESS_PREFIX+t,a=FAILURE_PREFIX+t,n=DEFERRED_PREFIX+t,i={success:callbackMap[e],failure:callbackMap[a],deferred:callbackMap[n]};return delete callbackMap[e],
delete callbackMap[a],i.deferred&&delete callbackMap[n],i},useIframe:function(t,e){var a=IFRAME_PREFIX+t,n=iframePool.pop();n||(n=doc.createElement("iframe"),n.setAttribute("frameborder","0"),n.style.cssText="width:0;height:0;border:0;display:none;"),n.setAttribute("id",a),n.setAttribute("src",e),n.parentNode||setTimeout(function(){doc.body.appendChild(n)},5)},retrieveIframe:function(t){var e=IFRAME_PREFIX+t,a=doc.querySelector("#"+e);iframePool.length>=iframeLimit?doc.body.removeChild(a):iframePool.push(a)},callMethodByIframe:function(t,e,a,n){var i={"selfParam=1":1,sid:this.parseParam(a).sid};i=this.buildParam(i);var o=LOCAL_PROTOCOL+"://"+t+":"+n+"/"+e+"?"+i;this.params[PARAM_PREFIX+n]=a,this.useIframe(n,o)},callMethodByPrompt:function(t,e,a,n){var i=LOCAL_PROTOCOL+"://"+t+":"+n+"/"+e+"?"+a,o=WV_PROTOCOL+":";this.params[PARAM_PREFIX+n]=a,window.prompt(i,o)},onComplete:function(t){isIOS&&this.retrieveIframe(t),delete this.params[PARAM_PREFIX+t]}};for(var key in WV_Core)WV_Core.hasOwnProperty(key)&&(goldlog[key]=WindVane[key]=WV_Core[key])}var win=window,ua=navigator.userAgent,lib=win.lib||(win.lib={}),isIOS=/iPhone|iPad|iPod/i.test(ua),isAndroid=/Android/i.test(ua),doc=document,osVersion=ua.match(/(?:OS|Android)[\/\s](\d+[._]\d+(?:[._]\d+)?)/i),wvVersion=ua.match(/WindVane[\/\s](\d+[._]\d+[._]\d+)/),WindVane={},WindVane_Native=win.WindVane_Native,callbackMap={},inc=1,iframePool=[],iframeLimit=3,LOCAL_PROTOCOL="hybrid",WV_PROTOCOL="wv_hybrid",IFRAME_PREFIX="iframe_",SUCCESS_PREFIX="suc_",FAILURE_PREFIX="err_",DEFERRED_PREFIX="defer_",PARAM_PREFIX="param_";osVersion=osVersion?(osVersion[1]||"0.0.0").replace(/_/g,"."):"0.0.0",wvVersion=wvVersion?(wvVersion[1]||"0.0.0").replace(/_/g,"."):"0.0.0",exports.init=init,exports.is_WindVane=/WindVane/i.test(ua),exports.WindVane=WindVane},{}]},{},[2]);</script><script type="text/javascript" async charset="utf-8" src="detail_files/core_002.txt"></script><script src="detail_files/a_005" async charset="utf-8"></script><script src="detail_files/index-min.js" async charset="utf-8"></script><script src="detail_files/index_004.js" async></script><script src="detail_files/counter6.js" async></script>
    	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
    	<meta name="description" content="商品展示">
    	<meta name="keywords" content="商品展示">
    <meta name="spm-id" content="2007.1000338">
    <base href="/tzsc/">
    <meta charset="utf-8">
    	<title>商品展示  </title>
		<script>window.g_config={appId:1007,toolbar:false};</script>
		
    
<!-- start idle vmcommon assets 4.0-->
<link rel="shortcut icon" type="image/x-icon" href="https://www.taobao.com/favicon.ico">
<link rel="search" type="application/opensearchdescription+xml" href="https://assets.alicdn.com/plugins/opensearch/provider.xml" title="易淘购物">
<!-- S GLOBAL CSS -->
<link rel="stylesheet" href="detail_files/global-min.css">
<!-- S GLOBAL CSS -->
<link rel="stylesheet" href="detail_files/a_002.css">
<!-- S GLOBAL JS -->
<script src="detail_files/a_002"></script><script src="//g.alicdn.com/secdev/adblk/index.js?v=9"></script><script src="//g.alicdn.com/secdev/sufei_data/2.2.0/index.js"></script>
<!-- E GLOBAL JS -->
<script src="detail_files/a"></script>

<!-- end idle vmcommon assets 4.0-->
    <link href="detail_files/a.css" rel="stylesheet" charset="utf-8"><style>.ww-light{overflow:hidden;}.ww-block{display:block;margin-top:3px;}.ww-inline{display:inline-block;vertical-align:text-bottom;}.ww-light a{background-image: url("//img.alicdn.com/tps/i1/T15AD7FFFaXXbJnvQ_-130-60.gif");background-image: -webkit-image-set(url("//img.alicdn.com/tps/i1/T15AD7FFFaXXbJnvQ_-130-60.gif") 1x,url("//img.alicdn.com/tps/i4/T1Rsz7FPJaXXbZhKn7-520-240.gif") 4x);background-image: -moz-image-set(url("//img.alicdn.com/tps/i1/T15AD7FFFaXXbJnvQ_-130-60.gif") 1x,url("//img.alicdn.com/tps/i4/T1Rsz7FPJaXXbZhKn7-520-240.gif") 4x);background-image: -o-image-set(url("//img.alicdn.com/tps/i1/T15AD7FFFaXXbJnvQ_-130-60.gif") 1x,url("//img.alicdn.com/tps/i4/T1Rsz7FPJaXXbZhKn7-520-240.gif") 4x);background-image: -ms-image-set(url("//img.alicdn.com/tps/i1/T15AD7FFFaXXbJnvQ_-130-60.gif") 1x,url("//img.alicdn.com/tps/i4/T1Rsz7FPJaXXbZhKn7-520-240.gif") 4x);text-decoration:none!important;width:20px;height:20px;zoom:1;}.ww-large a{width:67px;}a.ww-offline{background-position:0 -20px;}a.ww-mobile{background-position:0 -40px;}.ww-small .ww-online{background-position:-80px 0;}.ww-small .ww-offline{background-position:-80px -20px;}.ww-small .ww-mobile{background-position:-80px -40px;}.ww-static .ww-online{background-position:-110px 0;}.ww-static .ww-offline{background-position:-110px -20px;}.ww-static .ww-mobile{background-position:-110px -40px;}.ww-light a span{display:none;}</style><style id="ks-suggest-style">.ks-suggest-container{background:white;border:1px solid #999;z-index:99999}.ks-suggest-shim{z-index:99998}.ks-suggest-container li{color:#404040;padding:1px 0 2px;font-size:12px;line-height:18px;float:left;width:100%}.ks-suggest-container .ks-selected{background-color:#39F;cursor:default}.ks-suggest-key{float:left;text-align:left;padding-left:5px}.ks-suggest-result{float:right;text-align:right;padding-right:5px;color:green}.ks-suggest-container .ks-selected span{color:#FFF;cursor:default}.ks-suggest-footer{padding:0 5px 5px}.ks-suggest-closebtn{float:right}.ks-suggest-container li,.ks-suggest-footer{overflow:hidden;zoom:1;clear:both}.ks-suggest-container{*margin-left:2px;_margin-left:-2px;_margin-top:-3px}</style><script src="detail_files/index_002.js"></script><script src="detail_files/index_003.js"></script><script src="//g.alicdn.com/secdev/adblk/index.js?v=9"></script><script src="//g.alicdn.com/secdev/sufei_data/2.2.0/index.js"></script><style charset="utf-8" type="text/css" class="firebugResetStyles">/* See license.txt for terms of usage */

/** reset styling **/

.firebugResetStyles {

    z-index: 2147483646 !important;

    top: 0 !important;

    left: 0 !important;

    display: block !important;

    border: 0 none !important;

    margin: 0 !important;

    padding: 0 !important;

    outline: 0 !important;

    min-width: 0 !important;

    max-width: none !important;

    min-height: 0 !important;

    max-height: none !important;

    position: fixed !important;

    transform: rotate(0deg) !important;

    transform-origin: 50% 50% !important;

    border-radius: 0 !important;

    box-shadow: none !important;

    background: transparent none !important;

    pointer-events: none !important;

    white-space: normal !important;

}
style.firebugResetStyles {

    display: none !important;

}
.firebugBlockBackgroundColor {

    background-color: transparent !important;

}
.firebugResetStyles:before, .firebugResetStyles:after {

    content: "" !important;

}

/**actual styling to be modified by firebug theme**/

.firebugCanvas {

    display: none !important;

}
/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

.firebugLayoutBox {

    width: auto !important;

    position: static !important;

}
.firebugLayoutBoxOffset {

    opacity: 0.8 !important;

    position: fixed !important;

}
.firebugLayoutLine {

    opacity: 0.4 !important;

    background-color: #000000 !important;

}
.firebugLayoutLineLeft, .firebugLayoutLineRight {

    width: 1px !important;

    height: 100% !important;

}
.firebugLayoutLineTop, .firebugLayoutLineBottom {

    width: 100% !important;

    height: 1px !important;

}
.firebugLayoutLineTop {

    margin-top: -1px !important;

    border-top: 1px solid #999999 !important;

}
.firebugLayoutLineRight {

    border-right: 1px solid #999999 !important;

}
.firebugLayoutLineBottom {

    border-bottom: 1px solid #999999 !important;

}

.firebugLayoutLineLeft {

    margin-left: -1px !important;

    border-left: 1px solid #999999 !important;

}

/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

.firebugLayoutBoxParent {

    border-top: 0 none !important;

    border-right: 1px dashed #E00 !important;

    border-bottom: 1px dashed #E00 !important;

    border-left: 0 none !important;

    position: fixed !important;

    width: auto !important;

}

.firebugRuler{

    position: absolute !important;

}

.firebugRulerH {

    top: -15px !important;

    left: 0 !important;

    width: 100% !important;

    height: 14px !important;

    background: url("data:image/png,%89PNG%0D%0A%1A%0A%00%00%00%0DIHDR%00%00%13%88%00%00%00%0E%08%02%00%00%00L%25a%0A%00%00%00%04gAMA%00%00%D6%D8%D4OX2%00%00%00%19tEXtSoftware%00Adobe%20ImageReadyq%C9e%3C%00%00%04%F8IDATx%DA%EC%DD%D1n%E2%3A%00E%D1%80%F8%FF%EF%E2%AF2%95%D0D4%0E%C1%14%B0%8Fa-%E9%3E%CC%9C%87n%B9%81%A6W0%1C%A6i%9A%E7y%0As8%1CT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AATE9%FE%FCw%3E%9F%AF%2B%2F%BA%97%FDT%1D~K(%5C%9D%D5%EA%1B%5C%86%B5%A9%BDU%B5y%80%ED%AB*%03%FAV9%AB%E1%CEj%E7%82%EF%FB%18%BC%AEJ8%AB%FA'%D2%BEU9%D7U%ECc0%E1%A2r%5DynwVi%CFW%7F%BB%17%7Dy%EACU%CD%0E%F0%FA%3BX%FEbV%FEM%9B%2B%AD%BE%AA%E5%95v%AB%AA%E3E5%DCu%15rV9%07%B5%7F%B5w%FCm%BA%BE%AA%FBY%3D%14%F0%EE%C7%60%0EU%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5JU%88%D3%F5%1F%AE%DF%3B%1B%F2%3E%DAUCNa%F92%D02%AC%7Dm%F9%3A%D4%F2%8B6%AE*%BF%5C%C2Ym~9g5%D0Y%95%17%7C%C8c%B0%7C%18%26%9CU%CD%13i%F7%AA%90%B3Z%7D%95%B4%C7%60%E6E%B5%BC%05%B4%FBY%95U%9E%DB%FD%1C%FC%E0%9F%83%7F%BE%17%7DkjMU%E3%03%AC%7CWj%DF%83%9An%BCG%AE%F1%95%96yQ%0Dq%5Dy%00%3Et%B5'%FC6%5DS%95pV%95%01%81%FF'%07%00%00%00%00%00%00%00%00%00%F8x%C7%F0%BE%9COp%5D%C9%7C%AD%E7%E6%EBV%FB%1E%E0(%07%E5%AC%C6%3A%ABi%9C%8F%C6%0E9%AB%C0'%D2%8E%9F%F99%D0E%B5%99%14%F5%0D%CD%7F%24%C6%DEH%B8%E9rV%DFs%DB%D0%F7%00k%FE%1D%84%84%83J%B8%E3%BA%FB%EF%20%84%1C%D7%AD%B0%8E%D7U%C8Y%05%1E%D4t%EF%AD%95Q%BF8w%BF%E9%0A%BF%EB%03%00%00%00%00%00%00%00%00%00%B8vJ%8E%BB%F5%B1u%8Cx%80%E1o%5E%CA9%AB%CB%CB%8E%03%DF%1D%B7T%25%9C%D5(%EFJM8%AB%CC'%D2%B2*%A4s%E7c6%FB%3E%FA%A2%1E%80~%0E%3E%DA%10x%5D%95Uig%15u%15%ED%7C%14%B6%87%A1%3B%FCo8%A8%D8o%D3%ADO%01%EDx%83%1A~%1B%9FpP%A3%DC%C6'%9C%95gK%00%00%00%00%00%00%00%00%00%20%D9%C9%11%D0%C0%40%AF%3F%EE%EE%92%94%D6%16X%B5%BCMH%15%2F%BF%D4%A7%C87%F1%8E%F2%81%AE%AAvzr%DA2%ABV%17%7C%E63%83%E7I%DC%C6%0Bs%1B%EF6%1E%00%00%00%00%00%00%00%00%00%80cr%9CW%FF%7F%C6%01%0E%F1%CE%A5%84%B3%CA%BC%E0%CB%AA%84%CE%F9%BF)%EC%13%08WU%AE%AB%B1%AE%2BO%EC%8E%CBYe%FE%8CN%ABr%5Dy%60~%CFA%0D%F4%AE%D4%BE%C75%CA%EDVB%EA(%B7%F1%09g%E5%D9%12%00%00%00%00%00%00%00%00%00H%F6%EB%13S%E7y%5E%5E%FB%98%F0%22%D1%B2'%A7%F0%92%B1%BC%24z3%AC%7Dm%60%D5%92%B4%7CEUO%5E%F0%AA*%3BU%B9%AE%3E%A0j%94%07%A0%C7%A0%AB%FD%B5%3F%A0%F7%03T%3Dy%D7%F7%D6%D4%C0%AAU%D2%E6%DFt%3F%A8%CC%AA%F2%86%B9%D7%F5%1F%18%E6%01%F8%CC%D5%9E%F0%F3z%88%AA%90%EF%20%00%00%00%00%00%00%00%00%00%C0%A6%D3%EA%CFi%AFb%2C%7BB%0A%2B%C3%1A%D7%06V%D5%07%A8r%5D%3D%D9%A6%CAu%F5%25%CF%A2%99%97zNX%60%95%AB%5DUZ%D5%FBR%03%AB%1C%D4k%9F%3F%BB%5C%FF%81a%AE%AB'%7F%F3%EA%FE%F3z%94%AA%D8%DF%5B%01%00%00%00%00%00%00%00%00%00%8E%FB%F3%F2%B1%1B%8DWU%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*UiU%C7%BBe%E7%F3%B9%CB%AAJ%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5J%95*U%AAT%A9R%A5*%AAj%FD%C6%D4%5Eo%90%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5%86%AF%1B%9F%98%DA%EBm%BBV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%ADV%AB%D5j%B5Z%AD%D6%E4%F58%01%00%00%00%00%00%00%00%00%00%00%00%00%00%40%85%7F%02%0C%008%C2%D0H%16j%8FX%00%00%00%00IEND%AEB%60%82") repeat-x !important;

    border-top: 1px solid #BBBBBB !important;

    border-right: 1px dashed #BBBBBB !important;

    border-bottom: 1px solid #000000 !important;

}



.firebugRulerV {

    top: 0 !important;

    left: -15px !important;

    width: 14px !important;

    height: 100% !important;

    background: url("data:image/png,%89PNG%0D%0A%1A%0A%00%00%00%0DIHDR%00%00%00%0E%00%00%13%88%08%02%00%00%00%0E%F5%CB%10%00%00%00%04gAMA%00%00%D6%D8%D4OX2%00%00%00%19tEXtSoftware%00Adobe%20ImageReadyq%C9e%3C%00%00%06~IDATx%DA%EC%DD%D1v%A20%14%40Qt%F1%FF%FF%E4%97%D9%07%3BT%19%92%DC%40(%90%EEy%9A5%CB%B6%E8%F6%9Ac%A4%CC0%84%FF%DC%9E%CF%E7%E3%F1%88%DE4%F8%5D%C7%9F%2F%BA%DD%5E%7FI%7D%F18%DDn%BA%C5%FB%DF%97%BFk%F2%10%FF%FD%B4%F2M%A7%FB%FD%FD%B3%22%07p%8F%3F%AE%E3%F4S%8A%8F%40%EEq%9D%BE8D%F0%0EY%A1Uq%B7%EA%1F%81%88V%E8X%3F%B4%CEy%B7h%D1%A2E%EBohU%FC%D9%AF2fO%8BBeD%BE%F7X%0C%97%A4%D6b7%2Ck%A5%12%E3%9B%60v%B7r%C7%1AI%8C%BD%2B%23r%00c0%B2v%9B%AD%CA%26%0C%1Ek%05A%FD%93%D0%2B%A1u%8B%16-%95q%5Ce%DCSO%8E%E4M%23%8B%F7%C2%FE%40%BB%BD%8C%FC%8A%B5V%EBu%40%F9%3B%A72%FA%AE%8C%D4%01%CC%B5%DA%13%9CB%AB%E2I%18%24%B0n%A9%0CZ*Ce%9C%A22%8E%D8NJ%1E%EB%FF%8F%AE%CAP%19*%C3%BAEKe%AC%D1%AAX%8C*%DEH%8F%C5W%A1e%AD%D4%B7%5C%5B%19%C5%DB%0D%EF%9F%19%1D%7B%5E%86%BD%0C%95%A12%AC%5B*%83%96%CAP%19%F62T%86%CAP%19*%83%96%CA%B8Xe%BC%FE)T%19%A1%17xg%7F%DA%CBP%19*%C3%BA%A52T%86%CAP%19%F62T%86%CA%B0n%A9%0CZ%1DV%C6%3D%F3%FCH%DE%B4%B8~%7F%5CZc%F1%D6%1F%AF%84%F9%0F6%E6%EBVt9%0E~%BEr%AF%23%B0%97%A12T%86%CAP%19%B4T%86%CA%B8Re%D8%CBP%19*%C3%BA%A52huX%19%AE%CA%E5%BC%0C%7B%19*CeX%B7h%A9%0C%95%E1%BC%0C%7B%19*CeX%B7T%06%AD%CB%5E%95%2B%BF.%8F%C5%97%D5%E4%7B%EE%82%D6%FB%CF-%9C%FD%B9%CF%3By%7B%19%F62T%86%CA%B0n%D1R%19*%A3%D3%CA%B0%97%A12T%86uKe%D0%EA%B02*%3F1%99%5DB%2B%A4%B5%F8%3A%7C%BA%2B%8Co%7D%5C%EDe%A8%0C%95a%DDR%19%B4T%C66%82fA%B2%ED%DA%9FC%FC%17GZ%06%C9%E1%B3%E5%2C%1A%9FoiB%EB%96%CA%A0%D5qe4%7B%7D%FD%85%F7%5B%ED_%E0s%07%F0k%951%ECr%0D%B5C%D7-g%D1%A8%0C%EB%96%CA%A0%A52T%C6)*%C3%5E%86%CAP%19%D6-%95A%EB*%95q%F8%BB%E3%F9%AB%F6%E21%ACZ%B7%22%B7%9B%3F%02%85%CB%A2%5B%B7%BA%5E%B7%9C%97%E1%BC%0C%EB%16-%95%A12z%AC%0C%BFc%A22T%86uKe%D0%EA%B02V%DD%AD%8A%2B%8CWhe%5E%AF%CF%F5%3B%26%CE%CBh%5C%19%CE%CB%B0%F3%A4%095%A1%CAP%19*Ce%A8%0C%3BO*Ce%A8%0C%95%A12%3A%AD%8C%0A%82%7B%F0v%1F%2FD%A9%5B%9F%EE%EA%26%AF%03%CA%DF9%7B%19*Ce%A8%0C%95%A12T%86%CA%B8Ze%D8%CBP%19*Ce%A8%0C%95%D1ae%EC%F7%89I%E1%B4%D7M%D7P%8BjU%5C%BB%3E%F2%20%D8%CBP%19*Ce%A8%0C%95%A12T%C6%D5*%C3%5E%86%CAP%19*Ce%B4O%07%7B%F0W%7Bw%1C%7C%1A%8C%B3%3B%D1%EE%AA%5C%D6-%EBV%83%80%5E%D0%CA%10%5CU%2BD%E07YU%86%CAP%19*%E3%9A%95%91%D9%A0%C8%AD%5B%EDv%9E%82%FFKOee%E4%8FUe%A8%0C%95%A12T%C6%1F%A9%8C%C8%3D%5B%A5%15%FD%14%22r%E7B%9F%17l%F8%BF%ED%EAf%2B%7F%CF%ECe%D8%CBP%19*Ce%A8%0C%95%E1%93~%7B%19%F62T%86%CAP%19*Ce%A8%0C%E7%13%DA%CBP%19*Ce%A8%0CZf%8B%16-Z%B4h%D1R%19f%8B%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1%A2%A52%CC%16-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2EKe%98-Z%B4h%D1%A2EKe%D02%5B%B4h%D1%A2EKe%D02%5B%B4h%D1%A2E%8B%96%CA0%5B%B4h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%16-%95a%B6h%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-Z*%C3l%D1%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z%B4T%86%D9%A2E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4h%A9%0C%B3E%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%D1R%19f%8B%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1%A2%A52%CC%16-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2EKe%98-Z%B4h%D1%A2EKe%D02%5B%B4h%D1%A2EKe%D02%5B%B4h%D1%A2E%8B%96%CA0%5B%B4h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%16-%95a%B6h%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-Z*%C3l%D1%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z%B4T%86%D9%A2E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4h%A9%0C%B3E%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%A9%0CZf%8B%16-Z%B4h%D1R%19f%8B%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1R%19%B4%CC%16-Z%B4h%D1%A2%A52%CC%16-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2%A52h%99-Z%B4h%D1%A2EKe%98-Z%B4h%D1%A2EKe%D02%5B%B4h%D1%A2EKe%D02%5B%B4h%D1%A2E%8B%96%CA0%5B%B4h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%96%CA%A0e%B6h%D1%A2E%8B%16-%95a%B6h%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-%95A%CBl%D1%A2E%8B%16-Z*%C3l%D1%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z*%83%96%D9%A2E%8B%16-Z%B4T%86%D9%A2E%8B%16-Z%B4T%06-%B3E%8B%16-Z%B4%AE%A4%F5%25%C0%00%DE%BF%5C'%0F%DA%B8q%00%00%00%00IEND%AEB%60%82") repeat-y !important;

    border-left: 1px solid #BBBBBB !important;

    border-right: 1px solid #000000 !important;

    border-bottom: 1px dashed #BBBBBB !important;

}



.overflowRulerX > .firebugRulerV {

    left: 0 !important;

}



.overflowRulerY > .firebugRulerH {

    top: 0 !important;

}



/* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * */

.fbProxyElement {

    position: fixed !important;

    pointer-events: auto !important;

}

</style></head>
    <body class="w1190"><script id="tb-beacon-aplus" src="//g.alicdn.com/alilog/mlog/aplus_v2.js" exparams="category=&amp;userid=&amp;aplus&amp;yunid=&amp;ee47e3bbe8957&amp;trid=&amp;asid=AQAAAADZnWtY8o+8CQAAAADxsa1/SbsY+g=="></script><div class="ks-suggest-container" style="position:absolute;visibility:hidden"><div class="ks-suggest-content"></div><div class="ks-suggest-footer"></div></div><script id="tb-beacon-aplus" src="detail_files/aplus_v2.js" exparams="category=&amp;userid=&amp;aplus&amp;yunid=&amp;ee47e3bbe8957&amp;trid=&amp;asid=AQAAAADZnWtY8o+8CQAAAADxsa1/SbsY+g=="></script><script>
with(document)with(body)with(insertBefore(createElement("script"),firstChild))setAttribute("exparams","category=&userid=&aplus&yunid=&ee47e3bbe8957&trid=&asid=AQAAAADZnWtY8o+8CQAAAADxsa1/SbsY+g==",id="tb-beacon-aplus",src=(location>"https"?"//g":"//g")+".alicdn.com/alilog/mlog/aplus_v2.js")
</script>

		<script>(function(){var a=document.body;window.screen.width>1024?a.className="w1190":a.className="w990"})();</script>
		



<!-- S GLOBAL HTML -->
<div id="J_SiteNav" class="site-nav">
  <div id="J_SiteNavBd" class="site-nav-bd">
    <ul id="J_SiteNavBdL" class="site-nav-bd-l"><li id="J_LoginInfo" class="menu" data-spm="1997563269"><div id="J_LoginInfoHd" class="menu-hd"><a href="https://login.taobao.com/member/login.jhtml?f=top&amp;redirectURL=https%3A%2F%2F2.taobao.com%2Fitem.htm%3Fspm%3D2007.1000261.641120289.18.XLxcuk%26id%3D543024970627" target="_top" class="h">亲，请登录</a> <a href="https://reg.taobao.com/member/new_register.jhtml?from=tbtop&amp;ex_info=&amp;ex_sign=" target="_top">免费注册</a></div></li><li class="menu mobile" data-spm="1997563273"></li><li id="J_Weekend" class="menu weekend" data-spm="1996803849"></li></ul> 
  </div>
</div>
<!-- E GLOBAL HTML -->

<script>
TB.Global.init();
ABC.config({
    pageName: 'detail',
    pub: '1.6.9',
    path: '//g.alicdn.com/mtb/app-idle-pc/',
    charset: 'utf-8'
});
SecondHand.current = 'detail';
</script>

<div class="idle-header-wrap">
  <div class="idle-header" id="J_IdleHeader">
    <h1 class="idle-logo"><a href="http://2.taobao.com/" target="_top"><img src="detail_files/TB1ys1sHVXXXXcrXVXXL_ZfHFXX-208-46.png" alt="易淘" width="208" height="46"></a></h1>

    <div class="idle-nav">
      <div class="idle-menu">
        <ul>
          <li class="m-home"><a href="https://2.taobao.com/">首页</a></li>
          <li class="m-app"><a href="https://2.taobao.com/app/index">手机二手</a></li>
          <li><a href="https://www.taobao.com/markets/paimai/usedcar">二手车估价</a></li>
          <li class="m-auction"><a href="https://2.taobao.com/auction/list">降降降</a></li>
        </ul>
      </div>

      <div class="idle-manage">
        <span class="idle-manage-sp">|</span>
        <ul>
          <li><a class="pub-overlay-btn">发布闲置</a></li>
          <li id="J_IdleLi" class="my-idle-li">
            <a class="my-idle-link" id="J_IdleLink" href="https://trade.2.taobao.com/">我的闲置<i class="iconfont icon-down"></i><i class="iconfont icon-up"></i></a>
          </li>
        </ul>
      </div>
    </div>

    <div class="idle-search">
      <form method="get" action="//s.2.taobao.com/list/list.htm" name="search" target="_top">
        <input class="input-search" id="J_HeaderSearchQuery" name="q" placeholder="搜易淘" autocomplete="off" type="text">
        <input name="search_type" value="item" autocomplete="off" type="hidden">
        <input name="app" value="shopsearch" autocomplete="off" type="hidden">
        <button class="btn-search" type="submit"><i class="iconfont"></i><span class="search-img"></span></button>
      </form>
    </div>
  </div>
</div>

<script>
KISSY.use('widget/header5/index');
</script>


		<div id="content">
			<div id="page">
                <div id="idle-detail" data-token="ee47e3bbe8957">
    <div class="top-nav clearfix">
    <div class="others-wrap">
    	<ul class="others clearfix">

    		            <li id="J_Browse" data-url="//count.taobao.com/counter3?keys=ICVT_7_543024970627&amp;inc=ICVT_7_543024970627&amp;sign=18230e7bf5c97be207de43c689cfccb35f2b5" data-key="ICVT_7_543024970627">
    			<h5>宝贝浏览次数</h5>
    			<span>8538</span>
    		</li>
    		<li><h5>最近编辑</h5><span>${commodity.cdate} </span></li>
			                <li class="tn-item-from"><a target="_blank" href="https://www.taobao.com/market/2/new-fish.php"><h5>来自</h5><p class="tn-item-icon"></p></a></li>
			        </ul>
	</div>
	<div class="seller-info" id="J_SellerInfo" data-url="//2.taobao.com/itemref/trade_ratting.htm?uid=UOFkyOmkSMCIT">
        <div class="simple" data-spm="2007.1000338.1">
            <div class="avatar"><img src="detail_files/getAvatar.jpg"></div>
			<div class="wangwang">
                <a href="https://2.taobao.com/credit/credit.htm?userIdCode=UOFkyOmkSMCIT" class="hCard fn" target="_blank">${commodity.cusername}</a>
            </div>
			<div class="user-icons">
                <span title="已通过实名认证" class="user-verify"></span>
                <span title="vip6" class="vip-level  vip-level6" rel="nofollow"></span>
            </div>
			<b class="arrow-wrap"><i class="arrow"></i></b>
        </div>
		<div class="details"> </div>
        <textarea id="J_SellerTPL" class="hidden" data-spm="2007.1000338.2">            &lt;div class="basic-info"&gt;
                &lt;p&gt;昆明 男&lt;/p&gt;
                &lt;p&gt;注册时间：2008-04-19&lt;/p&gt;
            &lt;/div&gt;
            &lt;div class="seller-rate"&gt;
                &lt;h4&gt;转卖&lt;strong&gt; {soldCount} 
&lt;/strong&gt;笔，&lt;strong&gt; {rateCount} 
&lt;/strong&gt;人评价&lt;/h4&gt;
                &lt;ul class="parameter"&gt;
                    &lt;li&gt;&lt;span&gt;靠谱度：&lt;/span&gt;&lt;strong 
class="high"&gt;{kpdValue}&lt;/strong&gt; 分&lt;span 
class="high"&gt;&nbsp;&nbsp;{kpdDesc}&lt;/span&gt;&lt;/li&gt;
                    &lt;li&gt;&lt;span&gt;性价比：&lt;/span&gt;&lt;strong 
class="high"&gt;{xjbValue}&lt;/strong&gt; 分&lt;span 
class="high"&gt;&nbsp;&nbsp;{xjbDesc}&lt;/span&gt;&lt;/li&gt;
                &lt;/ul&gt;
            &lt;/div&gt;
            &lt;div class="check-more"&gt;
                &lt;a class="check-info" 
href="//2.taobao.com/credit/credit.htm?userIdCode=UOFkyOmkSMCIT" 
target="_blank"&gt;查看卖家信息&lt;/a&gt;
                &lt;b class="arrow-wrap"&gt;&lt;i 
class="arrow"&gt;&lt;/i&gt;&lt;/b&gt;
            &lt;/div&gt;
        </textarea>
    </div>
	 
</div>    <div class="layout grid-s730m0">
        <div class="col-main">
            <div class="main-wrap">
                <div class="property" id="J_Property">
    <h1 class="title">${commodity.cname}</h1>
    <ul class="price-info">
        <li class="price-block">
            <span class="para">转&nbsp;&nbsp;卖&nbsp;&nbsp;价：</span>
            <span class="price big"><b>&#165;</b><em>${commodity.cprice}</em></span>
	    	<span class="bargain-tip">
               <i class="i-tip"></i>该商品拒绝讲价！
            </span></li>
	</ul>
    <ul class="idle-info" data-spm="2007.1000338.3">
		<li>
    		 <span class="para">成　　色：</span>
             <em>非全新</em>
        </li>
        <li>
            <span class="para">所&nbsp;&nbsp;在&nbsp;&nbsp;地：</span>
            <em>${commodity.caddress}</em>
        </li>
					<li class="contact">
                <span class="para">联系方式：</span>
    			    							<div style="display:none">
                    <span class="ww-light ww-large" data-nick="yubaiq" data-icon="large"><a href="https://amos.alicdn.com/getcid.aw?v=3&amp;groupid=0&amp;s=1&amp;charset=utf-8&amp;uid=yubaiq&amp;site=cntaobao&amp;groupid=0&amp;s=1&amp;fromid=cntaobaoAufnyGq1kDfaTK5QnYcrTRABdxSxR7tK" target="_blank" class="ww-inline ww-online" title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。"><span>旺旺在线</span></a></span>
                </div>
                <div>
                    <a href="https://trade.2.taobao.com/dialog.htm?peeruserid=UOFkyOmkSMCIT&amp;itemid=543024970627" class="toDialog" target="_blank">与ta对话</a>
                </div>
            </li>
            <li class="trade-terms" id="J_TradeWrap">
                <span class="para">交易方式：</span>
    			    				<a href="#"><span data-term="0" class="J_Term term">线下交易</span><i></i></a>
				    </li><li id="J_Freight" class="freight">
                        <a id="J_Region" class="region" href="#" data-default="430400">
        					至 <em id="J_RegionName">湖南衡阳</em><i></i>
                        </a>
                        <span id="J_Carriage" class="fee" data-url="//delivery.taobao.com/detail/delivery_detail.do?itemId=543024970627">快递:免运费</span>
                    </li>
    			            
		    </ul>
	    	<div class="buy-now" data-spm="2007.1000338.4">
    <a id="J_BuyNow" style=" background-image:url(detail_files/images/buynow.jpg); background-repeat:no-repeat;" class="btn" href="#">立刻购买</a>
</div>
<form id="J_FrmBid" action="//buy.2.taobao.com/buy/buy_now.jhtml" method="post">
	<input id="J_ItemNumId" name="item_num_id" value="543024970627" type="hidden">
	<input id="J_TradeTermInput" name="idle_trade_style" value="" type="hidden">
	<input name="item_id_num" value="543024970627" type="hidden">
	<input name="item_id" value="543024970627" type="hidden">
	<input name="auction_id" value="543024970627" type="hidden">
	<input name="auction_type" value="b" type="hidden">
	<input name="title" value="iPad 4 16G Wi-Fi版" type="hidden">
	<input name="seller_id" value="UOFkyOmkSMCIT" type="hidden">
	<input name="allow_quantity" value="1" type="hidden">
	<input name="seller_nickname" value="" type="hidden">
	<input name="from" value="idleDetail" type="hidden">
	<input name="current_price" value="1399.00" type="hidden">
	<input name="buy_now" value="" type="hidden">
	<input name="photo_url" value="" type="hidden">
	<input name="quantity" value="1" type="hidden">
	<input name="_tb_token_" value="ee47e3bbe8957" type="hidden">
</form>

<div id="J_BargainContent" class="hidden">
    <div class="hd">议价</div>
    <div class="bd">
        <p class="tip">议价有效期为24小时，如果卖家同意您的出价，系统将自动创建订单并短信通知您。</p>
		<div class="control-group">
			<label for="price" class="control-label">诚心以：</label>
			<div class="controls">
				<input id="price" name="price" class="input" type="text"> 元（不含运费）的价格入手该宝贝
			</div>
		</div>
		<div class="control-group">
			<label for="phone" class="control-label">手机号：</label>
			<div class="controls">
				<input id="phone" name="phone" class="input" type="text">
				<span>请留下手机号，方便订单生成后及时通知您</span>
			</div>
		</div>
		<div class="control-group">
			<label for="message" class="control-label">诚心以：</label>
			<div class="controls">
				<textarea name="" id="message"></textarea>
			</div>
		</div>
	</div>
</div>    	    	    	
        <div class="do-more clearfix" data-spm="2007.1000338.5">
            <div class="share" id="J_Share" data-comment="矮油，不错哦！在易淘二手发现个挺靠谱的闲置宝贝，只卖1399.00元。你们帮我参谋参谋，如何？" data-url="//count.taobao.com/counter3?keys=DFX_200_1_543024970627" data-count="//2.taobao.com/activity/grantPoints.htm?type=1&amp;_tb_token_=ee47e3bbe8957" data-key="DFX_200_1_543024970627">
                <a class="btn" href="#">分享（<em class="J_ShareCount">1</em>）</a>
            </div>
            <div class="favorite" data-url="//count.taobao.com/counter3?keys=ICCP_1_543024970627" data-key="ICCP_1_543024970627">
               <a class="btn" id="J_AddFav" data-url="//trade.2.taobao.com/care_item.htm?id=543024970627&amp;_tb_token_=ee47e3bbe8957" href="javascript:void(0);">赞（<em>25</em>）</a>
				              </div>
        </div>
		 <div class="guarantee_new">
    </div>
	</div>                <div id="J_OtherIdles" data-spm="2007.1000338.6" class="idle-box other-idles" data-url="//2.taobao.com/itemref/more_onsale.htm?userNick=yubaiq&amp;id=543024970627">   
</div>            </div>
        </div>
        <div class="col-sub">
            
<div id="J_Slider" class="slider" data-spm="2007.1000338.7">
		<ul class="album" style="position: absolute; width: 999999px; left: -730px;">		
        			<li class="item sh-pic ks-switchable-panel-internal99" style="display: block; float: left;">

    					 <a href="javascript:void(0);">
							<img class="big-img" src="detail_files/images/212378-106.jpg" lazyload-img="true">
															<div class="mau-guide">
									<img class="guide-img" src="detail_files/images/6.jpg" style="visibility: visible;">
									<img class="close-img" src="detail_files/images/6.jpg">
								</div>							
						 </a>			 
                	</li>			
        			<li class="item sh-pic ks-switchable-panel-internal99" style="display: block; float: left;">

    					 <a href="javascript:void(0);">

							<img class="big-img" src="detail_files/images/6.jpg" lazyload-img="">		
						 </a>				 
                	</li>
    		
        			<li class="item sh-pic ks-switchable-panel-internal99" style="display: block; float: left;">
    					 <a href="javascript:void(0);">
							<img class="big-img" src="detail_files/space.gif" lazyload-img="//img.alicdn.com/bao/uploaded/i4/6000000006491/TB2Wl6wX4tmpuFjSZFqXXbHFpXa_!!0-fleamarket.jpg_728x728.jpg">							
						 </a>						 
                	</li>	
        			<li class="item sh-pic ks-switchable-panel-internal99" style="display: block; float: left;">

    					 <a href="javascript:void(0);">

							<img class="big-img" src="detail_files/space.gif" lazyload-img="//img.alicdn.com/bao/uploaded/i4/6000000005039/TB2eqBkX8NkpuFjy0FaXXbRCVXa_!!0-fleamarket.jpg_728x728.jpg">						
						 </a>					 
                	</li>   			
        			<li class="item sh-pic ks-switchable-panel-internal99" style="display: block; float: left;">
    					 <a href="javascript:void(0);">
							<img class="big-img" src="detail_files/space.gif" lazyload-img="//img.alicdn.com/bao/uploaded/i1/6000000006530/TB2vH0kX8NkpuFjy0FaXXbRCVXa_!!0-fleamarket.jpg_728x728.jpg">
						 </a>					 
                	</li> 
        </ul>

		
		<div id="J_Thumbs" class="thumbs-wrapper">

			<div class="thumb-list">

                <ul class="thumbs clearfix">
			
                			<li class="sh-pic ks-switchable-trigger-internal98">

            					 <a href="javascript:void(0);">

        							<img class="small-img" src="detail_files/images/1.jpg">

        						 </a>

                        	</li>
                			<li class="sh-pic  ks-switchable-trigger-internal98 selected">

            					 <a href="javascript:void(0);">

        							<img class="small-img" src="detail_files/images/1.jpg">

        						 </a>

                        	</li>		
                			<li class="sh-pic  ks-switchable-trigger-internal98">

            					 <a href="javascript:void(0);">

        							<img class="small-img" src="detail_files/images/2.jpg">

        						 </a>

                        	</li>
                			<li class="sh-pic  ks-switchable-trigger-internal98">

            					 <a href="javascript:void(0);">

        							<img class="small-img" src="detail_files/images/3.jpg">

        						 </a>

                        	</li>
                			<li class="sh-pic  ks-switchable-trigger-internal98">

            					 <a href="javascript:void(0);">

        							<img class="small-img" src="detail_files/images/4.jpg" >

        						 </a>

                        	</li>
                </ul>

			</div>

		</div>

	
</div>

            <div id="J_IdleDesc" class="idle-desc">
    <div class="hidden" id="J_TabbarPlaceHolder" style="height: 44px;width:1px;padding: 0;"></div><div id="J_ItemTab">
        <div class="list-tabs" data-spm="2007.1000338.8">
            <ul>
                <li class="J_TabTrigger tabnavfirst actived ks-switchable-trigger-internal212"><a href="#desc-intro">宝贝介绍</a></li>
                
                <!--li class="J_TabTrigger" id="J_MSCount" data-key="101_543024970627" data-url="//comment.jianghu.taobao.com/json/commentCount.htm?keys=101_543024970627">
					<a href="#message" id="messages" name="messages">留言（<span>0</span>）</a>
				</li-->
				<li class="J_TabTrigger ks-switchable-trigger-internal212">
					<a href="#message" id="messages" name="messages">留言</a>
				</li>
                <li class="J_TabTrigger ks-switchable-trigger-internal212"><a href="#guarantee">安全保障</a></li>
            </ul>
        </div>
    </div>
    <div class="security-tip">
		如遇到以下情况可能是诈骗行为：<span class="h">1.宝贝价格异常低；</span><span class="h">2.卖家要求QQ沟通；</span><span class="h">3.卖家要求直接汇款。</span>
		<a href="https://bangpai.taobao.com/group/thread/92194-270443602.htm?tracelog=jiankong-idledetail" target="_blank">寻求防骗经验</a>。
    </div>

    <div id="desc-intro" class="J_Panel desc-mod desc-intro ks-switchable-panel-internal213">
        <h2><b>宝贝介绍</b></h2>
							<div class="intro-para clearfix">
								<ul>
    				    												<li>
        						<span class="title">品牌</span>
        						<span>other/其他</span>
							</li>
						    								</ul>
				<ul>
    				    					    								</ul>
            </div>
				<div data-url="//osdsc.alicdn.com/i2/540/020/543024970627/TB1rRzmOFXXXXcrXpXX8qtpFXlX.desc%7Cvar%5Edesc%3Bsign%5Efac406d249d759b8aaeffe7ff06f6b0e%3Blang%5Egbk%3Bt%5E1481597963" class="describe" id="J_DescContent">外观成色九八新！机器成色98新！机器没任何问题！没任何暗病</div>
		
      
	
    <div id="message" class="J_Panel desc-mod message ks-switchable-panel-internal213" data-spm="2007.1000338.11">
        <h2><b>留言</b></h2>
 <div class="cmt-list-wrap"><div class="cmt-list">
    
    <div class="cmt-item clearfix" data-cmtid="1466106949" data-nick="w**********7" data-userid="0">
         <ul class="classlist">
        <table width="80%"  align="center" id="commentContent">   
          <tr>
            <td colspan="6"><hr />
            </td>
          </tr>
        </table>
      </ul>
      <ul class="classlist">
        <form onsubmit="return check()" id="commentForm">
          <table width="80%" align="center">
            <tr>
              <td> 评 论 </td>
            </tr>
            <tr>
              <td> 用户名： </td>
              <td><input id="cauthor" name="cauthor" placeholder="请输入用户名" required="required"/>
                IP：
                <input name="cip" value="${clientIP }" readonly="readonly"/>
              </td>
            </tr>
            <tr>
              <td colspan="2"><textarea id="ccontent" name="ccontent" cols="70" rows="10"></textarea></td>
            </tr>
            <tr>
              <td><input name="submit" value="发  表" type="submit" /></td>
            </tr>
          </table>
        </form>
      </ul>
    </div>
    
</div>
<div class="cmt-pager" id="cmt-pager-container"><span class="pagination-start"><span>上一页</span></span><span class="pagination-curr">1</span><span class="pagination-end"><span>下一页</span></span></div></div></div>
		<input id="J_Token" name="_tb_token_" value="ee47e3bbe8957" type="hidden">
    </div>
    <div id="guarantee" class="J_Panel desc-mod guarantee ks-switchable-panel-internal213">
    <h2><b>安全保障</b></h2>
    <h3 class="title">二手交易消费者安全保障服务</h3>
    <ul>
        <li class="first">
            <b class="icon"></b>
            <div class="intro">
                <h4>卖家实名认证</h4>
                <p>易淘二手卖家必备网络身份证；<br>经支付宝核实会员身份信息和银行账户信息。</p>
            </div>
            <b class="arrow"></b>
            <div class="addon">真实.可靠.网络身份证</div>
        </li>
        <li class="second">
            <b class="icon"></b>
            <div class="intro">
                <h4>专业团队支撑</h4>
                <p>发现可疑卖家或商品，发起举报，由安全部门专员介入处理交易出现纠纷，双方协商不成，由专业的客服小二介入仲裁。</p>
            </div>
            <b class="arrow"></b>
            <div class="addon">专业.精英.全方位支持</div>
        </li>
        <li class="third">
            <b class="icon"></b>
            <div class="intro">
                <h4>支付宝担保交易</h4>
                <p>支付款项由支付宝先行保管，验货OK后，再确认付款到卖家账户，买家发起交易，杜绝钓鱼网站。</p>
            </div>
            <b class="arrow"></b>
            <div class="addon">收货.验货.满意再付款</div>
        </li>
		
    </ul>
</div></div>        </div>
    </div>
	                                          	</div>

            </div>
        </div>
        <div id="J_SideBar" class="sidebar" style="left: 1269.5px;">
            <div id="J_GoTop" class="scroll-top" style="visibility: hidden;">
                <a href="javascript:void(0);"><span>返回顶部</span></a>
            </div>
            <a id="J_Advice" class="advice-sidebar" href="https://ur.taobao.com/survey/view.htm?id=891" target="_blank">建议反馈</a>
        </div>
		<script type="text/javascript">
			KISSY.config({combine:true});
   	 		KISSY.use('page/detail');
		</script>
		<script src="detail_files/c.php" language="JavaScript"></script>
				<!--
<div class="sh-footer" data-spm="2007.1000261.99">

    <div class="logo-wrapper">
        <div class="logo">易淘二手</div>
    </div>
    <div class="qualifications">
        <div class="icon auth">卖家实名认证</div>
        <div class="icon alipay">支付宝担保交易</div>
        <div class="icon group">专业团队支撑</div>
        <div class="icon weibo">官方微博</div>
        <a href="//trade.2.taobao.com/recycle/index.htm" target="_blank"><div class="icon recyclers">回收商入驻</div></a>
    </div>

</div>
-->
<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1252911424'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "w.cnzz.com/q_stat.php%3Fid%3D1252911424' type='text/javascript'%3E%3C/script%3E"));</script><span id="cnzz_stat_icon_1252911424"></span><script src="detail_files/q_stat.php" type="text/javascript"></script><span id="cnzz_stat_icon_1252911424"></span><script src="detail_files/q_stat.txt" type="text/javascript"></script>

<!--token-->
<input id="J_tb_Token" name="_tb_token_" value="ee47e3bbe8957" type="hidden">

<div class="idle-footer" id="J_IdleFooter">
  <div class="idle-footer-info">
    <div class="idle-footer-download">
      <span class="idle-footer-slogan"><img src="detail_files/TB1naO0IFXXXXXsXFXXIU.png" alt="闲置能换钱" width="299"></span>
       
       
      <span class="idle-qrcode"><img src="detail_files/TB1nbl3HVXXXXaKXFXX07tlTXXX-200-200.png" alt="易淘" width="130" height="130"></span>
    </div>
    
  </div>
</div>
<div class="footer-idle-new footer-with-logo" id="J_SiteFooter" data-spm="1997523009" data-spm-max-idx="44">
   
       
  <div class="footer-bd">
    <p>
      <span>
        <a href="https://www.taobao.com/about?spm=a21bo.50862.1997523009.23.0kiejZ" data-spm-anchor-id="a21bo.50862.1997523009.23">
          关于易淘
        </a>
      </span>
      <span>
        <a href="https://www.taobao.com/about/partners.php?spm=a21bo.50862.1997523009.24.0kiejZ" data-spm-anchor-id="a21bo.50862.1997523009.24">
          合作伙伴
        </a>
      </span>
      <span>
        <a href="https://pro.taobao.com/?spm=a21bo.50862.1997523009.25.0kiejZ" data-spm-anchor-id="a21bo.50862.1997523009.25">
          营销中心
        </a>
      </span>
      <span>
        <a href="http://jubao.alibaba.com/?spm=a21bo.50862.1997523009.26.0kiejZ" data-spm-anchor-id="a21bo.50862.1997523009.26">
          廉正举报
        </a>
      </span>
      <span>
        <a href="https://service.taobao.com/support/main/service_route.htm?spm=a21bo.50862.1997523009.27.0kiejZ" data-spm-anchor-id="a21bo.50862.1997523009.27">
          联系客服
        </a>
      </span>
      <span>
        <a href="https://open.taobao.com/?spm=a21bo.50862.1997523009.28.0kiejZ" data-spm-anchor-id="a21bo.50862.1997523009.28">
          开放平台
        </a>
      </span>
      <span>
        <a href="https://www.taobao.com/about/join.php?spm=a21bo.50862.1997523009.29.0kiejZ" data-spm-anchor-id="a21bo.50862.1997523009.29">
          诚征英才
        </a>
      </span>
      <span>
        <a href="https://www.taobao.com/about/contact.php?spm=a21bo.50862.1997523009.30.0kiejZ" data-spm-anchor-id="a21bo.50862.1997523009.30">
          联系我们
        </a>
      </span>
       
      <span>
        <a href="https://www.taobao.com/go/chn/tb-fp/2014/law.php?spm=a21bo.50862.1997523009.32.0kiejZ" data-spm-anchor-id="a21bo.50862.1997523009.32">
          法律声明
        </a>
      </span>
      <span>
        <a href="http://ipp.alibabagroup.com/?spm=a21bo.50862.1997523009.33.0kiejZ" data-spm-anchor-id="a21bo.50862.1997523009.33">
          知识产权
        </a>
      </span>
      <b>
        |
      </b>
      <em>
        2003-2016 Taobao.com 版权所有
      </em>
    </p>
    <p>
      <span>
        网络文化经营许可证：
        <a href="https://img.alicdn.com/tps/i2/TB1YFcPLpXXXXaiXFXXcaDpFFXX-803-473.png" data-spm-anchor-id="a21bo.50862.1997523009.34">
          浙网文[2013]0268-027号
        </a>
      </span>
      <b>
        |
      </b>
      <span>
        增值电信业务经营许可证：
        <a href="http://zcainfo.miitbeian.gov.cn/state/outPortal/loginPortal.action?spm=a21bo.50862.1997523009.35.0kiejZ&amp;file=loginPortal.action" data-spm-anchor-id="a21bo.50862.1997523009.35">
          浙B2-20080224
        </a>
      </span>
      <b>
        |
      </b>
      <span>
        信息网络传播视听节目许可证：1109364号
      </span>
      <b>
        |
      </b>
      <span>
        互联网违法和不良信息举报电话:0571-81683755 blxx@list.alibaba-inc.com
      </span>
    </p>
  </div>
  <div class="footer-ft">
    <span>
      <a target="_blank" href="http://www.pingpinganan.gov.cn/?spm=a21bo.50862.1997523009.36.0kiejZ" class="mod" style="background-position: 0px 0px;width:36px;background-image:url(//img.alicdn.com/tps/i1/T1FeW3XXNfXXXXXXXX-36-36.gif);" data-spm-anchor-id="a21bo.50862.1997523009.36">
      </a>
    </span>
    <span>
      <a target="_blank" href="http://idinfo.zjaic.gov.cn/bscx.do?spm=a21bo.50862.1997523009.37.0kiejZ&amp;method=hddoc&amp;id=33018400000067" class="mod" style="background-position: 0px 0px;width:30px;" data-spm-anchor-id="a21bo.50862.1997523009.37">
      </a>
    </span>
    <span>
      <a target="_blank" href="http://idinfo.zjaic.gov.cn/bscx.do?spm=a21bo.50862.1997523009.38.0kiejZ&amp;method=hddoc&amp;id=33018400000067" class="mod" style="background-position: -40px 0px;width:33px;" data-spm-anchor-id="a21bo.50862.1997523009.38">
      </a>
    </span>
    <span>
      <a target="_blank" href="http://www.theclimategroup.org.cn/about/friend?spm=a21bo.50862.1997523009.39.0kiejZ" class="mod" style="background-position: -80px 0px;width:50px;" data-spm-anchor-id="a21bo.50862.1997523009.39">
      </a>
    </span>
    <span>
      <a target="_blank" href="https://ss.knet.cn/verifyseal.dll?spm=a21bo.50862.1997523009.40.0kiejZ&amp;sn=2010062300100001357&amp;pa=20100701" class="mod" style="background-position: -140px 0px;width:83px;" data-spm-anchor-id="a21bo.50862.1997523009.40">
      </a>
    </span>
    <span>
      <a target="_blank" href="http://www.ppaaol.com/verifySite.do?spm=a21bo.50862.1997523009.41.0kiejZ&amp;id=1051" class="mod" style="background-position: -240px 0px;width:94px;" data-spm-anchor-id="a21bo.50862.1997523009.41">
      </a>
    </span>
    <span>
      <a target="_blank" href="http://www.12377.cn/?spm=a21bo.50862.1997523009.42.0kiejZ" class="mod" style="background-position: -431px 0px;width:214px;" data-spm-anchor-id="a21bo.50862.1997523009.42">
      </a>
    </span>
    <span>
      <a target="_blank" href="http://www.12377.cn/node_548446.htm?spm=a21bo.50862.1997523009.43.0kiejZ" class="mod" style="background-position: -650px 0px;width:105px;" data-spm-anchor-id="a21bo.50862.1997523009.43">
      </a>
    </span>
    <span>
      <a target="_blank" href="https://img.alicdn.com/tps/i2/TB1YFcPLpXXXXaiXFXXcaDpFFXX-803-473.png" class="mod" style="background-position: -345px 0px;width:82px;" data-spm-anchor-id="a21bo.50862.1997523009.44">
      </a>
    </span>
  </div>
</div>
<script>
  KISSY.use('widget/footer5/index');
</script>

<div id="server-num" align="center">idle010178007220.et2</div>

<div id="J_Feedback4bug" data-version-id="20038"></div>
   </div> </div></div>
    <script type="text/javascript" src= " js/jquery-2.1.3.min.js"  ></script>
    <script type="text/javascript" src="js/show.js"></script>
  </body></html>