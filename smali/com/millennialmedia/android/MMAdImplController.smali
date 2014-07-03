.class Lcom/millennialmedia/android/MMAdImplController;
.super Ljava/lang/Object;
.source "MMAdImplController.java"

# interfaces
.implements Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/android/MMAdImplController$1;,
        Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;
    }
.end annotation


# static fields
.field static final NO_ID_RETURNED:J = -0x4L

.field private static final TAG:Ljava/lang/String; = "MMAdImplController"

.field private static final saveableControllers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/millennialmedia/android/MMAdImplController;",
            ">;"
        }
    .end annotation
.end field

.field private static final weakUnsaveableAdRef:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMAdImplController;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field volatile adImplRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/MMAdImpl;",
            ">;"
        }
    .end annotation
.end field

.field volatile linkedAdImplId:J

.field requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

.field volatile webView:Lcom/millennialmedia/android/MMWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    .line 44
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 4
    .parameter "adImpl"

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-string v0, "MMAdImplController"

    const-string v1, "**************** creating new controller."

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    .line 72
    iget-wide v0, p1, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/MMAdImplController;->linkForExpansion(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 76
    invoke-static {p1}, Lcom/millennialmedia/android/MMAdImplController;->getWebViewFromExistingAdImpl(Lcom/millennialmedia/android/MMAdImpl;)Lcom/millennialmedia/android/MMWebView;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    instance-of v0, p1, Lcom/millennialmedia/android/MMInterstitial$MMInterstitialAdImpl;

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->isBanner()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    new-instance v0, Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMWebView;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    .line 83
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/millennialmedia/android/MMWebView;->requiresPreAdSizeFix:Z

    goto :goto_0

    .line 85
    :cond_2
    new-instance v0, Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/android/MMWebView;-><init>(Landroid/content/Context;J)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    goto :goto_0
.end method

.method static declared-synchronized assignAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 7
    .parameter "adImpl"

    .prologue
    .line 108
    const-class v3, Lcom/millennialmedia/android/MMAdImplController;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v2, :cond_3

    .line 109
    sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-interface {v2, v4}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->isLifecycleObservable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 111
    sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    :goto_0
    const-string v2, "MMAdImplController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - Has a controller"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :cond_1
    :goto_1
    monitor-exit v3

    return-void

    .line 117
    :cond_2
    :try_start_1
    sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 108
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 127
    :cond_3
    :try_start_2
    const-string v2, "MMAdImplController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*****************************************assignAdViewController for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImplController;

    .line 132
    .local v0, controller:Lcom/millennialmedia/android/MMAdImplController;
    if-nez v0, :cond_5

    .line 133
    sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 135
    .local v1, controllerRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/millennialmedia/android/MMAdImplController;>;"
    if-eqz v1, :cond_4

    .line 136
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #controller:Lcom/millennialmedia/android/MMAdImplController;
    check-cast v0, Lcom/millennialmedia/android/MMAdImplController;

    .line 137
    .restart local v0       #controller:Lcom/millennialmedia/android/MMAdImplController;
    :cond_4
    if-nez v0, :cond_5

    .line 138
    new-instance v0, Lcom/millennialmedia/android/MMAdImplController;

    .end local v0           #controller:Lcom/millennialmedia/android/MMAdImplController;
    invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdImplController;-><init>(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 139
    .restart local v0       #controller:Lcom/millennialmedia/android/MMAdImplController;
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->isLifecycleObservable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 140
    sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .end local v1           #controllerRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/millennialmedia/android/MMAdImplController;>;"
    :cond_5
    :goto_2
    iput-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    .line 151
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    .line 153
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v2, :cond_1

    instance-of v2, p0, Lcom/millennialmedia/android/MMInterstitial$MMInterstitialAdImpl;

    if-nez v2, :cond_1

    .line 155
    invoke-static {p0}, Lcom/millennialmedia/android/MMAdImplController;->setupWebView(Lcom/millennialmedia/android/MMAdImpl;)V

    goto/16 :goto_1

    .line 143
    .restart local v1       #controllerRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/millennialmedia/android/MMAdImplController;>;"
    :cond_6
    sget-object v2, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method static declared-synchronized attachWebViewFromOverlay(Lcom/millennialmedia/android/MMAdImpl;)Z
    .locals 6
    .parameter "overlayAdImpl"

    .prologue
    const/4 v1, 0x0

    .line 188
    const-class v2, Lcom/millennialmedia/android/MMAdImplController;

    monitor-enter v2

    if-nez p0, :cond_1

    .line 216
    :cond_0
    :goto_0
    monitor-exit v2

    return v1

    .line 190
    :cond_1
    :try_start_0
    const-string v3, "MMAdImplController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attachWebViewFromOverlay with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v3, :cond_2

    .line 193
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v3}, Lcom/millennialmedia/android/MMWebView;->resetSpeechKit()V

    .line 195
    :cond_2
    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMAdImplController;->getAdImplWithId(J)Lcom/millennialmedia/android/MMAdImpl;

    move-result-object v0

    .line 197
    .local v0, bannerAdImpl:Lcom/millennialmedia/android/MMAdImpl;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v3, :cond_0

    .line 198
    iget-object v3, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-nez v3, :cond_3

    .line 199
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v3, :cond_0

    .line 204
    iget-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v3, v3, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    iput-object v3, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    .line 205
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImpl;->removeView(Lcom/millennialmedia/android/MMWebView;)V

    .line 206
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    .line 210
    :cond_3
    iget-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->setMraidDefault()V

    .line 211
    iget-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, v1, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getMMWebViewClient()Lcom/millennialmedia/android/MMWebViewClient;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/millennialmedia/android/MMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    const/4 v1, 0x1

    goto :goto_0

    .line 188
    .end local v0           #bannerAdImpl:Lcom/millennialmedia/android/MMAdImpl;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static controllersToString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 862
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SAVED:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static destroyOtherInlineVideo(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 908
    sget-object v6, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 910
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/millennialmedia/android/MMAdImplController;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/MMAdImplController;

    .line 911
    .local v2, controller:Lcom/millennialmedia/android/MMAdImplController;
    if-eqz v2, :cond_0

    .line 912
    iget-object v6, v2, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/MMAdImpl;

    .line 913
    .local v1, adImpl:Lcom/millennialmedia/android/MMAdImpl;
    if-eqz v1, :cond_0

    .line 914
    invoke-virtual {v1}, Lcom/millennialmedia/android/MMAdImpl;->getCallingAd()Lcom/millennialmedia/android/MMAd;

    move-result-object v0

    .line 915
    .local v0, ad:Lcom/millennialmedia/android/MMAd;
    if-eqz v0, :cond_0

    instance-of v6, v0, Lcom/millennialmedia/android/MMLayout;

    if-eqz v6, :cond_0

    move-object v5, v0

    .line 916
    check-cast v5, Lcom/millennialmedia/android/MMLayout;

    .line 917
    .local v5, layout:Lcom/millennialmedia/android/MMLayout;
    invoke-virtual {v5}, Lcom/millennialmedia/android/MMLayout;->removeVideo()V

    goto :goto_0

    .line 923
    .end local v0           #ad:Lcom/millennialmedia/android/MMAd;
    .end local v1           #adImpl:Lcom/millennialmedia/android/MMAdImpl;
    .end local v2           #controller:Lcom/millennialmedia/android/MMAdImplController;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Lcom/millennialmedia/android/MMAdImplController;>;"
    .end local v5           #layout:Lcom/millennialmedia/android/MMLayout;
    :cond_1
    return-void
.end method

.method static declared-synchronized getAdImplWithId(J)Lcom/millennialmedia/android/MMAdImpl;
    .locals 6
    .parameter "internalId"

    .prologue
    const/4 v2, 0x0

    .line 236
    const-class v3, Lcom/millennialmedia/android/MMAdImplController;

    monitor-enter v3

    const-wide/16 v4, -0x4

    cmp-long v4, p0, v4

    if-nez v4, :cond_1

    .line 248
    :cond_0
    :goto_0
    monitor-exit v3

    return-object v2

    .line 238
    :cond_1
    :try_start_0
    sget-object v4, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImplController;

    .line 240
    .local v0, controller:Lcom/millennialmedia/android/MMAdImplController;
    if-nez v0, :cond_2

    .line 241
    sget-object v4, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 243
    .local v1, controllerRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/millennialmedia/android/MMAdImplController;>;"
    if-eqz v1, :cond_2

    .line 244
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #controller:Lcom/millennialmedia/android/MMAdImplController;
    check-cast v0, Lcom/millennialmedia/android/MMAdImplController;

    .line 246
    .end local v1           #controllerRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/millennialmedia/android/MMAdImplController;>;"
    .restart local v0       #controller:Lcom/millennialmedia/android/MMAdImplController;
    :cond_2
    if-eqz v0, :cond_0

    .line 247
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/millennialmedia/android/MMAdImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 236
    .end local v0           #controller:Lcom/millennialmedia/android/MMAdImplController;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static declared-synchronized getWebViewFromExistingAdImpl(Lcom/millennialmedia/android/MMAdImpl;)Lcom/millennialmedia/android/MMWebView;
    .locals 7
    .parameter "requestorAdImpl"

    .prologue
    .line 222
    const-class v3, Lcom/millennialmedia/android/MMAdImplController;

    monitor-enter v3

    :try_start_0
    const-string v2, "MMAdImplController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getWebViewFromExistingLayout("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " taking from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, mmWebView:Lcom/millennialmedia/android/MMWebView;
    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    invoke-static {v4, v5}, Lcom/millennialmedia/android/MMAdImplController;->getAdImplWithId(J)Lcom/millennialmedia/android/MMAdImpl;

    move-result-object v0

    .line 227
    .local v0, holderAdImpl:Lcom/millennialmedia/android/MMAdImpl;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v2, :cond_0

    .line 228
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v1, v2, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    .line 229
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    const/4 v4, 0x0

    iput-object v4, v2, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :cond_0
    monitor-exit v3

    return-object v1

    .line 222
    .end local v0           #holderAdImpl:Lcom/millennialmedia/android/MMAdImpl;
    .end local v1           #mmWebView:Lcom/millennialmedia/android/MMWebView;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private declared-synchronized isDownloadingCachedAd(Lcom/millennialmedia/android/MMAdImpl;)Z
    .locals 5
    .parameter "adImpl"

    .prologue
    const/4 v2, 0x1

    .line 386
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 388
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v3

    iget-object v4, p1, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/millennialmedia/android/HandShake;->isAdTypeDownloading(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 390
    const-string v3, "MMAdImplController"

    const-string v4, "There is a download in progress. Defering call for new ad"

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    new-instance v3, Lcom/millennialmedia/android/MMException;

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {p1, v3}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    :goto_0
    monitor-exit p0

    return v2

    .line 396
    :cond_0
    :try_start_1
    const-string v3, "MMAdImplController"

    const-string v4, "No download in progress."

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/millennialmedia/android/AdCache;->loadIncompleteDownload(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v1

    .line 402
    .local v1, incompleteAd:Lcom/millennialmedia/android/CachedAd;
    if-eqz v1, :cond_1

    .line 405
    const-string v3, "MMAdImplController"

    const-string v4, "Last ad wasn\'t fully downloaded. Download again."

    invoke-static {v3, v4}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK$Event;->fetchStartedCaching(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 407
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v1, p0}, Lcom/millennialmedia/android/AdCache;->startDownloadTask(Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/CachedAd;Lcom/millennialmedia/android/AdCache$AdCacheTaskListener;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 386
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #incompleteAd:Lcom/millennialmedia/android/CachedAd;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 411
    .restart local v0       #context:Landroid/content/Context;
    .restart local v1       #incompleteAd:Lcom/millennialmedia/android/CachedAd;
    :cond_1
    :try_start_2
    const-string v2, "MMAdImplController"

    const-string v3, "No incomplete downloads."

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 413
    const/4 v2, 0x0

    goto :goto_0
.end method

.method static declared-synchronized removeAdViewController(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 7
    .parameter "adImpl"

    .prologue
    .line 264
    const-class v2, Lcom/millennialmedia/android/MMAdImplController;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 312
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 266
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->isLifecycleObservable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 270
    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 273
    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_2
    :goto_1
    const-string v1, "MMAdImplController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "****************RemoveAdviewcontroller - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdImpl;->isFinishing:Z

    if-eqz v1, :cond_3

    .line 284
    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->saveableControllers:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    .line 289
    .local v0, controller:Lcom/millennialmedia/android/MMAdImplController;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    .line 291
    const-string v1, "MMAdImplController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "****************RemoveAdviewcontroller - controllers "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/millennialmedia/android/MMAdImplController;->controllersToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v1, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v1, :cond_0

    .line 296
    const-string v1, "MMAdImplController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "****************RemoveAdviewcontroller - controller!=null, expanding="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    iget-boolean v4, v4, Lcom/millennialmedia/android/MMWebView;->isExpanding:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-object v1, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImpl;->removeView(Lcom/millennialmedia/android/MMWebView;)V

    .line 300
    iget-object v1, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/millennialmedia/android/MMWebView;->isExpanding:Z

    .line 305
    iget-boolean v1, p0, Lcom/millennialmedia/android/MMAdImpl;->isFinishing:Z

    if-eqz v1, :cond_0

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    .line 306
    iget-object v1, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    const-string v3, "<html></html>"

    const-string v4, "text/html"

    const-string v5, "UTF-8"

    invoke-virtual {v1, v3, v4, v5}, Lcom/millennialmedia/android/MMWebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v1, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/MMWebView;->resetSpeechKit()V

    .line 309
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 264
    .end local v0           #controller:Lcom/millennialmedia/android/MMAdImplController;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 276
    :cond_4
    :try_start_2
    sget-object v1, Lcom/millennialmedia/android/MMAdImplController;->weakUnsaveableAdRef:Ljava/util/Map;

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-instance v4, Ljava/lang/ref/WeakReference;

    iget-object v5, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    invoke-direct {v4, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private requestAdInternal(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 3
    .parameter "adImpl"

    .prologue
    .line 359
    iget-object v1, p1, Lcom/millennialmedia/android/MMAdImpl;->apid:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 360
    new-instance v0, Lcom/millennialmedia/android/MMException;

    const-string v1, "MMAdView found with a null apid. New ad requests on this MMAdView are disabled until an apid has been assigned."

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(Ljava/lang/String;I)V

    .line 363
    .local v0, error:Lcom/millennialmedia/android/MMException;
    const-string v1, "MMAdImplController"

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-static {p1, v0}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    .line 382
    .end local v0           #error:Lcom/millennialmedia/android/MMException;
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->isBanner()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdImplController;->isDownloadingCachedAd(Lcom/millennialmedia/android/MMAdImpl;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    :cond_2
    monitor-enter p0

    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    if-eqz v1, :cond_3

    .line 373
    const-string v1, "MMAdImplController"

    const/16 v2, 0xc

    invoke-static {v2}, Lcom/millennialmedia/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    new-instance v1, Lcom/millennialmedia/android/MMException;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {p1, v1}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    .line 377
    monitor-exit p0

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 379
    :cond_3
    :try_start_1
    new-instance v1, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;-><init>(Lcom/millennialmedia/android/MMAdImplController;Lcom/millennialmedia/android/MMAdImplController$1;)V

    iput-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    .line 380
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->requestAdRunnable:Lcom/millennialmedia/android/MMAdImplController$RequestAdRunnable;

    invoke-static {v1}, Lcom/millennialmedia/android/Utils$ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 381
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private static declared-synchronized setupWebView(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 6
    .parameter "adImpl"

    .prologue
    .line 161
    const-class v3, Lcom/millennialmedia/android/MMAdImplController;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    .line 162
    .local v0, controller:Lcom/millennialmedia/android/MMAdImplController;
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v2, :cond_1

    .line 163
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->getMMWebViewClient()Lcom/millennialmedia/android/MMWebViewClient;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/millennialmedia/android/MMWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 164
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    iget-wide v4, p0, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-virtual {v2, v4, v5}, Lcom/millennialmedia/android/MMWebView;->isCurrentParent(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdImpl;->isBanner()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 167
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, -0x2

    const/4 v4, -0x2

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 170
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMWebView;->isMraidResized()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v2, p0}, Lcom/millennialmedia/android/MMWebView;->unresizeToDefault(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 178
    :cond_0
    :goto_0
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v2}, Lcom/millennialmedia/android/MMWebView;->removeFromParent()V

    .line 179
    iget-object v2, v0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {p0, v2, v1}, Lcom/millennialmedia/android/MMAdImpl;->addView(Lcom/millennialmedia/android/MMWebView;Landroid/widget/RelativeLayout$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    monitor-exit v3

    return-void

    .line 174
    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    :try_start_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v2, -0x2

    const/4 v4, -0x1

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v1       #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    goto :goto_0

    .line 161
    .end local v0           #controller:Lcom/millennialmedia/android/MMAdImplController;
    .end local v1           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method checkReason(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/CachedAd;)I
    .locals 6
    .parameter "adImpl"
    .parameter "ad"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 443
    invoke-virtual {p2}, Lcom/millennialmedia/android/CachedAd;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    const-string v0, "MMAdImplController"

    const-string v1, "%s is expired."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const/16 v0, 0x15

    .line 457
    :goto_0
    return v0

    .line 447
    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/millennialmedia/android/CachedAd;->isOnDisk(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 448
    const-string v0, "MMAdImplController"

    const-string v1, "%s is not on disk."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const/16 v0, 0x16

    goto :goto_0

    .line 451
    :cond_1
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v0

    iget-object v1, p1, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    iget-wide v2, p2, Lcom/millennialmedia/android/CachedAd;->deferredViewStart:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/HandShake;->canDisplayCachedAd(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_2

    .line 453
    const-string v0, "MMAdImplController"

    const-string v1, "%s cannot be shown at this time."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const/16 v0, 0x18

    goto :goto_0

    .line 457
    :cond_2
    const/16 v0, 0x64

    goto :goto_0
.end method

.method display(Lcom/millennialmedia/android/MMAdImpl;)I
    .locals 4
    .parameter "adImpl"

    .prologue
    .line 478
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/AdCache;->loadNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    .line 480
    .local v0, ad:Lcom/millennialmedia/android/CachedAd;
    if-eqz v0, :cond_1

    .line 481
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/millennialmedia/android/CachedAd;->canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 482
    invoke-static {p1}, Lcom/millennialmedia/android/MMSDK$Event;->displayStarted(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 483
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, p1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/millennialmedia/android/CachedAd;->show(Landroid/content/Context;J)V

    .line 488
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v1

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p1, Lcom/millennialmedia/android/MMAdImpl;->adType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/millennialmedia/android/HandShake;->updateLastVideoViewedTime(Landroid/content/Context;Ljava/lang/String;)V

    .line 491
    const/4 v1, 0x0

    .line 496
    :goto_0
    return v1

    .line 493
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/android/MMAdImplController;->checkReason(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/CachedAd;)I

    move-result v1

    goto :goto_0

    .line 496
    :cond_1
    const/16 v1, 0x14

    goto :goto_0
.end method

.method public downloadCompleted(Lcom/millennialmedia/android/CachedAd;Z)V
    .locals 4
    .parameter "ad"
    .parameter "success"

    .prologue
    .line 425
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 426
    .local v0, adImpl:Lcom/millennialmedia/android/MMAdImpl;
    if-nez v0, :cond_0

    .line 427
    const-string v1, "MMAdImplController"

    const/16 v2, 0x19

    invoke-static {v2}, Lcom/millennialmedia/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :goto_0
    return-void

    .line 431
    :cond_0
    if-eqz p2, :cond_1

    .line 432
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/millennialmedia/android/CachedAd;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/millennialmedia/android/AdCache;->setNextCachedAd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_1
    if-eqz p2, :cond_2

    .line 435
    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->requestCompleted(Lcom/millennialmedia/android/MMAdImpl;)V

    goto :goto_0

    .line 437
    :cond_2
    new-instance v1, Lcom/millennialmedia/android/MMException;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    goto :goto_0
.end method

.method public downloadStart(Lcom/millennialmedia/android/CachedAd;)V
    .locals 0
    .parameter "ad"

    .prologue
    .line 884
    return-void
.end method

.method public getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 841
    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLastHeaders()Lcom/millennialmedia/android/HttpMMHeaders;
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-nez v0, :cond_0

    .line 835
    const/4 v0, 0x0

    .line 836
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->getLastHeaders()Lcom/millennialmedia/android/HttpMMHeaders;

    move-result-object v0

    goto :goto_0
.end method

.method getUserAgent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 846
    const/4 v2, 0x0

    .line 847
    .local v2, userAgent:Ljava/lang/String;
    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 848
    .local v0, adImpl:Lcom/millennialmedia/android/MMAdImpl;
    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 850
    .local v1, context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 851
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdImplController;->getDefaultUserAgentString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 854
    .end local v1           #context:Landroid/content/Context;
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 855
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 857
    :cond_1
    return-object v2
.end method

.method isAdAvailable(Lcom/millennialmedia/android/MMAdImpl;)I
    .locals 3
    .parameter "adImpl"

    .prologue
    .line 462
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getCachedName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/android/AdCache;->loadNextCachedAd(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/CachedAd;

    move-result-object v0

    .line 464
    .local v0, ad:Lcom/millennialmedia/android/CachedAd;
    if-eqz v0, :cond_1

    .line 465
    invoke-virtual {p1}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/millennialmedia/android/CachedAd;->canShow(Landroid/content/Context;Lcom/millennialmedia/android/MMAdImpl;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    const/4 v1, 0x0

    .line 472
    :goto_0
    return v1

    .line 468
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/millennialmedia/android/MMAdImplController;->checkReason(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/CachedAd;)I

    move-result v1

    goto :goto_0

    .line 470
    :cond_1
    const-string v1, "MMAdImplController"

    const-string v2, "No next ad."

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    const/16 v1, 0x14

    goto :goto_0
.end method

.method linkForExpansion(Lcom/millennialmedia/android/MMAdImpl;)V
    .locals 4
    .parameter "expansionAdImpl"

    .prologue
    .line 92
    iget-wide v1, p1, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    invoke-static {v1, v2}, Lcom/millennialmedia/android/MMAdImplController;->getAdImplWithId(J)Lcom/millennialmedia/android/MMAdImpl;

    move-result-object v0

    .line 93
    .local v0, adImpl:Lcom/millennialmedia/android/MMAdImpl;
    if-eqz v0, :cond_0

    .line 94
    iget-wide v1, p1, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    iput-wide v1, p0, Lcom/millennialmedia/android/MMAdImplController;->linkedAdImplId:J

    .line 95
    iget-object v1, v0, Lcom/millennialmedia/android/MMAdImpl;->controller:Lcom/millennialmedia/android/MMAdImplController;

    iget-wide v2, p1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    iput-wide v2, v1, Lcom/millennialmedia/android/MMAdImplController;->linkedAdImplId:J

    .line 96
    iget-wide v1, p1, Lcom/millennialmedia/android/MMAdImpl;->internalId:J

    iput-wide v1, v0, Lcom/millennialmedia/android/MMAdImpl;->linkForExpansionId:J

    .line 98
    :cond_0
    return-void
.end method

.method loadUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 418
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMWebView;->loadUrl(Ljava/lang/String;)V

    .line 420
    :cond_0
    return-void
.end method

.method loadWebContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "content"
    .parameter "adUrl"

    .prologue
    .line 895
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 896
    .local v0, adImpl:Lcom/millennialmedia/android/MMAdImpl;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v1, :cond_0

    .line 897
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v1, p1, p2, v0}, Lcom/millennialmedia/android/MMWebView;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdImpl;)V

    .line 899
    :cond_0
    return-void
.end method

.method requestAd()V
    .locals 7

    .prologue
    const/16 v6, 0x19

    const/16 v5, 0x10

    const/4 v4, 0x3

    .line 316
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 318
    .local v0, adImpl:Lcom/millennialmedia/android/MMAdImpl;
    if-nez v0, :cond_0

    .line 319
    const-string v2, "MMAdImplController"

    invoke-static {v6}, Lcom/millennialmedia/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    new-instance v2, Lcom/millennialmedia/android/MMException;

    invoke-direct {v2, v6}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    .line 354
    :goto_0
    return-void

    .line 326
    :cond_0
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->isRefreshable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 327
    new-instance v2, Lcom/millennialmedia/android/MMException;

    invoke-direct {v2, v5}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    goto :goto_0

    .line 332
    :cond_1
    invoke-static {}, Lcom/millennialmedia/android/MMSDK;->isUiThread()Z

    move-result v2

    if-nez v2, :cond_2

    .line 333
    const-string v2, "MMAdImplController"

    invoke-static {v4}, Lcom/millennialmedia/android/MMException;->getErrorCodeMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v2, Lcom/millennialmedia/android/MMException;

    invoke-direct {v2, v4}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    goto :goto_0

    .line 340
    :cond_2
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdImpl;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/millennialmedia/android/HandShake;->sharedHandShake(Landroid/content/Context;)Lcom/millennialmedia/android/HandShake;

    move-result-object v2

    iget-boolean v2, v2, Lcom/millennialmedia/android/HandShake;->kill:Z

    if-eqz v2, :cond_3

    .line 341
    const-string v2, "MMAdImplController"

    const-string v3, "The server is no longer allowing ads."

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    new-instance v2, Lcom/millennialmedia/android/MMException;

    invoke-direct {v2, v5}, Lcom/millennialmedia/android/MMException;-><init>(I)V

    invoke-static {v0, v2}, Lcom/millennialmedia/android/MMSDK$Event;->requestFailed(Lcom/millennialmedia/android/MMAdImpl;Lcom/millennialmedia/android/MMException;)V

    goto :goto_0

    .line 347
    :cond_3
    :try_start_0
    const-string v2, "MMAdImplController"

    const-string v3, "adLayout - requestAd"

    invoke-static {v2, v3}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdImplController;->requestAdInternal(Lcom/millennialmedia/android/MMAdImpl;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 349
    :catch_0
    move-exception v1

    .line 350
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "MMAdImplController"

    const-string v3, "There was an exception with the ad request. "

    invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 352
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method setLastHeaders(Lcom/millennialmedia/android/HttpMMHeaders;)V
    .locals 1
    .parameter "lastHeaders"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMWebView;->setLastHeaders(Lcom/millennialmedia/android/HttpMMHeaders;)V

    .line 830
    :cond_0
    return-void
.end method

.method setWebViewContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "webContent"
    .parameter "url"

    .prologue
    .line 821
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    .line 822
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1, p1, p2, v0}, Lcom/millennialmedia/android/MMWebView;->setWebViewContent(Ljava/lang/String;Ljava/lang/String;Lcom/millennialmedia/android/MMAdImpl;)V

    .line 824
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 871
    iget-object v2, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    .line 872
    .local v0, adImpl:Lcom/millennialmedia/android/MMAdImpl;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 873
    .local v1, sb:Ljava/lang/StringBuilder;
    if-eqz v0, :cond_0

    .line 874
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-LinkInC="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/millennialmedia/android/MMAdImplController;->linkedAdImplId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 877
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " w/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method unresizeToDefault()V
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_0

    .line 889
    iget-object v1, p0, Lcom/millennialmedia/android/MMAdImplController;->webView:Lcom/millennialmedia/android/MMWebView;

    iget-object v0, p0, Lcom/millennialmedia/android/MMAdImplController;->adImplRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMAdImpl;

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/MMWebView;->unresizeToDefault(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 891
    :cond_0
    return-void
.end method
