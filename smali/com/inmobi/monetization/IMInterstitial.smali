.class public Lcom/inmobi/monetization/IMInterstitial;
.super Ljava/lang/Object;
.source "IMInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/monetization/IMInterstitial$a;,
        Lcom/inmobi/monetization/IMInterstitial$AdMode;,
        Lcom/inmobi/monetization/IMInterstitial$State;
    }
.end annotation


# static fields
.field private static f:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;


# instance fields
.field a:Lcom/inmobi/androidsdk/InterstitialView;

.field b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

.field c:Lcom/inmobi/monetization/IMInterstitial$AdMode;

.field d:Z

.field private e:Lcom/inmobi/monetization/IMInterstitialListener;

.field private g:J

.field private h:Landroid/app/Activity;

.field private i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private j:Lcom/inmobi/monetization/IMInterstitial$State;

.field private k:Landroid/os/Handler;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/monetization/IMInterstitial;->f:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->g:J

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Lcom/inmobi/monetization/IMInterstitial$State;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->k:Landroid/os/Handler;

    .line 81
    iput-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->n:Ljava/util/Map;

    .line 84
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$AdMode;->AD_NETWORK:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->c:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    .line 85
    iput-boolean v3, p0, Lcom/inmobi/monetization/IMInterstitial;->d:Z

    .line 104
    iput-wide p2, p0, Lcom/inmobi/monetization/IMInterstitial;->g:J

    .line 105
    invoke-direct {p0, p1}, Lcom/inmobi/monetization/IMInterstitial;->a(Landroid/app/Activity;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->MEDIATION:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    .line 76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->g:J

    .line 78
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Lcom/inmobi/monetization/IMInterstitial$State;

    .line 80
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->k:Landroid/os/Handler;

    .line 81
    iput-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->n:Ljava/util/Map;

    .line 84
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$AdMode;->AD_NETWORK:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->c:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    .line 85
    iput-boolean v3, p0, Lcom/inmobi/monetization/IMInterstitial;->d:Z

    .line 92
    invoke-direct {p0, p1}, Lcom/inmobi/monetization/IMInterstitial;->a(Landroid/app/Activity;)V

    .line 93
    iput-object p2, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Ljava/lang/String;

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMInterstitial$State;)Lcom/inmobi/monetization/IMInterstitial$State;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 26
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Lcom/inmobi/monetization/IMInterstitial$State;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/monetization/IMInterstitial;)Lcom/inmobi/monetization/IMInterstitialListener;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->e:Lcom/inmobi/monetization/IMInterstitialListener;

    return-object v0
.end method

.method private a()Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;
    .locals 3

    .prologue
    .line 398
    invoke-static {}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor;->getInstance()Lcom/inmobi/monetization/internal/LtvpRuleProcessor;

    move-result-object v0

    iget-wide v1, p0, Lcom/inmobi/monetization/IMInterstitial;->g:J

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor;->getLtvpRuleConfig(J)Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    move-result-object v0

    return-object v0
.end method

.method private a(J)V
    .locals 3
    .parameter

    .prologue
    .line 317
    new-instance v0, Lcom/inmobi/androidsdk/InterstitialView;

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->h:Landroid/app/Activity;

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/inmobi/androidsdk/InterstitialView;-><init>(Landroid/app/Activity;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    .line 318
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    new-instance v1, Lcom/inmobi/monetization/IMInterstitial$e;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMInterstitial$e;-><init>(Lcom/inmobi/monetization/IMInterstitial;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->setIMAdInterstitialListener(Lcom/inmobi/androidsdk/InterstitialViewListener;)V

    .line 380
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 4
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->h:Landroid/app/Activity;

    .line 384
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_1
    iget-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->a()Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    goto :goto_0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Cannot start ice. Activity is null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/inmobi/monetization/IMInterstitial;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private b()V
    .locals 4

    .prologue
    .line 402
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    if-ne v0, v1, :cond_0

    .line 413
    :cond_2
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->d()V

    .line 414
    iget-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 415
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->a()Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    .line 416
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial;->f:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    if-eqz v0, :cond_3

    .line 417
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial;->f:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    .line 419
    :cond_3
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$a;->a:[I

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->b:Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;

    invoke-virtual {v1}, Lcom/inmobi/monetization/internal/LtvpRuleProcessor$ActionsRule;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 453
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->e()V

    .line 454
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->k:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/IMInterstitial$b;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMInterstitial$b;-><init>(Lcom/inmobi/monetization/IMInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 466
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/monetization/internal/MonetizationUtils;->updateIMAdRequest(Lcom/inmobi/androidsdk/AdRequest;)V

    .line 468
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->n:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 469
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->n:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setRequestParams(Ljava/util/Map;)V

    .line 470
    :cond_5
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 471
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/AdRequest;->setKeywords(Ljava/lang/String;)V

    .line 472
    :cond_6
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->c:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$AdMode;->AD_NETWORK:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/inmobi/androidsdk/Mode;->AD_NETWORK:Lcom/inmobi/androidsdk/Mode;

    .line 474
    :goto_2
    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/InterstitialView;->setMode(Lcom/inmobi/androidsdk/Mode;)V

    .line 475
    iget-boolean v0, p0, Lcom/inmobi/monetization/IMInterstitial;->d:Z

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->disableHardwareAcceleration()V

    goto/16 :goto_0

    .line 422
    :pswitch_0
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->c()V

    goto :goto_1

    .line 425
    :pswitch_1
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->e()V

    .line 426
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->k:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/IMInterstitial$d;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMInterstitial$d;-><init>(Lcom/inmobi/monetization/IMInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 439
    :pswitch_2
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->e()V

    .line 440
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->k:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/IMInterstitial$c;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMInterstitial$c;-><init>(Lcom/inmobi/monetization/IMInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 472
    :cond_7
    sget-object v0, Lcom/inmobi/androidsdk/Mode;->APP_GALLERY:Lcom/inmobi/androidsdk/Mode;

    goto :goto_2

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private c()V
    .locals 3

    .prologue
    .line 482
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->d()V

    .line 483
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getEndPoints()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsEndPointsConfig;->getHouseUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->setAdServerUrl(Ljava/lang/String;)V

    .line 485
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    iget-wide v1, p0, Lcom/inmobi/monetization/IMInterstitial;->g:J

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/InterstitialView;->setSlotId(J)V

    .line 486
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/inmobi/monetization/internal/MonetizationUtils;->buildLtvpRequestMap(Landroid/view/View;)Ljava/util/Map;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/InterstitialView;->getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/AdRequest;->setRequestParams(Ljava/util/Map;)V

    .line 488
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-static {}, Lcom/inmobi/commons/InMobi;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->setAppId(Ljava/lang/String;)V

    .line 489
    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-nez v0, :cond_0

    .line 493
    iget-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->g:J

    invoke-direct {p0, v0, v1}, Lcom/inmobi/monetization/IMInterstitial;->a(J)V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 496
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    iget-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->setAppId(Ljava/lang/String;)V

    .line 497
    :cond_1
    return-void
.end method

.method private e()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 500
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/InterstitialView;->setIMAdInterstitialListener(Lcom/inmobi/androidsdk/InterstitialViewListener;)V

    .line 502
    iput-object v1, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    .line 504
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->destroy()V

    .line 269
    :cond_0
    return-void
.end method

.method public disableHardwareAcceleration()V
    .locals 1

    .prologue
    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/monetization/IMInterstitial;->d:Z

    .line 259
    return-void
.end method

.method public getState()Lcom/inmobi/monetization/IMInterstitial$State;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Lcom/inmobi/monetization/IMInterstitial$State;

    return-object v0
.end method

.method public loadInterstitial()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 123
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->isInitializedSuccessfully()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/monetization/IMInterstitial;->b()V

    .line 127
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->READY:Lcom/inmobi/monetization/IMInterstitial$State;

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/inmobi/monetization/IMInterstitial;->getState()Lcom/inmobi/monetization/IMInterstitial$State;

    move-result-object v0

    sget-object v1, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    if-eq v0, v1, :cond_3

    .line 129
    :cond_1
    sget-object v1, Lcom/inmobi/monetization/IMErrorCode;->INVALID_REQUEST:Lcom/inmobi/monetization/IMErrorCode;

    .line 131
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    const-string v0, "Interstitial load is already in progress."

    .line 136
    :goto_1
    invoke-virtual {v1, v0}, Lcom/inmobi/monetization/IMErrorCode;->setMessage(Ljava/lang/String;)V

    .line 137
    iget-object v2, p0, Lcom/inmobi/monetization/IMInterstitial;->k:Landroid/os/Handler;

    new-instance v3, Lcom/inmobi/monetization/IMInterstitial$g;

    invoke-direct {v3, p0, v1}, Lcom/inmobi/monetization/IMInterstitial$g;-><init>(Lcom/inmobi/monetization/IMInterstitial;Lcom/inmobi/monetization/IMErrorCode;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 146
    const-string v1, "[InMobi]-[Monetization]"

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    const-string v0, "Interstitial can only be loaded in init or ready state."

    goto :goto_1

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 151
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->LOADING:Lcom/inmobi/monetization/IMInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Lcom/inmobi/monetization/IMInterstitial$State;

    .line 152
    const-string v0, "[InMobi]-[Monetization]"

    const-string v1, "loading"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_6

    .line 154
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->loadNewAd()V

    goto :goto_0

    .line 158
    :cond_5
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 159
    sget-object v0, Lcom/inmobi/monetization/IMInterstitial$State;->INIT:Lcom/inmobi/monetization/IMInterstitial$State;

    iput-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->j:Lcom/inmobi/monetization/IMInterstitial$State;

    .line 160
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->k:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/monetization/IMInterstitial$f;

    invoke-direct {v1, p0}, Lcom/inmobi/monetization/IMInterstitial$f;-><init>(Lcom/inmobi/monetization/IMInterstitial;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 173
    :cond_6
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 185
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    :cond_0
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "AppId cannot be null or blank."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->g:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 191
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "A new appId cannot be set if a slotId is already set."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_2
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method public setIMInterstitialListener(Lcom/inmobi/monetization/IMInterstitialListener;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->e:Lcom/inmobi/monetization/IMInterstitialListener;

    .line 222
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 272
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Keywords cannot be null or blank."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    :goto_0
    return-void

    .line 277
    :cond_1
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMode(Lcom/inmobi/monetization/IMInterstitial$AdMode;)V
    .locals 2
    .parameter

    .prologue
    .line 230
    if-eqz p1, :cond_0

    .line 231
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->c:Lcom/inmobi/monetization/IMInterstitial$AdMode;

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "AdMode cannot be null."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

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
    .line 281
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    :cond_0
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Request params cannot be null or empty."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :goto_0
    return-void

    .line 287
    :cond_1
    iput-object p1, p0, Lcom/inmobi/monetization/IMInterstitial;->n:Ljava/util/Map;

    goto :goto_0
.end method

.method public setSlotId(J)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 298
    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 299
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Invalid slotId : -1"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 302
    :cond_1
    iget-wide v0, p0, Lcom/inmobi/monetization/IMInterstitial;->g:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->l:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 303
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "A new slotId can be set only if a valid slotId is provided during object construction."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_2
    iput-wide p1, p0, Lcom/inmobi/monetization/IMInterstitial;->g:J

    .line 310
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    iget-wide v1, p0, Lcom/inmobi/monetization/IMInterstitial;->g:J

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/InterstitialView;->setSlotId(J)V

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->show()V

    .line 208
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->h:Landroid/app/Activity;

    invoke-static {v0}, Lcom/inmobi/commons/internal/ThinICE;->start(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Cannot start ice. Activity is null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/inmobi/monetization/IMInterstitial;->a:Lcom/inmobi/androidsdk/InterstitialView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/InterstitialView;->stopLoading()V

    .line 251
    :cond_0
    return-void
.end method
