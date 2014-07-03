.class public Lcom/mdotm/android/utils/MdotMUtils;
.super Ljava/lang/Object;
.source "MdotMUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mdotm/android/utils/MdotMUtils$MyAsynchTask;
    }
.end annotation


# static fields
.field public static AD_ICON_WITH_TEXT_MESSAGE:I

.field public static AD_RECEVIED:I

.field public static AD_WITH_BANNER_OR_XHTML_OR_VIDEO:I

.field private static _mdotmUtilsInstance:Lcom/mdotm/android/utils/MdotMUtils;


# instance fields
.field private interstitialActionListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/mdotm/android/listener/InterstitialActionListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 41
    const/4 v0, 0x2

    sput v0, Lcom/mdotm/android/utils/MdotMUtils;->AD_ICON_WITH_TEXT_MESSAGE:I

    .line 42
    sput v1, Lcom/mdotm/android/utils/MdotMUtils;->AD_WITH_BANNER_OR_XHTML_OR_VIDEO:I

    .line 43
    sput v1, Lcom/mdotm/android/utils/MdotMUtils;->AD_RECEVIED:I

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mdotm/android/utils/MdotMUtils;->interstitialActionListeners:Ljava/util/HashMap;

    .line 39
    return-void
.end method

.method static synthetic access$0(Lcom/mdotm/android/utils/MdotMUtils;Landroid/content/Context;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 390
    invoke-direct {p0, p1}, Lcom/mdotm/android/utils/MdotMUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private getAdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    .locals 3
    .parameter "context"

    .prologue
    .line 443
    :try_start_0
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    invoke-static {p1}, Lcom/mdotm/android/utils/MdotMAdInfo;->getAdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    :goto_0
    return-object v1

    .line 444
    :catch_0
    move-exception v0

    .line 447
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string v1, "this"

    const-string v2, "GPS not found "

    invoke-static {v1, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 449
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getUserAgentManually()Ljava/lang/String;
    .locals 11

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v0, arg:Ljava/lang/StringBuffer;
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 91
    .local v7, version:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 92
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 97
    :goto_0
    const-string v8, "; "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    .line 101
    .local v4, l:Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    .line 102
    .local v5, language:Ljava/lang/String;
    if-eqz v5, :cond_4

    .line 104
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, country:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 109
    const-string v8, "-"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    .end local v2           #country:Ljava/lang/String;
    :cond_0
    :goto_1
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 120
    .local v6, model:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 122
    const-string v8, "; "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    :cond_1
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 127
    .local v3, id:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 129
    const-string v8, " Build/"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :cond_2
    const-string v1, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    .line 134
    .local v1, base:Ljava/lang/String;
    const-string v8, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 Mobile Safari/533.1"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 95
    .end local v1           #base:Ljava/lang/String;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #l:Ljava/util/Locale;
    .end local v5           #language:Ljava/lang/String;
    .end local v6           #model:Ljava/lang/String;
    :cond_3
    const-string v8, "1.0"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 115
    .restart local v4       #l:Ljava/util/Locale;
    .restart local v5       #language:Ljava/lang/String;
    :cond_4
    const-string v8, "en"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/mdotm/android/utils/MdotMUtils;->_mdotmUtilsInstance:Lcom/mdotm/android/utils/MdotMUtils;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/mdotm/android/utils/MdotMUtils;

    invoke-direct {v0}, Lcom/mdotm/android/utils/MdotMUtils;-><init>()V

    sput-object v0, Lcom/mdotm/android/utils/MdotMUtils;->_mdotmUtilsInstance:Lcom/mdotm/android/utils/MdotMUtils;

    .line 54
    :cond_0
    sget-object v0, Lcom/mdotm/android/utils/MdotMUtils;->_mdotmUtilsInstance:Lcom/mdotm/android/utils/MdotMUtils;

    return-object v0
.end method

.method private isNetworkAvailable(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 392
    .line 393
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 394
    const-string v3, "connectivity"

    .line 393
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 392
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 395
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 396
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    const/4 v2, 0x1

    .line 399
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAdId(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 428
    const/4 v1, 0x0

    .line 429
    .local v1, adInfo:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    invoke-direct {p0, p1}, Lcom/mdotm/android/utils/MdotMUtils;->getAdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 430
    const/4 v0, 0x0

    .line 431
    .local v0, adId:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 432
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    .line 434
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ad Id is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    :cond_0
    return-object v0
.end method

.method public getBandWidth(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 181
    .line 182
    const-string v8, "connectivity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 181
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 183
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 184
    .local v1, info:Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    .line 186
    .local v4, type:I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 187
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    .line 188
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    .line 189
    .local v3, subType:I
    const/4 v8, 0x1

    if-ne v4, v8, :cond_1

    .line 192
    :try_start_0
    const-string v8, "wifi"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 191
    check-cast v6, Landroid/net/wifi/WifiManager;

    .line 193
    .local v6, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 194
    .local v5, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v5, :cond_0

    .line 195
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 196
    .local v2, linkSpeed:Ljava/lang/Integer;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Wifi bandwidth "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "000"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 277
    .end local v2           #linkSpeed:Ljava/lang/Integer;
    .end local v3           #subType:I
    .end local v5           #wifiInfo:Landroid/net/wifi/WifiInfo;
    .end local v6           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    :goto_0
    :pswitch_0
    return-object v7

    .line 204
    .restart local v3       #subType:I
    :cond_1
    if-nez v4, :cond_0

    .line 205
    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 227
    :pswitch_1
    const-string v7, "100"

    goto :goto_0

    .line 207
    :pswitch_2
    const-string v7, "50"

    goto :goto_0

    .line 211
    :pswitch_3
    const-string v7, "14"

    goto :goto_0

    .line 215
    :pswitch_4
    const-string v7, "50"

    goto :goto_0

    .line 219
    :pswitch_5
    const-string v7, "400"

    goto :goto_0

    .line 223
    :pswitch_6
    const-string v7, "600"

    goto :goto_0

    .line 231
    :pswitch_7
    const-string v7, "2000"

    goto :goto_0

    .line 235
    :pswitch_8
    const-string v7, "700"

    goto :goto_0

    .line 239
    :pswitch_9
    const-string v7, "1024"

    goto :goto_0

    .line 243
    :pswitch_a
    const-string v7, "400"

    goto :goto_0

    .line 249
    :pswitch_b
    const-string v7, "1024"

    goto :goto_0

    .line 253
    :pswitch_c
    const-string v7, "5120"

    goto :goto_0

    .line 257
    :pswitch_d
    const-string v7, "10240"

    goto :goto_0

    .line 261
    :pswitch_e
    const-string v7, "25600"

    goto :goto_0

    .line 264
    :pswitch_f
    const-string v7, "10240"

    goto :goto_0

    .line 200
    :catch_0
    move-exception v8

    goto :goto_0

    .line 205
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_a
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_2
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_e
        :pswitch_c
        :pswitch_f
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public getDeviceId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "deviceId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 60
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x20

    if-ge v1, v2, :cond_1

    .line 62
    :cond_0
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 63
    .local v0, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object p2

    .line 65
    .end local v0           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    return-object p2
.end method

.method public getDisplaySize(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "mContext"
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 141
    const/4 v1, 0x0

    .line 142
    .local v1, Measuredwidth:I
    const/4 v0, 0x0

    .line 143
    .local v0, Measuredheight:I
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 145
    .local v5, size:Landroid/graphics/Point;
    const-string v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 144
    check-cast v6, Landroid/view/WindowManager;

    .line 147
    .local v6, windowManager:Landroid/view/WindowManager;
    :try_start_0
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xd

    if-lt v7, v8, :cond_0

    .line 148
    const-string v7, "Getting conditional display size"

    invoke-static {p0, v7}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 150
    iget v1, v5, Landroid/graphics/Point;->x:I

    .line 151
    iget v0, v5, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, displaySize:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SCREEN DISPLAY SIZE "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    return-object v3

    .line 153
    .end local v3           #displaySize:Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v7, "Default display"

    invoke-static {p0, v7}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 155
    .local v2, d:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 156
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_0

    .line 158
    .end local v2           #d:Landroid/view/Display;
    :catch_0
    move-exception v4

    .line 159
    .local v4, e:Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    const-string v7, "Default display"

    invoke-static {p0, v7}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 165
    .restart local v2       #d:Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 166
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getInterstitialActionListener(J)Lcom/mdotm/android/listener/InterstitialActionListener;
    .locals 2
    .parameter "id"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMUtils;->interstitialActionListeners:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/listener/InterstitialActionListener;

    return-object v0
.end method

.method public getLAT(Landroid/content/Context;)Z
    .locals 5
    .parameter "context"

    .prologue
    .line 482
    const/4 v1, 0x0

    .line 483
    .local v1, adInfo:Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    invoke-direct {p0, p1}, Lcom/mdotm/android/utils/MdotMUtils;->getAdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v1

    .line 484
    const/4 v2, 0x0

    .line 485
    .local v2, isLAT:Z
    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, adId:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v2

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isLAT "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 493
    .end local v0           #adId:Ljava/lang/String;
    :cond_0
    return v2
.end method

.method public getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 75
    const/4 v1, 0x0

    .line 77
    .local v1, userAgent:Ljava/lang/String;
    :try_start_0
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 82
    :goto_0
    return-object v1

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-direct {p0}, Lcom/mdotm/android/utils/MdotMUtils;->getUserAgentManually()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public removeInterstitialActionListener(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMUtils;->interstitialActionListeners:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    return-void
.end method

.method public reportImpression(Ljava/lang/String;Landroid/content/Context;)V
    .locals 3
    .parameter "impPixel"
    .parameter "context"

    .prologue
    .line 281
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 282
    .local v0, impressionPixelWebView:Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 283
    new-instance v1, Lcom/mdotm/android/utils/MdotMUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/mdotm/android/utils/MdotMUtils$1;-><init>(Lcom/mdotm/android/utils/MdotMUtils;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 318
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 320
    return-void
.end method

.method public setInterstitialActionListener(JLcom/mdotm/android/listener/InterstitialActionListener;)V
    .locals 2
    .parameter "id"
    .parameter "interstitialActionListener"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/mdotm/android/utils/MdotMUtils;->interstitialActionListeners:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    return-void
.end method
