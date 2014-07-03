.class public Lcom/inmobi/androidsdk/InterstitialView;
.super Ljava/lang/Object;
.source "InterstitialView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/InterstitialView$b;,
        Lcom/inmobi/androidsdk/InterstitialView$c;,
        Lcom/inmobi/androidsdk/InterstitialView$State;
    }
.end annotation


# instance fields
.field a:J

.field b:Z

.field private c:Lcom/inmobi/androidsdk/InterstitialView$State;

.field private d:Lcom/inmobi/androidsdk/AdRequest;

.field private e:Landroid/app/Activity;

.field private f:Ljava/lang/String;

.field private g:J

.field private h:Lcom/inmobi/androidsdk/InterstitialViewListener;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:J

.field private l:Lcom/inmobi/androidsdk/impl/UserInfo;

.field private m:Lcom/inmobi/re/container/IMWebView;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

.field private q:Lcom/inmobi/androidsdk/Mode;

.field private r:Z

.field private s:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

.field private t:Lcom/inmobi/androidsdk/InterstitialView$c;

.field private u:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Lcom/inmobi/androidsdk/InterstitialView$State;->INIT:Lcom/inmobi/androidsdk/InterstitialView$State;

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    .line 83
    new-instance v0, Lcom/inmobi/androidsdk/AdRequest;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/AdRequest;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->d:Lcom/inmobi/androidsdk/AdRequest;

    .line 87
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->g:J

    .line 108
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->o:Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/inmobi/androidsdk/Mode;->AD_NETWORK:Lcom/inmobi/androidsdk/Mode;

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->q:Lcom/inmobi/androidsdk/Mode;

    .line 203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->a:J

    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->b:Z

    .line 569
    new-instance v0, Lcom/inmobi/androidsdk/f;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/f;-><init>(Lcom/inmobi/androidsdk/InterstitialView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->s:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 826
    new-instance v0, Lcom/inmobi/androidsdk/InterstitialView$c;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/InterstitialView$c;-><init>(Lcom/inmobi/androidsdk/InterstitialView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->t:Lcom/inmobi/androidsdk/InterstitialView$c;

    .line 828
    new-instance v0, Lcom/inmobi/androidsdk/e;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/e;-><init>(Lcom/inmobi/androidsdk/InterstitialView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->u:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    .line 129
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/InterstitialView;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;J)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    sget-object v0, Lcom/inmobi/androidsdk/InterstitialView$State;->INIT:Lcom/inmobi/androidsdk/InterstitialView$State;

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    .line 83
    new-instance v0, Lcom/inmobi/androidsdk/AdRequest;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/AdRequest;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->d:Lcom/inmobi/androidsdk/AdRequest;

    .line 87
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->g:J

    .line 108
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->o:Ljava/lang/String;

    .line 117
    sget-object v0, Lcom/inmobi/androidsdk/Mode;->AD_NETWORK:Lcom/inmobi/androidsdk/Mode;

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->q:Lcom/inmobi/androidsdk/Mode;

    .line 203
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->a:J

    .line 479
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->b:Z

    .line 569
    new-instance v0, Lcom/inmobi/androidsdk/f;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/f;-><init>(Lcom/inmobi/androidsdk/InterstitialView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->s:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 826
    new-instance v0, Lcom/inmobi/androidsdk/InterstitialView$c;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/InterstitialView$c;-><init>(Lcom/inmobi/androidsdk/InterstitialView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->t:Lcom/inmobi/androidsdk/InterstitialView$c;

    .line 828
    new-instance v0, Lcom/inmobi/androidsdk/e;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/e;-><init>(Lcom/inmobi/androidsdk/InterstitialView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->u:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    .line 144
    iput-wide p3, p0, Lcom/inmobi/androidsdk/InterstitialView;->g:J

    .line 145
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/InterstitialView;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/InterstitialView;Lcom/inmobi/androidsdk/InterstitialView$State;)Lcom/inmobi/androidsdk/InterstitialView$State;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/androidsdk/InterstitialViewListener;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->h:Lcom/inmobi/androidsdk/InterstitialViewListener;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/InterstitialView;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/InterstitialView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->i:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 5

    .prologue
    .line 301
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    if-nez v1, :cond_0

    .line 306
    new-instance v1, Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v2, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/inmobi/androidsdk/impl/UserInfo;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 309
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 310
    iget-object v2, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 314
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 315
    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getDisplayWidth(Landroid/view/Display;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    .line 317
    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getDisplayHeight(Landroid/view/Display;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 320
    iget-object v3, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setScreenDensity(Ljava/lang/String;)V

    .line 321
    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "X"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setScreenSize(Ljava/lang/String;)V

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setPhoneDefaultUserAgent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/androidsdk/InterstitialView;->d:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/UserInfo;->updateInfo(Ljava/lang/String;Lcom/inmobi/androidsdk/AdRequest;)V

    .line 339
    const/16 v0, 0xe

    .line 342
    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 343
    const/16 v0, 0x11

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->setAdUnitSlot(Ljava/lang/String;)V

    .line 346
    iget-wide v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-wide v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->g:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setSlotId(Ljava/lang/String;)V

    .line 348
    :cond_2
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    const-string v1, "[InMobi]-[Network]-4.1.1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception occured while setting user agent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 510
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->h:Lcom/inmobi/androidsdk/InterstitialViewListener;

    if-nez v0, :cond_0

    .line 567
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    new-instance v1, Lcom/inmobi/androidsdk/InterstitialView$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/androidsdk/InterstitialView$a;-><init>(Lcom/inmobi/androidsdk/InterstitialView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Activity cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 156
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 159
    :try_start_0
    invoke-static {p1}, Lcom/inmobi/androidsdk/impl/SDKUtil;->validateAdConfiguration(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/inmobi/androidsdk/impl/ConfigException; {:try_start_0 .. :try_end_0} :catch_1

    .line 169
    :goto_1
    invoke-static {p1}, Lcom/inmobi/androidsdk/impl/SDKUtil;->getRootActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    .line 172
    const-class v0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->setIMAIController(Ljava/lang/Class;)V

    .line 174
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 176
    const-string v1, "[InMobi]-[Network]-4.1.1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Publisher device Id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 182
    :goto_2
    iput-object p2, p0, Lcom/inmobi/androidsdk/InterstitialView;->f:Ljava/lang/String;

    .line 183
    invoke-direct {p0}, Lcom/inmobi/androidsdk/InterstitialView;->a()V

    .line 185
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/inmobi/androidsdk/impl/ConnBroadcastReciever;

    invoke-direct {v1}, Lcom/inmobi/androidsdk/impl/ConnBroadcastReciever;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v0

    .line 190
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Cannot register network receiver"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 160
    :catch_1
    move-exception v0

    .line 161
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "IMConfigException occured while initializing interstitial while validating adConfig"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 178
    :catch_2
    move-exception v0

    .line 179
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Cannot get publisher device id"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/InterstitialView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/InterstitialView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 625
    if-eqz p1, :cond_1

    .line 626
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 627
    const-string v0, "%"

    const-string v1, "%25"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->t:Lcom/inmobi/androidsdk/InterstitialView$c;

    const/16 v2, 0x12f

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/InterstitialView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->requestOnPageFinishedCallback(Landroid/os/Message;)V

    .line 632
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->j:J

    .line 633
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->t:Lcom/inmobi/androidsdk/InterstitialView$c;

    const/16 v1, 0x133

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getRenderTimeOut()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/InterstitialView$c;->sendEmptyMessageDelayed(IJ)Z

    .line 637
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    const-string v1, ""

    const-string v3, "text/html"

    move-object v2, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/inmobi/re/container/IMWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :goto_0
    return-void

    .line 639
    :cond_1
    sget-object v0, Lcom/inmobi/androidsdk/InterstitialView$State;->INIT:Lcom/inmobi/androidsdk/InterstitialView$State;

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    .line 640
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Cannot load Ad. Invalid Ad Response"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const/16 v0, 0x65

    sget-object v1, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/androidsdk/InterstitialView$c;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->t:Lcom/inmobi/androidsdk/InterstitialView$c;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/InterstitialView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->n:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/InterstitialView;)J
    .locals 2
    .parameter

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->k:J

    return-wide v0
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/InterstitialView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/InterstitialView;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/InterstitialView;)Z
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->r:Z

    return v0
.end method

.method static synthetic e(Lcom/inmobi/androidsdk/InterstitialView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/re/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method

.method static synthetic g(Lcom/inmobi/androidsdk/InterstitialView;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic h(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/re/container/IMWebView$IMWebViewListener;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->u:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    return-object v0
.end method

.method static synthetic i(Lcom/inmobi/androidsdk/InterstitialView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/inmobi/androidsdk/InterstitialView;)J
    .locals 2
    .parameter

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->j:J

    return-wide v0
.end method

.method static synthetic k(Lcom/inmobi/androidsdk/InterstitialView;)Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->p:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 497
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    .line 504
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 500
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Unable to destroy webview, or it has been destroyed already."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disableHardwareAcceleration()V
    .locals 1

    .prologue
    .line 486
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->b:Z

    .line 487
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    .line 489
    :cond_0
    return-void
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getIMAdInterstitialListener()Lcom/inmobi/androidsdk/InterstitialViewListener;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->h:Lcom/inmobi/androidsdk/InterstitialViewListener;

    return-object v0
.end method

.method public getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->d:Lcom/inmobi/androidsdk/AdRequest;

    return-object v0
.end method

.method public getSlotId()J
    .locals 2

    .prologue
    .line 443
    iget-wide v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->g:J

    return-wide v0
.end method

.method public getState()Lcom/inmobi/androidsdk/InterstitialView$State;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    return-object v0
.end method

.method public loadNewAd()V
    .locals 6

    .prologue
    const/16 v5, 0x65

    .line 214
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v1

    .line 215
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/metric/Logger;->startNewSample()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->r:Z

    .line 217
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v2, " >>>> Start loading new Interstitial Ad <<<<"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 222
    const-string v2, "[InMobi]-[Network]-4.1.1"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Publisher device Id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->e:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    sget-object v0, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v5, v0}, Lcom/inmobi/androidsdk/InterstitialView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    .line 275
    :goto_1
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    const-string v2, "[InMobi]-[Network]-4.1.1"

    const-string v3, "Cannot get publisher device id"

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    sget-object v2, Lcom/inmobi/androidsdk/InterstitialView$State;->LOADING:Lcom/inmobi/androidsdk/InterstitialView$State;

    if-ne v0, v2, :cond_1

    .line 236
    sget-object v0, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->AD_DOWNLOAD_IN_PROGRESS:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v5, v0}, Lcom/inmobi/androidsdk/InterstitialView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_1

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    sget-object v2, Lcom/inmobi/androidsdk/InterstitialView$State;->ACTIVE:Lcom/inmobi/androidsdk/InterstitialView$State;

    if-ne v0, v2, :cond_2

    .line 240
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Interstitial ad is in ACTIVE state. Try again after sometime."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    sget-object v0, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v5, v0}, Lcom/inmobi/androidsdk/InterstitialView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_1

    .line 247
    :cond_2
    sget-object v0, Lcom/inmobi/androidsdk/InterstitialView$State;->LOADING:Lcom/inmobi/androidsdk/InterstitialView$State;

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    .line 249
    invoke-direct {p0}, Lcom/inmobi/androidsdk/InterstitialView;->a()V

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inmobi/androidsdk/InterstitialView;->a:J

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inmobi/androidsdk/InterstitialView;->k:J

    .line 254
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->t:Lcom/inmobi/androidsdk/InterstitialView$c;

    const/16 v2, 0x132

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getFetchTimeOut()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/inmobi/androidsdk/InterstitialView$c;->sendEmptyMessageDelayed(IJ)Z

    .line 258
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->p:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    .line 266
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->q:Lcom/inmobi/androidsdk/Mode;

    sget-object v2, Lcom/inmobi/androidsdk/Mode;->APP_GALLERY:Lcom/inmobi/androidsdk/Mode;

    if-ne v0, v2, :cond_3

    .line 267
    invoke-virtual {v1}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getAppAppGalleryConfigParams()Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 272
    :goto_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->p:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iget-object v2, p0, Lcom/inmobi/androidsdk/InterstitialView;->l:Lcom/inmobi/androidsdk/impl/UserInfo;

    sget-object v3, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest_Interstitial:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    iget-object v4, p0, Lcom/inmobi/androidsdk/InterstitialView;->s:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->asyncRequestAd(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V

    goto :goto_1

    .line 269
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->o:Ljava/lang/String;

    goto :goto_2
.end method

.method public loadNewAd(Lcom/inmobi/androidsdk/AdRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 287
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->d:Lcom/inmobi/androidsdk/AdRequest;

    .line 288
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/InterstitialView;->loadNewAd()V

    .line 289
    return-void
.end method

.method public setAdServerUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->o:Ljava/lang/String;

    .line 297
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 434
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->f:Ljava/lang/String;

    .line 435
    return-void
.end method

.method public setIMAdInterstitialListener(Lcom/inmobi/androidsdk/InterstitialViewListener;)V
    .locals 0
    .parameter

    .prologue
    .line 396
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->h:Lcom/inmobi/androidsdk/InterstitialViewListener;

    .line 397
    return-void
.end method

.method public setIMAdRequest(Lcom/inmobi/androidsdk/AdRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->d:Lcom/inmobi/androidsdk/AdRequest;

    .line 416
    return-void
.end method

.method public setMode(Lcom/inmobi/androidsdk/Mode;)V
    .locals 0
    .parameter

    .prologue
    .line 457
    iput-object p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->q:Lcom/inmobi/androidsdk/Mode;

    .line 458
    return-void
.end method

.method public setSlotId(J)V
    .locals 0
    .parameter

    .prologue
    .line 453
    iput-wide p1, p0, Lcom/inmobi/androidsdk/InterstitialView;->g:J

    .line 454
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 357
    :try_start_0
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Showing the Interstitial Ad. "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    sget-object v1, Lcom/inmobi/androidsdk/InterstitialView$State;->READY:Lcom/inmobi/androidsdk/InterstitialView$State;

    if-eq v0, v1, :cond_1

    .line 361
    const-string v0, "[InMobi]-[Network]-4.1.1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial ad is not in the \'READY\' state. Current state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/androidsdk/InterstitialView;->c:Lcom/inmobi/androidsdk/InterstitialView$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->t:Lcom/inmobi/androidsdk/InterstitialView$c;

    const/16 v2, 0x130

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/InterstitialView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->requestOnInterstitialClosed(Landroid/os/Message;)V

    .line 369
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/InterstitialView;->t:Lcom/inmobi/androidsdk/InterstitialView$c;

    const/16 v2, 0x131

    invoke-virtual {v1, v2}, Lcom/inmobi/androidsdk/InterstitialView$c;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->requestOnInterstitialShown(Landroid/os/Message;)V

    .line 371
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->m:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mInterstitialController:Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;

    invoke-virtual {v0}, Lcom/inmobi/re/container/mraidimpl/MRAIDInterstitialController;->changeContentAreaForInterstitials()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 374
    :catch_0
    move-exception v0

    .line 375
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Error showing ad "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 3

    .prologue
    const/16 v2, 0x133

    const/16 v1, 0x132

    .line 470
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->t:Lcom/inmobi/androidsdk/InterstitialView$c;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView$c;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->t:Lcom/inmobi/androidsdk/InterstitialView$c;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView$c;->removeMessages(I)V

    .line 472
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->t:Lcom/inmobi/androidsdk/InterstitialView$c;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView$c;->sendEmptyMessage(I)Z

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->t:Lcom/inmobi/androidsdk/InterstitialView$c;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/InterstitialView$c;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->t:Lcom/inmobi/androidsdk/InterstitialView$c;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/InterstitialView$c;->removeMessages(I)V

    .line 475
    iget-object v0, p0, Lcom/inmobi/androidsdk/InterstitialView;->t:Lcom/inmobi/androidsdk/InterstitialView$c;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/InterstitialView$c;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
