.class Lcom/millennialmedia/android/BridgeMMDevice;
.super Lcom/millennialmedia/android/MMJSObject;
.source "BridgeMMDevice.java"


# static fields
.field private static final CALL:Ljava/lang/String; = "call"

.field private static final COMPOSE_EMAIL:Ljava/lang/String; = "composeEmail"

.field private static final COMPOSE_SMS:Ljava/lang/String; = "composeSms"

.field private static final ENABLE_HARDWARE_ACCEL:Ljava/lang/String; = "enableHardwareAcceleration"

.field private static final GET_AVAIL_SCHEMES:Ljava/lang/String; = "getAvailableSchemes"

.field private static final GET_INFO:Ljava/lang/String; = "getInfo"

.field private static final GET_LOCATION:Ljava/lang/String; = "getLocation"

.field private static final GET_ORIENTATION:Ljava/lang/String; = "getOrientation"

.field private static final IS_SCHEME_AVAIL:Ljava/lang/String; = "isSchemeAvailable"

.field private static final OPEN_APP_STORE:Ljava/lang/String; = "openAppStore"

.field private static final OPEN_URL:Ljava/lang/String; = "openUrl"

.field private static final SET_MMDID:Ljava/lang/String; = "setMMDID"

.field private static final SHOW_MAP:Ljava/lang/String; = "showMap"

.field private static final TAG:Ljava/lang/String; = "BridgeMMDevice"

.field private static final TWEET:Ljava/lang/String; = "tweet"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 51
    return-void
.end method

.method static getDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 12
    .parameter "context"

    .prologue
    .line 201
    const/4 v5, 0x0

    .line 204
    .local v5, jsonObject:Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 205
    .local v1, jsonCookieArray:Lorg/json/JSONArray;
    const/4 v3, 0x0

    .line 207
    .local v3, jsonCookieObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .local v6, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string v9, "sdkVersion"

    const-string v10, "5.2.0-c11d39dc.a"

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    const-string v9, "connection"

    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->getConnectionType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v9, "platform"

    const-string v10, "Android"

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 215
    const-string v9, "version"

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    :cond_0
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v9, :cond_1

    .line 220
    const-string v9, "device"

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    :cond_1
    const-string v9, "mmdid"

    invoke-static {p0}, Lcom/millennialmedia/android/MMSDK;->getMMdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 224
    .local v8, metrics:Landroid/util/DisplayMetrics;
    const-string v9, "density"

    new-instance v10, Ljava/lang/Float;

    iget v11, v8, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v10, v11}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    const-string v9, "height"

    new-instance v10, Ljava/lang/Integer;

    iget v11, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    const-string v9, "width"

    new-instance v10, Ljava/lang/Integer;

    iget v11, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 231
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    .line 232
    .local v7, locale:Ljava/util/Locale;
    if-eqz v7, :cond_2

    .line 233
    const-string v9, "language"

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v9, "country"

    invoke-virtual {v7}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    :cond_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 238
    .end local v3           #jsonCookieObject:Lorg/json/JSONObject;
    .local v4, jsonCookieObject:Lorg/json/JSONObject;
    :try_start_2
    const-string v9, "name"

    const-string v10, "MAC-ID"

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v9, "path"

    const-string v10, "/"

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string v9, "value"

    sget-object v10, Lcom/millennialmedia/android/MMSDK;->macId:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 242
    .end local v1           #jsonCookieArray:Lorg/json/JSONArray;
    .local v2, jsonCookieArray:Lorg/json/JSONArray;
    :try_start_3
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 243
    const-string v9, "cookies"

    invoke-virtual {v6, v9, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    move-object v3, v4

    .end local v4           #jsonCookieObject:Lorg/json/JSONObject;
    .restart local v3       #jsonCookieObject:Lorg/json/JSONObject;
    move-object v5, v6

    .line 247
    .end local v2           #jsonCookieArray:Lorg/json/JSONArray;
    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .end local v7           #locale:Ljava/util/Locale;
    .end local v8           #metrics:Landroid/util/DisplayMetrics;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    :goto_0
    return-object v5

    .line 244
    .restart local v1       #jsonCookieArray:Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 245
    .local v0, e:Lorg/json/JSONException;
    :goto_1
    const-string v9, "BridgeMMDevice"

    const-string v10, "Bridge getting deviceInfo json exception: "

    invoke-static {v9, v10, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 244
    .end local v0           #e:Lorg/json/JSONException;
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v5, v6

    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    goto :goto_1

    .end local v3           #jsonCookieObject:Lorg/json/JSONObject;
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .restart local v4       #jsonCookieObject:Lorg/json/JSONObject;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    .restart local v7       #locale:Ljava/util/Locale;
    .restart local v8       #metrics:Landroid/util/DisplayMetrics;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4           #jsonCookieObject:Lorg/json/JSONObject;
    .restart local v3       #jsonCookieObject:Lorg/json/JSONObject;
    move-object v5, v6

    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    goto :goto_1

    .end local v1           #jsonCookieArray:Lorg/json/JSONArray;
    .end local v3           #jsonCookieObject:Lorg/json/JSONObject;
    .end local v5           #jsonObject:Lorg/json/JSONObject;
    .restart local v2       #jsonCookieArray:Lorg/json/JSONArray;
    .restart local v4       #jsonCookieObject:Lorg/json/JSONObject;
    .restart local v6       #jsonObject:Lorg/json/JSONObject;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4           #jsonCookieObject:Lorg/json/JSONObject;
    .restart local v3       #jsonCookieObject:Lorg/json/JSONObject;
    move-object v1, v2

    .end local v2           #jsonCookieArray:Lorg/json/JSONArray;
    .restart local v1       #jsonCookieArray:Lorg/json/JSONArray;
    move-object v5, v6

    .end local v6           #jsonObject:Lorg/json/JSONObject;
    .restart local v5       #jsonObject:Lorg/json/JSONObject;
    goto :goto_1
.end method


# virtual methods
.method public call(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 336
    .local p1, arguments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/millennialmedia/android/BridgeMMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 337
    .local v2, context:Landroid/content/Context;
    const-string v5, "number"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 338
    .local v4, number:Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    .line 339
    const-string v5, "BridgeMMDevice"

    const-string v6, "Dialing Phone: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v5, "dial"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "android.permission.CALL_PHONE"

    invoke-virtual {v2, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    .line 344
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 349
    .local v3, intent:Landroid/content/Intent;
    :goto_0
    invoke-static {v2, v3}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 351
    const-string v5, "PROPERTY_EXPANDING"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/millennialmedia/android/BridgeMMDevice;->getAdImplId(Ljava/lang/String;)J

    move-result-wide v0

    .line 353
    .local v0, adImplId:J
    const-string v5, "tel"

    invoke-static {v2, v5, v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    .line 356
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v5

    .line 358
    .end local v0           #adImplId:J
    .end local v3           #intent:Landroid/content/Intent;
    :goto_1
    return-object v5

    .line 347
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "tel:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 358
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public composeEmail(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, arguments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/millennialmedia/android/BridgeMMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 407
    .local v2, context:Landroid/content/Context;
    const-string v7, "recipient"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 408
    .local v5, recipients:Ljava/lang/String;
    const-string v7, "subject"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 409
    .local v6, subject:Ljava/lang/String;
    const-string v7, "message"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 410
    .local v4, message:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 411
    const-string v7, "BridgeMMDevice"

    const-string v8, "Creating email"

    invoke-static {v7, v8}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.SEND"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v3, emailIntent:Landroid/content/Intent;
    const-string v7, "plain/text"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    if-eqz v5, :cond_0

    .line 415
    const-string v7, "android.intent.extra.EMAIL"

    const-string v8, ","

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    :cond_0
    if-eqz v6, :cond_1

    .line 418
    const-string v7, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    :cond_1
    if-eqz v4, :cond_2

    .line 421
    const-string v7, "android.intent.extra.TEXT"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 423
    :cond_2
    invoke-static {v2, v3}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 425
    const-string v7, "PROPERTY_EXPANDING"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/millennialmedia/android/BridgeMMDevice;->getAdImplId(Ljava/lang/String;)J

    move-result-wide v0

    .line 427
    .local v0, adImplId:J
    const-string v7, "email"

    invoke-static {v2, v7, v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    .line 430
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v7

    .line 432
    .end local v0           #adImplId:J
    .end local v3           #emailIntent:Landroid/content/Intent;
    :goto_0
    return-object v7

    :cond_3
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public composeSms(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 373
    .local p1, arguments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/millennialmedia/android/BridgeMMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 374
    .local v2, context:Landroid/content/Context;
    const-string v6, "number"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 375
    .local v5, number:Ljava/lang/String;
    const-string v6, "message"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 376
    .local v4, message:Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    .line 377
    const-string v6, "BridgeMMDevice"

    const-string v7, "Creating sms: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sms:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 380
    .local v3, intent:Landroid/content/Intent;
    if-eqz v4, :cond_0

    .line 381
    const-string v6, "sms_body"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    :cond_0
    invoke-static {v2, v3}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 384
    const-string v6, "PROPERTY_EXPANDING"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/millennialmedia/android/BridgeMMDevice;->getAdImplId(Ljava/lang/String;)J

    move-result-wide v0

    .line 386
    .local v0, adImplId:J
    const-string v6, "sms"

    invoke-static {v2, v6, v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    .line 388
    const-string v6, "SMS Sent"

    invoke-static {v6}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v6

    .line 390
    .end local v0           #adImplId:J
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    return-object v6

    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public enableHardwareAcceleration(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, arguments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "BridgeMMDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hardware accel call"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v3, "enabled"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 81
    .local v1, enabled:Ljava/lang/String;
    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMDevice;->mmWebViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/MMWebView;

    .line 82
    .local v2, webView:Lcom/millennialmedia/android/MMWebView;
    if-eqz v2, :cond_1

    .line 83
    if-eqz v2, :cond_1

    .line 84
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 85
    .local v0, enable:Z
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v2}, Lcom/millennialmedia/android/MMWebView;->enableHardwareAcceleration()V

    .line 89
    :goto_0
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 92
    .end local v0           #enable:Z
    :goto_1
    return-object v3

    .line 88
    .restart local v0       #enable:Z
    :cond_0
    invoke-virtual {v2}, Lcom/millennialmedia/android/MMWebView;->disableAllAcceleration()V

    goto :goto_0

    .line 92
    .end local v0           #enable:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method executeCommand(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 509
    .local p2, arguments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 511
    .local v0, response:Lcom/millennialmedia/android/MMJSResponse;
    const-string v1, "call"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 512
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMDevice;->call(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 541
    :cond_0
    :goto_0
    return-object v0

    .line 513
    :cond_1
    const-string v1, "composeEmail"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 514
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMDevice;->composeEmail(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 515
    :cond_2
    const-string v1, "composeSms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 516
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMDevice;->composeSms(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 517
    :cond_3
    const-string v1, "enableHardwareAcceleration"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 518
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMDevice;->enableHardwareAcceleration(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 519
    :cond_4
    const-string v1, "getAvailableSchemes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 520
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMDevice;->getAvailableSchemes(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 521
    :cond_5
    const-string v1, "getInfo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 522
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMDevice;->getInfo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 523
    :cond_6
    const-string v1, "getLocation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 524
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMDevice;->getLocation(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 525
    :cond_7
    const-string v1, "getOrientation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 526
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMDevice;->getOrientation(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 527
    :cond_8
    const-string v1, "isSchemeAvailable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 528
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMDevice;->isSchemeAvailable(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 529
    :cond_9
    const-string v1, "openAppStore"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 530
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMDevice;->openAppStore(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 531
    :cond_a
    const-string v1, "openUrl"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 532
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMDevice;->openUrl(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto/16 :goto_0

    .line 533
    :cond_b
    const-string v1, "setMMDID"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 534
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMDevice;->setMMDID(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto/16 :goto_0

    .line 535
    :cond_c
    const-string v1, "showMap"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 536
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMDevice;->showMap(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto/16 :goto_0

    .line 537
    :cond_d
    const-string v1, "tweet"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMDevice;->tweet(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public getAvailableSchemes(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, arguments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 106
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 107
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    .line 108
    .local v1, handShake:Lcom/millennialmedia/android/HandShake;
    new-instance v2, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v2}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 109
    .local v2, response:Lcom/millennialmedia/android/MMJSResponse;
    const/4 v3, 0x1

    iput v3, v2, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 110
    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/HandShake;->getSchemesJSONArray(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    iput-object v3, v2, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 113
    .end local v1           #handShake:Lcom/millennialmedia/android/HandShake;
    .end local v2           #response:Lcom/millennialmedia/android/MMJSResponse;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getInfo(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, arguments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/millennialmedia/android/BridgeMMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 190
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 191
    new-instance v1, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v1}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 192
    .local v1, response:Lcom/millennialmedia/android/MMJSResponse;
    const/4 v2, 0x1

    iput v2, v1, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 193
    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMDevice;->getDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 196
    .end local v1           #response:Lcom/millennialmedia/android/MMJSResponse;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocation(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, arguments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v4, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    if-eqz v4, :cond_4

    .line 260
    const/4 v1, 0x0

    .line 262
    .local v1, jsonObject:Lorg/json/JSONObject;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .local v2, jsonObject:Lorg/json/JSONObject;
    :try_start_1
    const-string v4, "lat"

    sget-object v5, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v4, "long"

    sget-object v5, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 267
    sget-object v4, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->hasAccuracy()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 268
    const-string v4, "ha"

    sget-object v5, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    const-string v4, "va"

    sget-object v5, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    :cond_0
    sget-object v4, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->hasSpeed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 274
    const-string v4, "spd"

    sget-object v5, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getSpeed()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    :cond_1
    sget-object v4, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->hasBearing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 277
    const-string v4, "brg"

    sget-object v5, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getBearing()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    :cond_2
    sget-object v4, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->hasAltitude()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 280
    const-string v4, "alt"

    sget-object v5, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    :cond_3
    const-string v4, "tslr"

    sget-object v5, Lcom/millennialmedia/android/MMRequest;->location:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v2

    .line 287
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    :goto_0
    new-instance v3, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v3}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 288
    .local v3, response:Lcom/millennialmedia/android/MMJSResponse;
    const/4 v4, 0x1

    iput v4, v3, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 289
    iput-object v1, v3, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 292
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    .end local v3           #response:Lcom/millennialmedia/android/MMJSResponse;
    :goto_1
    return-object v3

    .line 284
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 285
    .local v0, e:Lorg/json/JSONException;
    :goto_2
    const-string v4, "BridgeMMDevice"

    const-string v5, "Bridge getLocation json exception: "

    invoke-static {v4, v5, v0}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 292
    .end local v0           #e:Lorg/json/JSONException;
    .end local v1           #jsonObject:Lorg/json/JSONObject;
    :cond_4
    const-string v4, "location object has not been set"

    invoke-static {v4}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    goto :goto_1

    .line 284
    .restart local v2       #jsonObject:Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .restart local v1       #jsonObject:Lorg/json/JSONObject;
    goto :goto_2
.end method

.method public getOrientation(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, arguments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 153
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 154
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v2, v4, Landroid/content/res/Configuration;->orientation:I

    .line 155
    .local v2, orientation:I
    if-nez v2, :cond_0

    .line 156
    const-string v4, "window"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 159
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getOrientation()I

    move-result v2

    .line 162
    .end local v1           #display:Landroid/view/Display;
    :cond_0
    new-instance v3, Lcom/millennialmedia/android/MMJSResponse;

    invoke-direct {v3}, Lcom/millennialmedia/android/MMJSResponse;-><init>()V

    .line 163
    .local v3, response:Lcom/millennialmedia/android/MMJSResponse;
    const/4 v4, 0x1

    iput v4, v3, Lcom/millennialmedia/android/MMJSResponse;->result:I

    .line 164
    packed-switch v2, :pswitch_data_0

    .line 169
    const-string v4, "portrait"

    iput-object v4, v3, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    .line 177
    .end local v2           #orientation:I
    .end local v3           #response:Lcom/millennialmedia/android/MMJSResponse;
    :goto_0
    return-object v3

    .line 172
    .restart local v2       #orientation:I
    .restart local v3       #response:Lcom/millennialmedia/android/MMJSResponse;
    :pswitch_0
    const-string v4, "landscape"

    iput-object v4, v3, Lcom/millennialmedia/android/MMJSResponse;->response:Ljava/lang/Object;

    goto :goto_0

    .line 177
    .end local v2           #orientation:I
    .end local v3           #response:Lcom/millennialmedia/android/MMJSResponse;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public isSchemeAvailable(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, arguments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "scheme"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 126
    .local v3, scheme:Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 127
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    :cond_0
    iget-object v4, p0, Lcom/millennialmedia/android/BridgeMMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 130
    .local v0, context:Landroid/content/Context;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 133
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 134
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/high16 v5, 0x1

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 136
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 137
    invoke-static {v3}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    .line 139
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v4

    :cond_1
    invoke-static {v3}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v4

    goto :goto_0
.end method

.method public openAppStore(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .local p1, arguments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 476
    iget-object v6, p0, Lcom/millennialmedia/android/BridgeMMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 477
    .local v2, context:Landroid/content/Context;
    const-string v6, "appId"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 478
    .local v3, id:Ljava/lang/String;
    const-string v6, "referrer"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 479
    .local v5, referrer:Ljava/lang/String;
    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 480
    const-string v6, "BridgeMMDevice"

    const-string v7, "Opening marketplace: %s"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 482
    .local v4, intent:Landroid/content/Intent;
    if-eqz v5, :cond_0

    .line 483
    const-string v6, "market://details?id=%s&referrer=%s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v9

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 489
    :goto_0
    const-string v6, "PROPERTY_EXPANDING"

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/millennialmedia/android/BridgeMMDevice;->getAdImplId(Ljava/lang/String;)J

    move-result-wide v0

    .line 491
    .local v0, adImplId:J
    const-string v6, "market"

    invoke-static {v2, v6, v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    .line 494
    invoke-static {v2, v4}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 495
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v6

    .line 497
    .end local v0           #adImplId:J
    .end local v4           #intent:Landroid/content/Intent;
    :goto_1
    return-object v6

    .line 487
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "market://details?id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0

    .line 497
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public openUrl(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 447
    .local p1, arguments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/millennialmedia/android/BridgeMMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 448
    .local v2, context:Landroid/content/Context;
    const-string v5, "url"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 449
    .local v4, url:Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v4, :cond_2

    .line 450
    const-string v5, "BridgeMMDevice"

    const-string v6, "Opening: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 452
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "http"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "https"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 454
    :cond_0
    const-string v5, "PROPERTY_EXPANDING"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/millennialmedia/android/BridgeMMDevice;->getAdImplId(Ljava/lang/String;)J

    move-result-wide v0

    .line 456
    .local v0, adImplId:J
    const-string v5, "browser"

    invoke-static {v2, v5, v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    .line 459
    .end local v0           #adImplId:J
    :cond_1
    invoke-static {v2, v3}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 460
    const-string v5, "Overlay opened"

    invoke-static {v5}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v5

    .line 462
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    return-object v5

    :cond_2
    const-string v5, "URL could not be opened"

    invoke-static {v5}, Lcom/millennialmedia/android/MMJSResponse;->responseWithError(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v5

    goto :goto_0
.end method

.method public setMMDID(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, arguments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "mmdid"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 62
    .local v2, mmdid:Ljava/lang/String;
    iget-object v3, p0, Lcom/millennialmedia/android/BridgeMMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 63
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 64
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    .line 65
    .local v1, handShake:Lcom/millennialmedia/android/HandShake;
    invoke-virtual {v1, v0, v2}, Lcom/millennialmedia/android/HandShake;->setMMdid(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    const-string v3, "MMDID is set"

    invoke-static {v3}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v3

    .line 68
    .end local v1           #handShake:Lcom/millennialmedia/android/HandShake;
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public showMap(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, arguments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/millennialmedia/android/BridgeMMDevice;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .line 309
    .local v2, context:Landroid/content/Context;
    const-string v5, "location"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 310
    .local v4, location:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v4, :cond_0

    .line 311
    const-string v5, "BridgeMMDevice"

    const-string v6, "Launching Google Maps: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "geo:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 314
    .local v3, intent:Landroid/content/Intent;
    invoke-static {v2, v3}, Lcom/millennialmedia/android/Utils$IntentUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 316
    const-string v5, "PROPERTY_EXPANDING"

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/millennialmedia/android/BridgeMMDevice;->getAdImplId(Ljava/lang/String;)J

    move-result-wide v0

    .line 318
    .local v0, adImplId:J
    const-string v5, "geo"

    invoke-static {v2, v5, v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->intentStarted(Landroid/content/Context;Ljava/lang/String;J)V

    .line 320
    const-string v5, "Map successfully opened"

    invoke-static {v5}, Lcom/millennialmedia/android/MMJSResponse;->responseWithSuccess(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v5

    .line 322
    .end local v0           #adImplId:J
    .end local v3           #intent:Landroid/content/Intent;
    :goto_0
    return-object v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public tweet(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 503
    .local p1, arguments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    return-object v0
.end method
