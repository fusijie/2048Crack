.class Lcom/millennialmedia/android/AdProperties;
.super Ljava/lang/Object;
.source "AdProperties.java"


# instance fields
.field contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/AdProperties;->contextRef:Ljava/lang/ref/WeakReference;

    .line 20
    return-void
.end method

.method private getAd()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 82
    .local v0, params:Lorg/json/JSONObject;
    const-string v1, "height"

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdProperties;->getAdDpiIndependentHeight()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v1, "width"

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdProperties;->getAdDpiIndependentWidth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    return-object v0
.end method

.method private getPermissions()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 47
    .local v0, params:Lorg/json/JSONObject;
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdProperties;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 52
    return-object v0

    .line 47
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getScreen()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 60
    .local v0, params:Lorg/json/JSONObject;
    const-string v1, "height"

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdProperties;->getScreenDpiIndependentHeight()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string v1, "width"

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdProperties;->getScreenDpiIndependentWidth()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    return-object v0
.end method

.method private getSupports()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 99
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 100
    .local v1, params:Lorg/json/JSONObject;
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdProperties;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 101
    .local v0, context:Landroid/content/Context;
    const-string v2, "sms"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->getSupportsSms(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v2, "tel"

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK;->getSupportsTel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    const-string v2, "calendar"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    const-string v2, "storePicture"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v2, "inlineVideo"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    return-object v1
.end method


# virtual methods
.method getAdDpiIndependentHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdProperties;->getScreenDpiIndependentHeight()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getAdDpiIndependentWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdProperties;->getScreenDpiIndependentWidth()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdProperties()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .local v0, adProps:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "screen"

    invoke-direct {p0}, Lcom/millennialmedia/android/AdProperties;->getScreen()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v1, "ad"

    invoke-direct {p0}, Lcom/millennialmedia/android/AdProperties;->getAd()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v1, "do"

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdProperties;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK;->getOrientation(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v1, "supports"

    invoke-direct {p0}, Lcom/millennialmedia/android/AdProperties;->getSupports()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string v1, "device"

    invoke-virtual {p0}, Lcom/millennialmedia/android/AdProperties;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/BridgeMMDevice;->getDeviceInfo(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v1, "permissions"

    invoke-direct {p0}, Lcom/millennialmedia/android/AdProperties;->getPermissions()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    const-string v1, "maxSize"

    invoke-direct {p0}, Lcom/millennialmedia/android/AdProperties;->getScreen()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-object v0

    .line 33
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/millennialmedia/android/AdProperties;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method

.method getScreenDpiIndependentHeight()Ljava/lang/String;
    .locals 4

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdProperties;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK;->getMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 68
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, v1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 69
    .local v0, height:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method getScreenDpiIndependentWidth()Ljava/lang/String;
    .locals 4

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdProperties;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/MMSDK;->getMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 75
    .local v0, metrics:Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v2

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v1, v2

    .line 76
    .local v1, width:I
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
