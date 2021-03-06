.class public Lcom/inmobi/re/configs/Initializer;
.super Ljava/lang/Object;
.source "Initializer.java"


# static fields
.field public static final PRODUCT_MRAID:Ljava/lang/String; = "mraid"

.field public static final PRODUCT_RENDERING:Ljava/lang/String; = "rendering"

.field private static a:Landroid/content/Context;

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lcom/inmobi/re/configs/ConfigParams;

.field private static d:Lcom/inmobi/commons/cache/CacheController$Validator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/re/configs/Initializer;->a:Landroid/content/Context;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/re/configs/Initializer;->b:Ljava/util/Map;

    .line 23
    new-instance v0, Lcom/inmobi/re/configs/ConfigParams;

    invoke-direct {v0}, Lcom/inmobi/re/configs/ConfigParams;-><init>()V

    sput-object v0, Lcom/inmobi/re/configs/Initializer;->c:Lcom/inmobi/re/configs/ConfigParams;

    .line 24
    new-instance v0, Lcom/inmobi/re/configs/a;

    invoke-direct {v0}, Lcom/inmobi/re/configs/a;-><init>()V

    sput-object v0, Lcom/inmobi/re/configs/Initializer;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 40
    if-eqz p0, :cond_2

    sget-object v0, Lcom/inmobi/re/configs/Initializer;->a:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 41
    sget-object v0, Lcom/inmobi/re/configs/Initializer;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    sput-object p0, Lcom/inmobi/re/configs/Initializer;->a:Landroid/content/Context;

    .line 44
    invoke-static {p0}, Lcom/inmobi/re/configs/Initializer;->c(Landroid/content/Context;)V

    .line 46
    :try_start_0
    const-string v0, "rendering"

    sget-object v1, Lcom/inmobi/re/configs/Initializer;->b:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/re/configs/Initializer;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/cache/ProductConfig;->getData()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/re/configs/Initializer;->a(Ljava/util/Map;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    goto :goto_0

    .line 51
    :cond_2
    sget-object v0, Lcom/inmobi/re/configs/Initializer;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method static a(Ljava/util/Map;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 72
    sget-object v0, Lcom/inmobi/re/configs/Initializer;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/inmobi/re/configs/Initializer;->c(Landroid/content/Context;)V

    .line 74
    :try_start_0
    const-string v0, "AND"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "common"

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->populateToNewMap(Ljava/util/Map;Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    .line 75
    new-instance v1, Lcom/inmobi/re/configs/ConfigParams;

    invoke-direct {v1}, Lcom/inmobi/re/configs/ConfigParams;-><init>()V

    .line 76
    invoke-virtual {v1, v0}, Lcom/inmobi/re/configs/ConfigParams;->setFromMap(Ljava/util/Map;)V

    .line 77
    sput-object v1, Lcom/inmobi/re/configs/Initializer;->c:Lcom/inmobi/re/configs/ConfigParams;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 81
    :goto_0
    return v0

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string v1, "[InMobi]-[RE]-4.1.1"

    const-string v2, "Config couldn\'t be parsed"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    invoke-static {p0}, Lcom/inmobi/re/configs/Initializer;->a(Landroid/content/Context;)V

    .line 59
    :try_start_0
    const-string v0, "rendering"

    sget-object v1, Lcom/inmobi/re/configs/Initializer;->b:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/re/configs/Initializer;->d:Lcom/inmobi/commons/cache/CacheController$Validator;

    invoke-static {v0, p0, v1, v2}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    sget-object v0, Lcom/inmobi/re/configs/Initializer;->a:Landroid/content/Context;

    sget-object v1, Lcom/inmobi/re/configs/Initializer;->c:Lcom/inmobi/re/configs/ConfigParams;

    invoke-virtual {v1}, Lcom/inmobi/re/configs/ConfigParams;->getUID()Lcom/inmobi/commons/uid/UID;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/uid/UIDUtil;->getMap(Landroid/content/Context;Lcom/inmobi/commons/uid/UID;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/inmobi/re/configs/Initializer;->b:Ljava/util/Map;

    .line 68
    return-void
.end method

.method public static getConfigParams()Lcom/inmobi/re/configs/ConfigParams;
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/re/configs/Initializer;->b(Landroid/content/Context;)V

    .line 36
    :cond_0
    sget-object v0, Lcom/inmobi/re/configs/Initializer;->c:Lcom/inmobi/re/configs/ConfigParams;

    return-object v0
.end method

.method public static getMRAIDString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 87
    :try_start_0
    const-string v0, "mraid"

    sget-object v1, Lcom/inmobi/re/configs/Initializer;->a:Landroid/content/Context;

    sget-object v2, Lcom/inmobi/re/configs/Initializer;->b:Ljava/util/Map;

    new-instance v3, Lcom/inmobi/re/configs/Initializer$a;

    invoke-direct {v3}, Lcom/inmobi/re/configs/Initializer$a;-><init>()V

    invoke-static {v0, v1, v2, v3}, Lcom/inmobi/commons/cache/CacheController;->getConfig(Ljava/lang/String;Landroid/content/Context;Ljava/util/Map;Lcom/inmobi/commons/cache/CacheController$Validator;)Lcom/inmobi/commons/cache/ProductConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/cache/ProductConfig;->getRawData()Ljava/lang/String;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, v1, :cond_0

    .line 101
    :goto_0
    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 101
    :cond_0
    const-string v0, "var imIsObjValid=function(a){return\"undefined\"!=typeof a&&null!=a?!0:!1},imIsObjInvalid=function(a){return\"undefined\"==typeof a||null==a?!0:!1},EventListeners=function(a){this.event=a;this.count=0;var b={};this.add=function(a){var e=String(a);b[e]||(b[e]=a,this.count++)};this.remove=function(a){a=String(a);return b[a]?(b[a]=null,delete b[a],this.count--,!0):!1};this.removeAll=function(){for(var a in b)this.remove(b[a])};this.broadcast=function(a){for(var e in b)b[e].apply({},a)};this.toString=function(){var c=[a,\":\"],e;for(e in b)c.push(\"|\",e,\"|\");return c.join(\"\")}},InmobiObj=function(){this.listeners=[];this.addEventListener=function(a,b){try{if(imIsObjValid(b)&&imIsObjValid(a)){var c=this.listeners;c[a]||(c[a]=new EventListeners);c[a].add(b);\"micIntensityChange\"==a&&window.mraidview.startListeningMicIntensity()}}catch(e){this.log(e)}};this.removeEventListener=function(a,b){if(imIsObjValid(a)){var c=this.listeners;imIsObjValid(c[a])&&(imIsObjValid(b)?c[a].remove(b):c[a].removeAll());\"micIntensityChange\"==a&&0==c[a].count&&window.mraidview.stopListeningMicIntensity()}};this.broadcastEvent=function(a){if(imIsObjValid(a)){for(var b=Array(arguments.length),c=0;c<arguments.length;c++)b[c]=arguments[c];c=b.shift();try{this.listeners[c]&&this.listeners[c].broadcast(b)}catch(e){}}}},__im__iosNativeCall={nativeCallInFlight:!1,nativeCallQueue:[],executeNativeCall:function(a){this.nativeCallInFlight?this.nativeCallQueue.push(a):(this.nativeCallInFlight=!0,window.location=a)},nativeCallComplete:function(a){0==this.nativeCallQueue.length?this.nativeCallInFlight=!1:(a=this.nativeCallQueue.shift(),window.location=a)}},IOSNativeCall=function(){this.urlScheme=\"\";this.executeNativeCall=function(a){for(var b=this.urlScheme+\"://\"+a,c,e=!0,g=1;g<arguments.length;g+=2)c=arguments[g+1],null!=c&&(e?(b+=\"?\",e=!1):b+=\"&\",b+=arguments[g]+\"=\"+escape(c));__im__iosNativeCall.executeNativeCall(b);return\"OK\"};this.nativeCallComplete=function(a){__im__iosNativeCall.nativeCallComplete(a);return\"OK\"}};(function(){var a=window.mraidview={},b={allowOrientationChange:!0,forceOrientation:\"none\"},c=[],e=!1;a.fireGalleryImageSelectedEvent=function(a,d,b){var c=new Image;c.src=\"data:image/jpeg;base64,\"+a;c.width=d;c.height=b;window.mraid.broadcastEvent(\"galleryImageSelected\",c);return\"OK\"};a.fireCameraPictureCatpturedEvent=function(a,d,b){var c=new Image;c.src=\"data:image/jpeg;base64,\"+a;c.width=d;c.height=b;window.mraid.broadcastEvent(\"cameraPictureCaptured\",c);return\"OK\"};a.firePostStatusEvent=function(a){window.mraid.broadcastEvent(\"postStatus\",a);return\"OK\"};a.fireMediaTrackingEvent=function(a,d){var b={};b.name=a;var c=\"inmobi_media_\"+a;\"undefined\"!=typeof d&&(null!=d&&\"\"!=d)&&(c=c+\"_\"+d);window.mraid.broadcastEvent(c,b);return\"OK\"};a.fireMediaErrorEvent=function(a,d){var b={name:\"error\"};b.code=d;var c=\"inmobi_media_\"+b.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(c=c+\"_\"+a);window.mraid.broadcastEvent(c,b);return\"OK\"};a.fireMediaTimeUpdateEvent=function(a,d,b){var c={name:\"timeupdate\",target:{}};c.target.currentTime=d;c.target.duration=b;d=\"inmobi_media_\"+c.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(d=d+\"_\"+a);window.mraid.broadcastEvent(d,c);return\"OK\"};a.fireMediaCloseEvent=function(a,d,b){var c={name:\"close\"};c.viaUserInteraction=d;c.target={};c.target.currentTime=b;d=\"inmobi_media_\"+c.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(d=d+\"_\"+a);window.mraid.broadcastEvent(d,c);return\"OK\"};a.fireMediaVolumeChangeEvent=function(a,d,b){var c={name:\"volumechange\",target:{}};c.target.volume=d;c.target.muted=b;d=\"inmobi_media_\"+c.name;\"undefined\"!=typeof a&&(null!=a&&\"\"!=a)&&(d=d+\"_\"+a);window.mraid.broadcastEvent(d,c);return\"OK\"};a.showAlert=function(a){utilityController.showAlert(a)};a.zeroPad=function(a){var d=\"\";10>a&&(d+=\"0\");return d+a};a.useCustomClose=function(f){try{displayController.useCustomClose(f)}catch(d){a.showAlert(\"use CustomClose: \"+d)}};a.close=function(){try{displayController.close()}catch(f){a.showAlert(\"close: \"+f)}};a.stackCommands=function(a,d){e?c.push(a):(eval(a),d&&(e=!0))};a.executeStack=function(){for(e=!1;0<c.length;){var a=c.shift();eval(a)}};a.emptyStack=function(){for(;0<c.length;)c.shift()};a.expand=function(f){try{displayController.expand(f)}catch(d){a.showAlert(\"executeNativeExpand: \"+d+\", URL = \"+f)}};a.setExpandProperties=function(f){try{f?this.props=f:f=null,displayController.setExpandProperties(a.stringify(f))}catch(d){a.showAlert(\"executeNativesetExpandProperties: \"+d+\", props = \"+f)}};a.getExpandProperties=function(){try{return eval(\"(\"+displayController.getExpandProperties()+\")\")}catch(f){a.showAlert(\"getExpandProperties: \"+f)}};a.setOrientationProperties=function(f){try{f?b=f:f=null,displayController.setOrientationProperties(a.stringify(f))}catch(d){a.showAlert(\"executeNativesetOrientationProperties: \"+d+\", props = \"+f)}};a.getOrientationProperties=function(){return b};a.resizeProps=null;a.setResizeProperties=function(f){var d,b;try{d=parseInt(f.width);b=parseInt(f.height);if(isNaN(d)||isNaN(b)||1>d||1>b)throw\"Invalid\";f.width=d;f.height=b;a.resizeProps=f;displayController.setResizeProperties(a.stringify(f))}catch(c){window.mraid.broadcastEvent(\"error\",\"Invalid properties.\",\"setResizeProperties\")}};a.acceptAction=function(f){try{displayController.acceptAction(a.stringify(f))}catch(d){a.showAlert(\"acceptAction: \"+d+\", params = \"+f)}};a.rejectAction=function(f){try{displayController.rejectAction(a.stringify(f))}catch(d){a.showAlert(\"rejectAction: \"+d+\", params = \"+f)}};a.open=function(f){\"undefined\"==typeof f&&(f=null);try{displayController.open(f)}catch(d){a.showAlert(\"open: \"+d)}};a.openExternal=function(f){try{utilityController.openExternal(f)}catch(d){a.showAlert(\"openExternal: \"+d)}};a.getScreenSize=function(){try{return eval(\"(\"+utilityController.getScreenSize()+\")\")}catch(f){a.showAlert(\"getScreenSize: \"+f)}};a.getMaxSize=function(){try{return eval(\"(\"+utilityController.getMaxSize()+\")\")}catch(f){a.showAlert(\"getMaxSize: \"+f)}};a.getCurrentPosition=function(){try{return eval(\"(\"+utilityController.getCurrentPosition()+\")\")}catch(f){a.showAlert(\"getCurrentPosition: \"+f)}};a.getDefaultPosition=function(){try{return eval(\"(\"+utilityController.getDefaultPosition()+\")\")}catch(f){a.showAlert(\"getDefaultPosition: \"+f)}};a.getState=function(){try{return String(displayController.getState())}catch(f){a.showAlert(\"getState: \"+f)}};a.getOrientation=function(){try{return String(displayController.getOrientation())}catch(f){a.showAlert(\"getOrientation: \"+f)}};a.isViewable=function(){try{return displayController.isViewable()}catch(f){a.showAlert(\"isViewable: \"+f)}};a.log=function(f){try{utilityController.log(f)}catch(d){a.showAlert(\"log: \"+d)}};a.getPlacementType=function(){return displayController.getPlacementType()};a.asyncPing=function(f){try{utilityController.asyncPing(f)}catch(d){a.showAlert(\"asyncPing: \"+d)}};a.close=function(){try{displayController.close()}catch(f){a.showAlert(\"close: \"+f)}};a.makeCall=function(f){try{f.startsWith(\"tel:\")?utilityController.openExternal(f):utilityController.openExternal(\"tel:\"+f)}catch(d){a.showAlert(\"makeCall: \"+d)}};\"function\"!=typeof String.prototype.startsWith&&(String.prototype.startsWith=function(a){return 0==this.indexOf(a)});a.sendMail=function(f,d,b){try{utilityController.sendMail(f,d,b)}catch(c){a.showAlert(\"sendMail: \"+c)}};a.sendSMS=function(f,d){try{utilityController.sendSMS(f,d)}catch(b){a.showAlert(\"sendSMS: \"+b)}};a.pauseAudio=function(f){try{var d=getPID(f);utilityController.pauseAudio(d)}catch(b){a.showAlert(\"pauseAudio: \"+b)}};a.muteAudio=function(b){try{var d=getPID(b);utilityController.muteAudio(d)}catch(c){a.showAlert(\"muteAudio: \"+c)}};a.unMuteAudio=function(b){try{var d=getPID(b);utilityController.unMuteAudio(d)}catch(c){a.showAlert(\"unMuteAudio: \"+c)}};a.isAudioMuted=function(b){try{var d=getPID(b);return utilityController.isAudioMuted(d)}catch(c){a.showAlert(\"isAudioMuted: \"+c)}};a.setAudioVolume=function(b,d){try{var c=getPID(b);d=parseInt(d);utilityController.setAudioVolume(c,d)}catch(e){a.showAlert(\"setAudioVolume: \"+e)}};a.getAudioVolume=function(b){try{var d=getPID(b);return utilityController.getAudioVolume(d)}catch(c){a.showAlert(\"getAudioVolume: \"+c)}};a.seekAudio=function(b,d){try{var c=getPID(b);d=parseInt(d);utilityController.seekAudio(c,d)}catch(e){a.showAlert(\"seekAudio: \"+e)}};a.playAudio=function(b,d){var c=!0,e=!1,g=\"normal\",h=\"normal\",k=!0,q=\"\",r=getPID(d);null!=b&&(q=b);null!=d&&(\"undefined\"!=typeof d.autoplay&&!1===d.autoplay&&(c=!1),\"undefined\"!=typeof d.loop&&!0===d.loop&&(e=!0),\"undefined\"!=typeof d.startStyle&&null!=d.startStyle&&(g=d.startStyle),\"undefined\"!=typeof d.stopStyle&&null!=d.stopStyle&&(h=d.stopStyle),\"fullscreen\"==g&&(k=!0));try{utilityController.playAudio(q,c,k,e,g,h,r)}catch(s){a.showAlert(\"playAudio: \"+s)}};a.pauseVideo=function(b){try{var d=getPID(b);utilityController.pauseVideo(d)}catch(c){a.showAlert(\"pauseVideo: \"+c)}};a.closeVideo=function(b){try{var d=getPID(b);utilityController.closeVideo(d)}catch(c){a.showAlert(\"closeVideo: \"+c)}};a.hideVideo=function(b){try{var d=getPID(b);utilityController.hideVideo(d)}catch(c){a.showAlert(\"hideVideo: \"+c)}};a.showVideo=function(b){try{var d=getPID(b);utilityController.showVideo(d)}catch(c){a.showAlert(\"showVideo: \"+c)}};a.muteVideo=function(b){try{var d=getPID(b);utilityController.muteVideo(d)}catch(c){a.showAlert(\"muteVideo: \"+c)}};a.unMuteVideo=function(b){try{var d=getPID(b);utilityController.unMuteVideo(d)}catch(c){a.showAlert(\"unMuteVideo: \"+c)}};a.seekVideo=function(b,d){try{var c=getPID(b);d=parseInt(d);utilityController.seekVideo(c,d)}catch(e){a.showAlert(\"seekVideo: \"+e)}};a.isVideoMuted=function(b){try{var d=getPID(b);return utilityController.isVideoMuted(d)}catch(c){a.showAlert(\"isVideoMuted: \"+c)}};a.setVideoVolume=function(b,d){try{var c=getPID(b);d=parseInt(d);utilityController.setVideoVolume(c,d)}catch(e){a.showAlert(\"setVideoVolume: \"+e)}};a.getVideoVolume=function(b){try{var c=getPID(b);return utilityController.getVideoVolume(c)}catch(e){a.showAlert(\"getVideoVolume: \"+e)}};a.playVideo=function(b,c){var e=!1,g=!0,h=!0,k=!1,t=-99999,q=-99999,r=-99999,s=-99999,u=\"normal\",v=\"exit\",w=\"\",x=getPID(c);null!=b&&(w=b);null!=c&&(\"undefined\"!=typeof c.audio&&\"muted\"==c.audio&&(e=!0),\"undefined\"!=typeof c.autoplay&&!1===c.autoplay&&(g=!1),\"undefined\"!=typeof c.controls&&!1===c.controls&&(h=!1),\"undefined\"!=typeof c.loop&&!0===c.loop&&(k=!0),\"undefined\"!=typeof c.inline&&null!=c.inline&&(t=c.inline.left,q=c.inline.top),\"undefined\"!=typeof c.width&&null!=c.width&&(r=c.width),\"undefined\"!=typeof c.height&&null!=c.height&&(s=c.height),\"undefined\"!=typeof c.startStyle&&null!=c.startStyle&&(u=c.startStyle),\"undefined\"!=typeof c.stopStyle&&null!=c.stopStyle&&(v=c.stopStyle),\"fullscreen\"==u&&(h=!0),t=parseInt(t).toString(),q=parseInt(q).toString(),r=parseInt(r).toString(),s=parseInt(s).toString());try{utilityController.playVideo(w,e,g,h,k,t,q,r,s,u,v,x)}catch(y){a.showAlert(\"playVideo: \"+y)}};a.updateToPassbook=function(c){window.mraid.broadcastEvent(\"error\",\"Method not supported\",\"updateToPassbook\");a.log(\"Method not supported\")};a.stringify=function(c){if(\"undefined\"===typeof JSON){var b=\"\",e;if(\"undefined\"==typeof c.length)return a.stringifyArg(c);for(e=0;e<c.length;e++)0<e&&(b+=\",\"),b+=a.stringifyArg(c[e]);return b+\"]\"}return JSON.stringify(c)};a.stringifyArg=function(c){var b,e,g;e=typeof c;b=\"\";if(\"number\"===e||\"boolean\"===e)b+=args;else if(c instanceof Array)b=b+\"[\"+c+\"]\";else if(c instanceof Object){e=!0;b+=\"{\";for(g in c)null!==c[g]&&(e||(b+=\",\"),b=b+\'\"\'+g+\'\":\',e=typeof c[g],b=\"number\"===e||\"boolean\"===e?b+c[g]:\"function\"===typeof c[g]?b+\'\"\"\':c[g]instanceof Object?b+this.stringify(args[i][g]):b+\'\"\'+c[g]+\'\"\',e=!1);b+=\"}\"}else c=c.replace(/\\\\/g,\"\\\\\\\\\"),c=c.replace(/\"/g,\'\\\\\"\'),b=b+\'\"\'+c+\'\"\';a.showAlert(\"json:\"+b);return b};getPID=function(a){var c=\"\";null!=a&&(\"undefined\"!=typeof a.id&&null!=a.id)&&(c=a.id);return c};var g,k=!0;a.getWindowOrientation=function(){var a=window.orientation;0>a&&(a+=360);return a};var h=function(){if(k||a.getWindowOrientation()!==g)k=!1,g=a.getWindowOrientation(),displayController.onOrientationChange(),mraid.broadcastEvent(\"orientationChange\",g)};a.registerOrientationListener=function(){g=a.getWindowOrientation();window.addEventListener(\"resize\",h,!1);window.addEventListener(\"orientationchange\",h,!1)};a.unRegisterOrientationListener=function(){window.removeEventListener(\"resize\",h,!1);window.removeEventListener(\"orientationchange\",h,!1)};a.registerMicListener=function(){utilityController.registerMicListener()};a.unRegisterMicListener=function(){utilityController.unRegisterMicListener()};a.resize=function(){if(null==a.resizeProps)window.mraid.broadcastEvent(\"error\",\"Valid resize dimensions must be provided before calling resize\",\"resize\");else try{displayController.resize()}catch(c){a.showAlert(\"resize called in bridge\")}};a.vibrate=function(){utilityController.vibrate()};a.takeCameraPicture=function(){utilityController.takeCameraPicture()};a.getGalleryImage=function(){utilityController.getGalleryImage()};a.createCalendarEvent=function(a){\"object\"!=typeof a&&window.mraid.broadcastEvent(\"error\",\"createCalendarEvent method expects parameter\",\"createCalendarEvent\");\"string\"!=typeof a.start||\"string\"!=typeof a.end?window.mraid.broadcastEvent(\"error\",\"createCalendarEvent method expects string parameters for start and end dates\",\"createCalendarEvent\"):(\"string\"!=typeof a.location&&(a.location=\"\"),\"string\"!=typeof a.description&&(a.description=\"\"),utilityController.createCalendarEvent(a.start,a.end,a.location,a.description))};a.supports=function(a){console.log(\"bridge: supports\");if(\"string\"!=typeof a)window.mraid.broadcastEvent(\"error\",\"Supports method expects string parameter\",\"supports\");else return\"false\"!=utilityController.supportsFeature(a)};a.postToSocial=function(a,c,b,e){a=parseInt(a);isNaN(a)&&window.mraid.broadcastEvent(\"error\",\"socialType must be an integer\",\"postToSocial\");\"string\"!=typeof c&&(c=\"\");\"string\"!=typeof b&&(b=\"\");\"string\"!=typeof e&&(e=\"\");utilityController.postToSocial(a,c,b,e)};a.storePicture=function(c){console.log(\"bridge: storePicture\");if(\"string\"!=typeof c)window.mraid.broadcastEvent(\"error\",\"storePicture method expects url as string parameter\",\"storePicture\");else{if(a.supports(\"storePicture\"))return!window.confirm(\"Do you want to download the file?\")?(window.mraid.broadcastEvent(\"error\",\"Store picture on \"+c+\" was cancelled by user.\",\"storePicture\"),!1):utilityController.storePicture(c);window.mraid.broadcastEvent(\"error\",\"Store picture on \"+c+\" was cancelled because it is unsupported in this device/app.\",\"storePicture\")}};a.getMicIntensity=utilityController.getMicIntensity();window.mraidview.registerOrientationListener()})();(function(){var a=window.mraid=new InmobiObj,b=window.mraidview;a.useCustomClose=b.useCustomClose;a.close=b.close;a.getExpandProperties=b.getExpandProperties;a.setExpandProperties=b.setExpandProperties;a.getResizeProperties=b.getResizeProperties;a.setResizeProperties=b.setResizeProperties;a.getOrientationProperties=b.getOrientationProperties;a.setOrientationProperties=b.setOrientationProperties;a.expand=b.expand;a.getMaxSize=b.getMaxSize;a.getState=b.getState;a.getOrientation=b.getOrientation;a.isViewable=b.isViewable;a.open=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"open\"):b.open(c)};a.resize=b.resize;a.log=function(c){\"undefined\"==typeof c?a.broadcastEvent(\"error\",\"message is required.\",\"log\"):\"string\"==typeof c?b.log(c):b.log(JSON.stringify(c))};a.getVersion=function(){return\"2.0\"};a.getInMobiAIVersion=function(){return\"2.0\"};a.getPlacementType=b.getPlacementType;a.asyncPing=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"URL is required.\",\"asyncPing\"):b.asyncPing(c)};a.makeCall=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must provide a number to call.\",\"makeCall\"):b.makeCall(c)};a.sendMail=function(c,e,g){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a recipient.\",\"sendMail\"):b.sendMail(c,e,g)};a.sendSMS=function(c,e){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a recipient.\",\"sendSMS\"):b.sendSMS(c,e)};a.playAudio=function(a,e){\"object\"!=typeof e?\"string\"==typeof a?b.playAudio(a,null):\"object\"==typeof a?b.playAudio(null,a):b.playAudio(null,null):b.playAudio(a,e)};a.playVideo=function(a,e){\"object\"!=typeof e?\"string\"==typeof a?b.playVideo(a,null):\"object\"==typeof a?b.playVideo(null,a):b.playVideo(null,null):b.playVideo(a,e)};a.pauseAudio=b.pauseAudio;a.muteAudio=b.muteAudio;a.unMuteAudio=b.unMuteAudio;a.isAudioMuted=b.isAudioMuted;a.setAudioVolume=function(c){if(\"object\"!=typeof c&&null!=c)a.broadcastEvent(\"error\",\"Request must specify a valid properties\",\"setAudioVolume\");else{var e=c.volume;isNaN(e)?a.broadcastEvent(\"error\",\"Request must specify a valid volume in the range [0,100]\",\"setAudioVolume\"):(0>e?e=0:100<e&&(e=100),b.setAudioVolume(c,e))}};a.getAudioVolume=b.getAudioVolume;a.pauseVideo=b.pauseVideo;a.closeVideo=b.closeVideo;a.hideVideo=b.hideVideo;a.showVideo=b.showVideo;a.muteVideo=b.muteVideo;a.unMuteVideo=b.unMuteVideo;a.isVideoMuted=b.isVideoMuted;a.setVideoVolume=function(c){if(\"object\"!=typeof c&&null!=c)a.broadcastEvent(\"error\",\"Request must specify a valid properties\",\"setAudioVolume\");else{var e=c.volume;isNaN(e)?a.broadcastEvent(\"error\",\"Request must specify a valid volume in the range [0,100]\",\"setVideoVolume\"):(0>e?e=0:100<e&&(e=100),b.setVideoVolume(c,e))}};a.getVideoVolume=b.getVideoVolume;a.seekAudio=function(c){if(\"object\"!=typeof c&&null!=c)a.broadcastEvent(\"error\",\"Request must specify a valid properties\",\"seekAudio\");else{var e=c.time;imIsObjInvalid(e)?a.broadcastEvent(\"error\",\"Request must specify a valid time\",\"seekAudio\"):0!=e?a.broadcastEvent(\"error\",\"Cannot seek audio other than 0\",\"seekAudio\"):b.seekAudio(c,e)}};a.seekVideo=function(c){if(\"object\"!=typeof c&&null!=c)a.broadcastEvent(\"error\",\"Request must specify a valid time\",\"seekVideo\");else{var e=c.time;imIsObjInvalid(e)?a.broadcastEvent(\"error\",\"Request must specify a valid time\",\"seekVideo\"):0!=e?a.broadcastEvent(\"error\",\"Cannot seek video other than 0\",\"seekVideo\"):b.seekVideo(c,e)}};a.openExternal=b.openExternal;a.getScreenSize=b.getScreenSize;a.getCurrentPosition=b.getCurrentPosition;a.getDefaultPosition=b.getDefaultPosition;a.updateToPassbook=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"updateToPassbook\"):b.updateToPassbook(c)};a.acceptAction=b.acceptAction;a.rejectAction=b.rejectAction;a.storePicture=function(c){\"string\"!=typeof c?a.broadcastEvent(\"error\",\"Request must specify a valid URL\",\"storePicture\"):b.storePicture(c)};a.vibrate=b.vibrate;a.takeCameraPicture=b.takeCameraPicture;a.getMicIntensity=function(){return imIsObjInvalid(a.listeners.micIntensityChange)?-1:b.getMicIntensity()};a.postToSocial=b.postToSocial;a.supports=function(a){var e=!1;\"inlineVideo\"==a?(e=b.supports(a),!1==e&&(e=b.supports(\"html5video\"))):e=b.supports(a);return e};a.getPlatform=b.getPlatform})();(function(){var a=window._im_imaiBridge={ios:{}};a.broadcastEvent=function(){for(var a=Array(arguments.length),c=0;c<arguments.length;c++)a[c]=arguments[c];c=a.shift();try{window.mraid.broadcastEvent(c,a)}catch(e){}};a.getPlatform=function(){return\"android\"};a.getPlatformVersion=function(){return imaiController.getPlatformVersion()};a.log=function(a){imaiController.log(a)};a.openEmbedded=function(a){imaiController.openEmbedded(a)};a.openExternal=function(a){imaiController.openExternal(a)};a.ping=function(a,c){imaiController.ping(a,c)};a.pingInWebView=function(a,c){imaiController.pingInWebView(a,c)};a.getSdkVersion=function(){try{var a=imaiController.getSdkVersion();if(\"string\"==typeof a&&null!=a)return a}catch(c){return\"3.7.0\"}};a.onUserInteraction=function(a){if(\"object\"!=typeof a||null==a)utilityController.onUserInteraction(\"{}\");else try{utilityController.onUserInteraction(JSON.stringify(a))}catch(c){utilityController.onUserInteraction(\"{}\")}};a.ios.openItunesProductView=function(a){this.broadcastEvent(\"error\",\"functionality not supported\",\"openItunesProductView\")};a.ios.updateToPassbook=function(a){this.broadcastEvent(\"error\",\"functionality not supported\",\"updateToPassbook\")}})();(function(){var a=window._im_imaiBridge;window._im_imai=new InmobiObj;window._im_imai.ios=new InmobiObj;var b=window._im_imai;b.matchString=function(a,b){if(\"string\"!=typeof a||null==a||null==b)return-1;var g=-1;try{g=a.indexOf(b)}catch(k){}return g};b.isHttpUrl=function(a){return\"string\"!=typeof a||null==a?!1:0==b.matchString(a,\"http://\")?!0:0==b.matchString(a,\"https://\")?!0:!1};b.appendTapParams=function(a,e,g){if(imIsObjInvalid(e)||imIsObjInvalid(g))return a;b.isHttpUrl(a)&&(a=-1==b.matchString(a,\"?\")?a+(\"?u-tap-o=\"+e+\",\"+g):a+(\"&u-tap-o=\"+e+\",\"+g));return a};b.performAdClick=function(a,e){e=e||event;if(imIsObjInvalid(a))b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\");else{var g=a.clickConfig,k=a.landingConfig;if(imIsObjInvalid(g)&&imIsObjInvalid(k))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var h=null,f=null,d=null,m=null,n=null,l=null,p=null;if(imIsObjValid(e))try{m=e.changedTouches[0].pageX,n=e.changedTouches[0].pageY}catch(t){n=m=0}imIsObjInvalid(k)?(l=g.url,p=g.urlType):imIsObjInvalid(g)?(l=k.url,p=k.urlType):(l=k.url,p=k.urlType,h=g.url,f=g.pingWV,d=g.fr);g=b.getPlatform();try{if(\"boolean\"!=typeof d&&\"number\"!=typeof d||null==d)d=!0;if(0>d||1<d)d=!0;if(\"boolean\"!=typeof f&&\"number\"!=typeof f||null==f)f=!0;if(0>f||1<f)f=!0;if(\"number\"!=typeof p||null==p)p=0;h=b.appendTapParams(h,m,n);imIsObjValid(h)?!0==f?b.pingInWebView(h):b.ping(h,d):b.log(\"clickurl provided is null.\");if(imIsObjValid(l))switch(imIsObjInvalid(h)&&(l=b.appendTapParams(l,m,n)),p){case 1:b.openEmbedded(l);break;case 2:\"ios\"==g?b.ios.openItunesProductView(l):this.broadcastEvent(\"error\",\"Cannot process openItunesProductView for os\"+g);break;default:b.openExternal(l)}else b.log(\"Landing url provided is null.\")}catch(q){}}}};b.performActionClick=function(a,e){e=e||event;if(imIsObjInvalid(a))b.log(\" invalid config, nothing to process .\"),this.broadcastEvent(\"error\",\"invalid config, nothing to process .\");else{var g=a.clickConfig,k=a.landingConfig;if(imIsObjInvalid(g)&&imIsObjInvalid(k))b.log(\"click/landing config are invalid, Nothing to process .\"),this.broadcastEvent(\"error\",\"click/landing config are invalid, Nothing to process .\");else{var h=null,f=null,d=null,m=null,n=null;if(imIsObjValid(e))try{m=e.changedTouches[0].pageX,n=e.changedTouches[0].pageY}catch(l){n=m=0}imIsObjValid(g)&&(h=g.url,f=g.pingWV,d=g.fr);try{if(\"boolean\"!=typeof d&&\"number\"!=typeof d||null==d)d=!0;if(0>d||1<d)d=!0;if(\"boolean\"!=typeof f&&\"number\"!=typeof f||null==f)f=!0;if(0>f||1<f)f=!0;h=b.appendTapParams(h,m,n);imIsObjValid(h)?!0==f?b.pingInWebView(h):b.ping(h,d):b.log(\"clickurl provided is null.\");b.onUserInteraction(k)}catch(p){}}}};b.getVersion=function(){return\"1.0\"};b.getPlatform=a.getPlatform;b.getPlatformVersion=a.getPlatformVersion;b.log=a.log;b.openEmbedded=a.openEmbedded;b.openExternal=a.openExternal;b.ping=a.ping;b.pingInWebView=a.pingInWebView;b.onUserInteraction=function(b){try{if(imIsObjValid(b)&&\"object\"==typeof b)a.onUserInteraction(b);else a.onUserInteraction({})}catch(e){}};b.getSdkVersion=a.getSdkVersion;b.ios.openItunesProductView=a.ios.openItunesProductView})();"

    goto :goto_0
.end method
