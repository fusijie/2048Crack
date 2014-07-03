.class public Lcom/inmobi/monetization/IMNative;
.super Ljava/lang/Object;
.source "IMNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/monetization/IMNative$a;
    }
.end annotation


# instance fields
.field a:Lcom/inmobi/monetization/internal/TrackerView;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/inmobi/monetization/IMNativeListener;

.field private g:Landroid/os/Handler;

.field private h:Lcom/inmobi/monetization/internal/NativeAdRequest;

.field private i:Z

.field private j:Lcom/inmobi/monetization/IMNative$a;

.field private k:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;


# direct methods
.method public constructor <init>(Lcom/inmobi/monetization/IMNativeListener;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->b:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->c:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->d:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->a:Lcom/inmobi/monetization/internal/TrackerView;

    .line 27
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->e:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->f:Lcom/inmobi/monetization/IMNativeListener;

    .line 30
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->h:Lcom/inmobi/monetization/internal/NativeAdRequest;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMNative;->i:Z

    .line 35
    sget-object v0, Lcom/inmobi/monetization/IMNative$a;->g:Lcom/inmobi/monetization/IMNative$a;

    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->j:Lcom/inmobi/monetization/IMNative$a;

    .line 260
    new-instance v0, Lcom/inmobi/monetization/a;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/a;-><init>(Lcom/inmobi/monetization/IMNative;)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->k:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    .line 54
    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/inmobi/monetization/IMNative;->a(Ljava/lang/String;Lcom/inmobi/monetization/IMNativeListener;)V

    .line 55
    sget-object v0, Lcom/inmobi/monetization/IMNative$a;->a:Lcom/inmobi/monetization/IMNative$a;

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative$a;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/monetization/IMNativeListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->b:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->c:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->d:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->a:Lcom/inmobi/monetization/internal/TrackerView;

    .line 27
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->e:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->f:Lcom/inmobi/monetization/IMNativeListener;

    .line 30
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->h:Lcom/inmobi/monetization/internal/NativeAdRequest;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMNative;->i:Z

    .line 35
    sget-object v0, Lcom/inmobi/monetization/IMNative$a;->g:Lcom/inmobi/monetization/IMNative$a;

    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->j:Lcom/inmobi/monetization/IMNative$a;

    .line 260
    new-instance v0, Lcom/inmobi/monetization/a;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/a;-><init>(Lcom/inmobi/monetization/IMNative;)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->k:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    .line 44
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    :cond_0
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please create an instance of native ad with valid appId"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/inmobi/monetization/IMNative;->a(Ljava/lang/String;Lcom/inmobi/monetization/IMNativeListener;)V

    .line 50
    sget-object v0, Lcom/inmobi/monetization/IMNative$a;->a:Lcom/inmobi/monetization/IMNative$a;

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative$a;)V

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->b:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->c:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->d:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->a:Lcom/inmobi/monetization/internal/TrackerView;

    .line 27
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->e:Ljava/lang/String;

    .line 28
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->f:Lcom/inmobi/monetization/IMNativeListener;

    .line 30
    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->h:Lcom/inmobi/monetization/internal/NativeAdRequest;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMNative;->i:Z

    .line 35
    sget-object v0, Lcom/inmobi/monetization/IMNative$a;->g:Lcom/inmobi/monetization/IMNative$a;

    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->j:Lcom/inmobi/monetization/IMNative$a;

    .line 260
    new-instance v0, Lcom/inmobi/monetization/a;

    invoke-direct {v0, p0}, Lcom/inmobi/monetization/a;-><init>(Lcom/inmobi/monetization/IMNative;)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->k:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    .line 38
    iput-object p1, p0, Lcom/inmobi/monetization/IMNative;->b:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lcom/inmobi/monetization/IMNative;->c:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/inmobi/monetization/IMNative;->d:Ljava/lang/String;

    .line 41
    return-void
.end method

.method private declared-synchronized a()Lcom/inmobi/monetization/IMNative$a;
    .locals 1

    .prologue
    .line 319
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->j:Lcom/inmobi/monetization/IMNative$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMNative;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMNative;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/inmobi/monetization/IMNative;->b:Ljava/lang/String;

    return-object p1
.end method

.method private declared-synchronized a(Lcom/inmobi/monetization/IMNative$a;)V
    .locals 1
    .parameter

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/inmobi/monetization/IMNative;->j:Lcom/inmobi/monetization/IMNative$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    monitor-exit p0

    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMNative;Lcom/inmobi/monetization/IMNative$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative$a;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/inmobi/monetization/IMNativeListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please initialize inmobi before requesting for native ads"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v0, Lcom/inmobi/monetization/internal/objects/NativeAd;

    invoke-direct {v0, v1, v1, v1}, Lcom/inmobi/monetization/internal/objects/NativeAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->e:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Lcom/inmobi/monetization/IMNative;->f:Lcom/inmobi/monetization/IMNativeListener;

    .line 69
    new-instance v0, Lcom/inmobi/monetization/internal/NativeAdRequest;

    iget-object v1, p0, Lcom/inmobi/monetization/IMNative;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/inmobi/monetization/internal/NativeAdRequest;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->h:Lcom/inmobi/monetization/internal/NativeAdRequest;

    .line 71
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/IMNative;->g:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 74
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please create a native ad instance in the main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMNative;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/inmobi/monetization/IMNative;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/monetization/IMNative;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/monetization/IMNative;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/inmobi/monetization/IMNative;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/inmobi/monetization/IMNative;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/monetization/IMNative;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/inmobi/monetization/IMNative;->d:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic d(Lcom/inmobi/monetization/IMNative;)Lcom/inmobi/monetization/IMNativeListener;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->f:Lcom/inmobi/monetization/IMNativeListener;

    return-object v0
.end method

.method static synthetic e(Lcom/inmobi/monetization/IMNative;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->g:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public attachToView(Landroid/view/ViewGroup;)V
    .locals 2
    .parameter

    .prologue
    .line 81
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please initialize inmobi before requesting for native ads"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/monetization/IMNative;->i:Z

    if-nez v0, :cond_1

    .line 87
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please load a native ad before attach"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v0

    .line 128
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please pass a valid view to attach"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_1
    if-nez p1, :cond_2

    .line 92
    :try_start_1
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please pass a valid view to attach"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 95
    :cond_2
    invoke-direct {p0}, Lcom/inmobi/monetization/IMNative;->a()Lcom/inmobi/monetization/IMNative$a;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->d:Lcom/inmobi/monetization/IMNative$a;

    if-ne v0, v1, :cond_3

    .line 96
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Ad is already attached"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_3
    invoke-direct {p0}, Lcom/inmobi/monetization/IMNative;->a()Lcom/inmobi/monetization/IMNative$a;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->c:Lcom/inmobi/monetization/IMNative$a;

    if-ne v0, v1, :cond_5

    .line 101
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->g:Landroid/os/Handler;

    if-nez v0, :cond_4

    .line 103
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please create a native ad instance in the main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->g:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/IMNative$b;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/monetization/IMNative$b;-><init>(Lcom/inmobi/monetization/IMNative;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 120
    sget-object v0, Lcom/inmobi/monetization/IMNative$a;->d:Lcom/inmobi/monetization/IMNative$a;

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative$a;)V

    goto :goto_0

    .line 124
    :cond_5
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Cannot attach an ad which is not ready or detached from view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public detachFromView()V
    .locals 2

    .prologue
    .line 133
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please initialize inmobi before requesting for native ads"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/monetization/IMNative;->i:Z

    if-nez v0, :cond_1

    .line 140
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please load a native ad before detach"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/monetization/IMNative;->a()Lcom/inmobi/monetization/IMNative$a;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->d:Lcom/inmobi/monetization/IMNative$a;

    if-ne v0, v1, :cond_3

    .line 145
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->g:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 147
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please create a native ad instance in the main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->g:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/IMNative$c;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMNative$c;-><init>(Lcom/inmobi/monetization/IMNative;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMNative;->i:Z

    .line 173
    sget-object v0, Lcom/inmobi/monetization/IMNative$a;->e:Lcom/inmobi/monetization/IMNative$a;

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative$a;)V

    goto :goto_0

    .line 176
    :cond_3
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please attach the native ad view before calling detach"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->b:Ljava/lang/String;

    return-object v0
.end method

.method public handleClick(Ljava/util/HashMap;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please initialize inmobi before requesting for native ads"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/monetization/IMNative;->i:Z

    if-nez v0, :cond_1

    .line 188
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Cannot handle click, native ad not loaded or detached from view"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/monetization/IMNative;->a()Lcom/inmobi/monetization/IMNative$a;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->d:Lcom/inmobi/monetization/IMNative$a;

    if-ne v0, v1, :cond_3

    .line 193
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->g:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 195
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please create a native ad instance in the main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 198
    :cond_2
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->g:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/IMNative$d;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/monetization/IMNative$d;-><init>(Lcom/inmobi/monetization/IMNative;Ljava/util/HashMap;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 212
    :cond_3
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please attach to view before handling any events"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadAd()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 221
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please initialize inmobi before requesting for native ads"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/inmobi/monetization/IMNative;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->g:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 232
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Please create a native ad instance in the main thread"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 235
    :cond_2
    invoke-direct {p0}, Lcom/inmobi/monetization/IMNative;->a()Lcom/inmobi/monetization/IMNative$a;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->a:Lcom/inmobi/monetization/IMNative$a;

    if-ne v0, v1, :cond_3

    .line 237
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Loading Native Ad"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/inmobi/monetization/IMNative$a;->b:Lcom/inmobi/monetization/IMNative$a;

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative$a;)V

    .line 239
    invoke-static {}, Lcom/inmobi/monetization/internal/NativeAdsController;->getInstance()Lcom/inmobi/monetization/internal/NativeAdsController;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMNative;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/monetization/IMNative;->h:Lcom/inmobi/monetization/internal/NativeAdRequest;

    iget-object v3, p0, Lcom/inmobi/monetization/IMNative;->k:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/monetization/internal/NativeAdsController;->getAd(Ljava/lang/String;Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;)V

    goto :goto_0

    .line 241
    :cond_3
    invoke-direct {p0}, Lcom/inmobi/monetization/IMNative;->a()Lcom/inmobi/monetization/IMNative$a;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->b:Lcom/inmobi/monetization/IMNative$a;

    if-ne v0, v1, :cond_4

    .line 243
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Ad is already loading. Please wait"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 245
    :cond_4
    invoke-direct {p0}, Lcom/inmobi/monetization/IMNative;->a()Lcom/inmobi/monetization/IMNative$a;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->g:Lcom/inmobi/monetization/IMNative$a;

    if-eq v0, v1, :cond_0

    .line 247
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "Loading native ad"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/inmobi/monetization/IMNative;->a()Lcom/inmobi/monetization/IMNative$a;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMNative$a;->d:Lcom/inmobi/monetization/IMNative$a;

    if-ne v0, v1, :cond_5

    .line 250
    invoke-virtual {p0}, Lcom/inmobi/monetization/IMNative;->detachFromView()V

    .line 252
    :cond_5
    iput-object v2, p0, Lcom/inmobi/monetization/IMNative;->b:Ljava/lang/String;

    .line 253
    iput-object v2, p0, Lcom/inmobi/monetization/IMNative;->c:Ljava/lang/String;

    .line 254
    iput-object v2, p0, Lcom/inmobi/monetization/IMNative;->d:Ljava/lang/String;

    .line 255
    sget-object v0, Lcom/inmobi/monetization/IMNative$a;->b:Lcom/inmobi/monetization/IMNative$a;

    invoke-direct {p0, v0}, Lcom/inmobi/monetization/IMNative;->a(Lcom/inmobi/monetization/IMNative$a;)V

    .line 256
    invoke-static {}, Lcom/inmobi/monetization/internal/NativeAdsController;->getInstance()Lcom/inmobi/monetization/internal/NativeAdsController;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMNative;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/monetization/IMNative;->h:Lcom/inmobi/monetization/internal/NativeAdRequest;

    iget-object v3, p0, Lcom/inmobi/monetization/IMNative;->k:Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/monetization/internal/NativeAdsController;->getAd(Ljava/lang/String;Lcom/inmobi/monetization/internal/NativeAdRequest;Lcom/inmobi/monetization/internal/abstraction/INativeAdListener;)V

    goto :goto_0
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 338
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 340
    :cond_0
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Keywords cannot be null or blank."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->h:Lcom/inmobi/monetization/internal/NativeAdRequest;

    invoke-virtual {v0, p1}, Lcom/inmobi/monetization/internal/NativeAdRequest;->setKeywords(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRefTagParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 324
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    :cond_0
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Ref tag key cannot be null or blank."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    :goto_0
    return-void

    .line 329
    :cond_1
    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 331
    :cond_2
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "RefTag value cannot be null or blank."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 334
    :cond_3
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->h:Lcom/inmobi/monetization/internal/NativeAdRequest;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/monetization/internal/NativeAdRequest;->setRefTagParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRequestParams(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    :cond_0
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Request params cannot be null or empty."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMNative;->h:Lcom/inmobi/monetization/internal/NativeAdRequest;

    invoke-virtual {v0, p1}, Lcom/inmobi/monetization/internal/NativeAdRequest;->setRequestParams(Ljava/util/Map;)V

    goto :goto_0
.end method
