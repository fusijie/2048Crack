.class public final Lcom/inmobi/androidsdk/BannerView;
.super Landroid/widget/RelativeLayout;
.source "BannerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/androidsdk/BannerView$c;,
        Lcom/inmobi/androidsdk/BannerView$d;
    }
.end annotation


# static fields
.field public static final INMOBI_AD_UNIT_120X600:I = 0xd

.field public static final INMOBI_AD_UNIT_300X250:I = 0xa

.field public static final INMOBI_AD_UNIT_320X48:I = 0x9

.field public static final INMOBI_AD_UNIT_320X50:I = 0xf

.field public static final INMOBI_AD_UNIT_468X60:I = 0xc

.field public static final INMOBI_AD_UNIT_728X90:I = 0xb

.field public static final INMOBI_INTERNAL_TAG:Ljava/lang/String; = "ref-__in__rt"

.field public static final INMOBI_REF_TAG:Ljava/lang/String; = "ref-tag"


# instance fields
.field private A:Lcom/inmobi/androidsdk/BannerView$d;

.field private B:Landroid/view/animation/Animation$AnimationListener;

.field private C:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

.field private D:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

.field private E:Z

.field private a:Lcom/inmobi/re/container/IMWebView;

.field private b:Lcom/inmobi/re/container/IMWebView;

.field private c:Lcom/inmobi/re/container/IMWebView;

.field private d:Landroid/app/Activity;

.field private e:Z

.field private f:Lcom/inmobi/androidsdk/impl/UserInfo;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:Landroid/view/animation/Animation;

.field private j:Landroid/view/animation/Animation;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/inmobi/androidsdk/BannerViewListener;

.field private n:Lcom/inmobi/androidsdk/AdRequest;

.field private o:Ljava/lang/String;

.field private p:I

.field private q:J

.field private r:J

.field private s:J

.field private t:Z

.field private u:Lcom/inmobi/commons/AnimationType;

.field private v:Z

.field private w:Lcom/inmobi/androidsdk/a;

.field private x:Ljava/lang/String;

.field private y:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;-><init>(Landroid/content/Context;)V

    .line 207
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/BannerView;->a(Landroid/app/Activity;ILjava/lang/String;)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILjava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;-><init>(Landroid/content/Context;)V

    .line 236
    iput-wide p4, p0, Lcom/inmobi/androidsdk/BannerView;->q:J

    .line 237
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/androidsdk/BannerView;->a(Landroid/app/Activity;ILjava/lang/String;)V

    .line 238
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 182
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 130
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->e:Z

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    iput-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->k:Ljava/lang/String;

    .line 137
    iput-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->l:Ljava/lang/String;

    .line 141
    new-instance v0, Lcom/inmobi/androidsdk/AdRequest;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/AdRequest;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->n:Lcom/inmobi/androidsdk/AdRequest;

    .line 148
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->q:J

    .line 151
    iput-wide v3, p0, Lcom/inmobi/androidsdk/BannerView;->r:J

    .line 153
    iput-wide v3, p0, Lcom/inmobi/androidsdk/BannerView;->s:J

    .line 155
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->t:Z

    .line 157
    sget-object v0, Lcom/inmobi/commons/AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/commons/AnimationType;

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->u:Lcom/inmobi/commons/AnimationType;

    .line 159
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->v:Z

    .line 161
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->x:Ljava/lang/String;

    .line 1090
    new-instance v0, Lcom/inmobi/androidsdk/BannerView$d;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/BannerView$d;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    .line 1127
    new-instance v0, Lcom/inmobi/androidsdk/d;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/d;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->B:Landroid/view/animation/Animation$AnimationListener;

    .line 1188
    new-instance v0, Lcom/inmobi/androidsdk/c;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/c;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->C:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 1283
    new-instance v0, Lcom/inmobi/androidsdk/b;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/b;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->D:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    .line 1360
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->E:Z

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 249
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->e:Z

    .line 132
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 133
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 136
    iput-object v3, p0, Lcom/inmobi/androidsdk/BannerView;->k:Ljava/lang/String;

    .line 137
    iput-object v3, p0, Lcom/inmobi/androidsdk/BannerView;->l:Ljava/lang/String;

    .line 141
    new-instance v0, Lcom/inmobi/androidsdk/AdRequest;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/AdRequest;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->n:Lcom/inmobi/androidsdk/AdRequest;

    .line 148
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->q:J

    .line 151
    iput-wide v4, p0, Lcom/inmobi/androidsdk/BannerView;->r:J

    .line 153
    iput-wide v4, p0, Lcom/inmobi/androidsdk/BannerView;->s:J

    .line 155
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->t:Z

    .line 157
    sget-object v0, Lcom/inmobi/commons/AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/commons/AnimationType;

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->u:Lcom/inmobi/commons/AnimationType;

    .line 159
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->v:Z

    .line 161
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->x:Ljava/lang/String;

    .line 1090
    new-instance v0, Lcom/inmobi/androidsdk/BannerView$d;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/BannerView$d;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    .line 1127
    new-instance v0, Lcom/inmobi/androidsdk/d;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/d;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->B:Landroid/view/animation/Animation$AnimationListener;

    .line 1188
    new-instance v0, Lcom/inmobi/androidsdk/c;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/c;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->C:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    .line 1283
    new-instance v0, Lcom/inmobi/androidsdk/b;

    invoke-direct {v0, p0}, Lcom/inmobi/androidsdk/b;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->D:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    .line 1360
    iput-boolean v2, p0, Lcom/inmobi/androidsdk/BannerView;->E:Z

    .line 250
    if-nez p2, :cond_0

    .line 251
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Missing attributes in xml layout of IMAdview "

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    :goto_0
    return-void

    .line 254
    :cond_0
    const-string v0, "appId"

    invoke-interface {p2, v3, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    const-string v1, "adSize"

    const/4 v2, -0x1

    invoke-interface {p2, v3, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 256
    const-string v2, "slotId"

    invoke-interface {p2, v3, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    if-eqz v2, :cond_1

    .line 258
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inmobi/androidsdk/BannerView;->q:J

    .line 260
    :cond_1
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1, v1, v0}, Lcom/inmobi/androidsdk/BannerView;->a(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/BannerViewListener;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->m:Lcom/inmobi/androidsdk/BannerViewListener;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/BannerView;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/BannerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->k:Ljava/lang/String;

    return-object p1
.end method

.method private a(I)V
    .locals 2
    .parameter

    .prologue
    .line 354
    if-gez p1, :cond_0

    .line 355
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Invalid Ad Size. Please provide a valid Ad Size. If Ad Size is declared in the layout XML, please provide a valid \'adSize\' attribute in the \'com.inmobi.androidsdk.IMAdView\' tag of layout XML. For example, adSize=\"yourAdSize\""

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    :cond_0
    return-void
.end method

.method private a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 771
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->E:Z

    if-nez v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    new-instance v1, Lcom/inmobi/androidsdk/BannerView$b;

    invoke-direct {v1, p0}, Lcom/inmobi/androidsdk/BannerView$b;-><init>(Lcom/inmobi/androidsdk/BannerView;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 780
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->v:Z

    if-nez v0, :cond_2

    .line 781
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "IMAdView not sending callback because the view is not added to any window."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :cond_1
    :goto_0
    return-void

    .line 787
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->m:Lcom/inmobi/androidsdk/BannerViewListener;

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    new-instance v1, Lcom/inmobi/androidsdk/BannerView$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/androidsdk/BannerView$a;-><init>(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private a(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 363
    :try_start_0
    invoke-static {p1}, Lcom/inmobi/androidsdk/impl/SDKUtil;->validateAdConfiguration(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/inmobi/androidsdk/impl/ConfigException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 374
    invoke-direct {p0, p2}, Lcom/inmobi/androidsdk/BannerView;->a(I)V

    .line 376
    iput-object p3, p0, Lcom/inmobi/androidsdk/BannerView;->o:Ljava/lang/String;

    .line 377
    iput p2, p0, Lcom/inmobi/androidsdk/BannerView;->p:I

    .line 379
    invoke-static {p1}, Lcom/inmobi/androidsdk/impl/SDKUtil;->getRootActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    .line 381
    const-class v0, Lcom/inmobi/androidsdk/impl/imai/IMAIController;

    invoke-static {v0}, Lcom/inmobi/re/container/IMWebView;->setIMAIController(Ljava/lang/Class;)V

    .line 383
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 385
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
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 392
    :goto_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    if-nez v0, :cond_1

    .line 393
    new-instance v0, Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->D:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/inmobi/re/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    .line 395
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->E:Z

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/androidsdk/impl/imai/IMAIController;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v1, v2}, Lcom/inmobi/androidsdk/impl/imai/IMAIController;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    const-string v2, "imaiController"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    if-nez v0, :cond_3

    .line 402
    new-instance v0, Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->D:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v2, v4, v4}, Lcom/inmobi/re/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    .line 404
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->E:Z

    if-nez v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    .line 406
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 409
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    iput-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    .line 410
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/androidsdk/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    new-instance v1, Lcom/inmobi/androidsdk/impl/imai/IMAIController;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-direct {v1, v2}, Lcom/inmobi/androidsdk/impl/imai/IMAIController;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    const-string v2, "imaiController"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 414
    :cond_3
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->d()V

    .line 417
    new-instance v0, Lcom/inmobi/androidsdk/a;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->B:Landroid/view/animation/Animation$AnimationListener;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/androidsdk/a;-><init>(Lcom/inmobi/androidsdk/BannerView;Landroid/view/animation/Animation$AnimationListener;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->w:Lcom/inmobi/androidsdk/a;

    .line 418
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/inmobi/androidsdk/impl/ConnBroadcastReciever;

    invoke-direct {v1}, Lcom/inmobi/androidsdk/impl/ConnBroadcastReciever;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 421
    return-void

    .line 364
    :catch_0
    move-exception v0

    .line 365
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "IMConfigException occured while initializing interstitial while validating adView"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 387
    :catch_1
    move-exception v0

    .line 388
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Cannot get publisher device id"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/BannerView;ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/androidsdk/BannerView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x65

    const/4 v3, 0x0

    .line 470
    if-eqz p1, :cond_4

    .line 473
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 474
    const-string v0, "%"

    const-string v1, "%25"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 478
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    if-nez v0, :cond_1

    .line 479
    new-instance v0, Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->D:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/inmobi/re/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    .line 481
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->E:Z

    if-nez v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    .line 484
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    .line 495
    :goto_0
    new-instance v1, Lcom/inmobi/androidsdk/impl/imai/IMAIController;

    invoke-direct {v1, v0}, Lcom/inmobi/androidsdk/impl/imai/IMAIController;-><init>(Lcom/inmobi/re/container/IMWebView;)V

    const-string v2, "imaiController"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v1, v5}, Lcom/inmobi/androidsdk/BannerView$d;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->requestOnPageFinishedCallback(Landroid/os/Message;)V

    .line 501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/inmobi/androidsdk/BannerView;->r:J

    .line 502
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    const/16 v2, 0x6c

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getRenderTimeOut()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v1, v2, v5, v6}, Lcom/inmobi/androidsdk/BannerView$d;->sendEmptyMessageDelayed(IJ)Z

    .line 505
    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->resetMraid()V

    .line 506
    const-string v1, ""

    const-string v3, "text/html"

    move-object v2, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/inmobi/re/container/IMWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :goto_1
    return-void

    .line 486
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    if-nez v0, :cond_3

    .line 487
    new-instance v0, Lcom/inmobi/re/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->D:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/inmobi/re/container/IMWebView;-><init>(Landroid/content/Context;Lcom/inmobi/re/container/IMWebView$IMWebViewListener;ZZ)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    .line 489
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->E:Z

    if-nez v0, :cond_3

    .line 490
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    .line 492
    :cond_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    goto :goto_0

    .line 510
    :cond_4
    invoke-direct {p0, v3}, Lcom/inmobi/androidsdk/BannerView;->a(Z)V

    .line 511
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Cannot load Ad. Invalid Ad Response"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    sget-object v0, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v5, v0}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_1
.end method

.method private a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 692
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 693
    return-void
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/BannerView;)J
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->s:J

    return-wide v0
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/BannerView;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    return-object p1
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/BannerView;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 733
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 734
    return-void
.end method

.method static synthetic b(Lcom/inmobi/androidsdk/BannerView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/BannerView;->t:Z

    return p1
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/BannerView;Lcom/inmobi/re/container/IMWebView;)Lcom/inmobi/re/container/IMWebView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    return-object p1
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/BannerView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->l:Ljava/lang/String;

    return-object p1
.end method

.method private c()V
    .locals 4

    .prologue
    const/16 v1, 0x140

    const/4 v0, 0x0

    .line 424
    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 430
    :try_start_0
    iget v3, p0, Lcom/inmobi/androidsdk/BannerView;->p:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    move v1, v0

    .line 456
    :goto_0
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 457
    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 458
    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    .line 459
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 460
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 461
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/androidsdk/BannerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    :cond_0
    :goto_1
    return-void

    .line 433
    :pswitch_1
    const/16 v0, 0x30

    .line 434
    goto :goto_0

    .line 436
    :pswitch_2
    const/16 v1, 0x12c

    .line 437
    const/16 v0, 0xfa

    .line 438
    goto :goto_0

    .line 440
    :pswitch_3
    const/16 v1, 0x2d9

    .line 441
    const/16 v0, 0x5a

    .line 442
    goto :goto_0

    .line 444
    :pswitch_4
    const/16 v1, 0x1d4

    .line 445
    const/16 v0, 0x3c

    .line 446
    goto :goto_0

    .line 448
    :pswitch_5
    const/16 v1, 0x78

    .line 449
    const/16 v0, 0x258

    .line 450
    goto :goto_0

    .line 453
    :pswitch_6
    const/16 v0, 0x32

    goto :goto_0

    .line 463
    :catch_0
    move-exception v0

    .line 464
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Cannot set default size for adview"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 430
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/BannerView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;->b(Z)V

    return-void
.end method

.method private c(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 741
    iput-boolean p1, p0, Lcom/inmobi/androidsdk/BannerView;->e:Z

    .line 742
    if-eqz p1, :cond_0

    .line 743
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->deinit()V

    .line 745
    iput-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    .line 751
    :goto_0
    return-void

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->deinit()V

    .line 749
    iput-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    goto :goto_0
.end method

.method static synthetic c(Lcom/inmobi/androidsdk/BannerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->z:Z

    return v0
.end method

.method static synthetic d(Lcom/inmobi/androidsdk/BannerView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->l:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 5

    .prologue
    .line 521
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    if-nez v0, :cond_0

    .line 522
    new-instance v0, Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    .line 524
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 525
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 527
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 528
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 531
    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getDisplayWidth(Landroid/view/Display;)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    float-to-int v2, v2

    .line 533
    invoke-static {v0}, Lcom/inmobi/commons/internal/WrapperFunctions;->getDisplayHeight(Landroid/view/Display;)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 535
    iget-object v3, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setScreenDensity(Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

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

    .line 540
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/UserInfo;->getPhoneDefaultUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setPhoneDefaultUserAgent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 553
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget v1, p0, Lcom/inmobi/androidsdk/BannerView;->p:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setAdUnitSlot(Ljava/lang/String;)V

    .line 554
    iget-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->q:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-wide v1, p0, Lcom/inmobi/androidsdk/BannerView;->q:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setSlotId(Ljava/lang/String;)V

    .line 556
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->o:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->n:Lcom/inmobi/androidsdk/AdRequest;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/UserInfo;->updateInfo(Ljava/lang/String;Lcom/inmobi/androidsdk/AdRequest;)V

    .line 557
    return-void

    .line 545
    :catch_0
    move-exception v0

    .line 546
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

.method static synthetic d(Lcom/inmobi/androidsdk/BannerView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;->c(Z)V

    return-void
.end method

.method static synthetic e(Lcom/inmobi/androidsdk/BannerView;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->k:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x0

    const/16 v4, 0x64

    .line 561
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->removeAllViews()V

    .line 562
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 567
    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    iput-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    .line 568
    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {p0, v2, v1}, Lcom/inmobi/androidsdk/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 578
    :goto_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->i()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/BannerView;->c(Z)V

    .line 579
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/BannerView;->a(Z)V

    .line 580
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    invoke-direct {p0, v4, v5}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    .line 588
    :goto_1
    return-void

    .line 571
    :cond_1
    :try_start_1
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 574
    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    iput-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    .line 575
    iget-object v2, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {p0, v2, v1}, Lcom/inmobi/androidsdk/BannerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    :try_start_2
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Error swapping banner ads"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 585
    invoke-direct {p0, v4, v5}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, v4, v5}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    throw v0
.end method

.method static synthetic f(Lcom/inmobi/androidsdk/BannerView;)J
    .locals 2
    .parameter

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->r:J

    return-wide v0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 679
    iget v0, p0, Lcom/inmobi/androidsdk/BannerView;->p:I

    if-gez v0, :cond_0

    .line 680
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Invalid Ad Size. Please provide a valid adSize."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const/4 v0, 0x0

    .line 684
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private g()Z
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method static synthetic g(Lcom/inmobi/androidsdk/BannerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->i()Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/re/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method

.method private h()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 697
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 729
    :goto_0
    return v0

    .line 705
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 706
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    .line 710
    :goto_1
    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getState()Ljava/lang/String;

    move-result-object v2

    .line 712
    const-string v3, "[InMobi]-[Network]-4.1.1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current Ad State: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    sget-object v3, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZED:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/inmobi/re/container/IMWebView$ViewState;->RESIZING:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcom/inmobi/re/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/re/container/IMWebView$ViewState;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView$ViewState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 717
    :cond_1
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Current Ad State is neither default nor loading. New ad will not be shown."

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 720
    goto :goto_0

    .line 708
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    goto :goto_1

    .line 725
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 726
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v2, "New ad will not be shown because the present ad is busy. Eg. Video/audio is playing, etc."

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 727
    goto :goto_0

    .line 729
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic i(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/re/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method

.method private i()Z
    .locals 1

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->e:Z

    return v0
.end method

.method static synthetic j(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->y:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    return-object v0
.end method

.method private j()V
    .locals 3

    .prologue
    .line 868
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 869
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setBackgroundColor(I)V

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/re/container/IMWebView;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :cond_1
    :goto_0
    return-void

    .line 874
    :catch_0
    move-exception v0

    .line 875
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Error setNormalBGColor"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic k(Lcom/inmobi/androidsdk/BannerView;)Z
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->t:Z

    return v0
.end method

.method static synthetic l(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->e()V

    return-void
.end method

.method static synthetic m(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/commons/AnimationType;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->u:Lcom/inmobi/commons/AnimationType;

    return-object v0
.end method

.method static synthetic n(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/a;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->w:Lcom/inmobi/androidsdk/a;

    return-object v0
.end method

.method static synthetic o(Lcom/inmobi/androidsdk/BannerView;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->j()V

    return-void
.end method

.method static synthetic p(Lcom/inmobi/androidsdk/BannerView;)Lcom/inmobi/androidsdk/BannerView$d;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    return-object v0
.end method


# virtual methods
.method a()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 754
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->i:Landroid/view/animation/Animation;

    return-object v0
.end method

.method a(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 758
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->i:Landroid/view/animation/Animation;

    .line 759
    return-void
.end method

.method b()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->j:Landroid/view/animation/Animation;

    return-object v0
.end method

.method b(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter

    .prologue
    .line 766
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->j:Landroid/view/animation/Animation;

    .line 767
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    .line 313
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 309
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Unable to destroy webview, or it has been destroyed already."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disableHardwareAcceleration()V
    .locals 1

    .prologue
    .line 1366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->E:Z

    .line 1367
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 1368
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->disableHardwareAcceleration()V

    .line 1369
    :cond_0
    return-void
.end method

.method public getAdSize()I
    .locals 1

    .prologue
    .line 1357
    iget v0, p0, Lcom/inmobi/androidsdk/BannerView;->p:I

    return v0
.end method

.method public getAdViewPosition()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 270
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 272
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_1

    .line 275
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 277
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 278
    invoke-virtual {p0, v2}, Lcom/inmobi/androidsdk/BannerView;->getLocationOnScreen([I)V

    .line 279
    aget v1, v2, v4

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 280
    aget v1, v2, v5

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object v1, v0

    .line 291
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 293
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 294
    iget v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    aget v3, v2, v4

    sub-int/2addr v0, v3

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 295
    iget v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    aget v2, v2, v5

    sub-int/2addr v0, v2

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 297
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 298
    return-object v1

    .line 282
    :cond_1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 284
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 285
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1, v2}, Lcom/inmobi/re/container/IMWebView;->getLocationOnScreen([I)V

    .line 286
    aget v1, v2, v4

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 287
    aget v1, v2, v5

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    move-object v1, v0

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getIMAdListener()Lcom/inmobi/androidsdk/BannerViewListener;
    .locals 1

    .prologue
    .line 1251
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->m:Lcom/inmobi/androidsdk/BannerViewListener;

    return-object v0
.end method

.method public getIMAdRequest()Lcom/inmobi/androidsdk/AdRequest;
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->n:Lcom/inmobi/androidsdk/AdRequest;

    return-object v0
.end method

.method public getSlotId()J
    .locals 2

    .prologue
    .line 1398
    iget-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->q:J

    return-wide v0
.end method

.method public isModal()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->c:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->isModal()Z

    move-result v0

    .line 323
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized loadNewAd()V
    .locals 5

    .prologue
    .line 598
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;-><init>()V

    iput-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->y:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    .line 599
    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getLogger()Lcom/inmobi/commons/metric/Logger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/metric/Logger;->startNewSample()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->z:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 603
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
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 610
    :goto_0
    :try_start_2
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, " >>>> Start loading new Ad <<<<"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 614
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->checkNetworkAvailibility(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    const/16 v0, 0x65

    sget-object v1, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 649
    :goto_1
    monitor-exit p0

    return-void

    .line 605
    :catch_0
    move-exception v0

    .line 606
    :try_start_4
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Cannot get publisher device id"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 598
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 620
    :cond_0
    :try_start_5
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 621
    const/16 v0, 0x65

    sget-object v1, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->AD_DOWNLOAD_IN_PROGRESS:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 646
    :catch_1
    move-exception v0

    .line 647
    :try_start_6
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Error in loading ad "

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 624
    :cond_1
    :try_start_7
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 625
    const/16 v0, 0x65

    sget-object v1, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->AD_CLICK_IN_PROGRESS:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_1

    .line 628
    :cond_2
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->f()Z

    move-result v0

    if-nez v0, :cond_3

    .line 629
    const/16 v0, 0x65

    sget-object v1, Lcom/inmobi/androidsdk/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/inmobi/androidsdk/AdRequest$ErrorCode;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/androidsdk/BannerView;->a(ILcom/inmobi/androidsdk/AdRequest$ErrorCode;)V

    goto :goto_1

    .line 634
    :cond_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/inmobi/androidsdk/BannerView;->a(Z)V

    .line 636
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->d()V

    .line 639
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/androidsdk/BannerView;->s:J

    .line 640
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    const/16 v1, 0x6b

    invoke-static {}, Lcom/inmobi/androidsdk/bootstrapper/Initializer;->getConfigParams()Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/bootstrapper/ConfigParams;->getFetchTimeOut()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/androidsdk/BannerView$d;->sendEmptyMessageDelayed(IJ)Z

    .line 643
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->y:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    sget-object v2, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;->AdRequest:Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;

    iget-object v3, p0, Lcom/inmobi/androidsdk/BannerView;->x:Ljava/lang/String;

    iget-object v4, p0, Lcom/inmobi/androidsdk/BannerView;->C:Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->asyncRequestAd(Lcom/inmobi/androidsdk/impl/UserInfo;Lcom/inmobi/androidsdk/impl/net/RequestResponseManager$ActionType;Ljava/lang/String;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1
.end method

.method public loadNewAd(Lcom/inmobi/androidsdk/AdRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 671
    if-eqz p1, :cond_0

    .line 672
    invoke-virtual {p0, p1}, Lcom/inmobi/androidsdk/BannerView;->setIMAdRequest(Lcom/inmobi/androidsdk/AdRequest;)V

    .line 674
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/androidsdk/BannerView;->loadNewAd()V

    .line 675
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1104
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->v:Z

    .line 1107
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->c()V

    .line 1108
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1112
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "onDetatchedFromWindow"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/androidsdk/BannerView;->v:Z

    .line 1117
    invoke-direct {p0}, Lcom/inmobi/androidsdk/BannerView;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1118
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->b:Lcom/inmobi/re/container/IMWebView;

    .line 1122
    :goto_0
    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->deinit()V

    .line 1125
    :cond_0
    return-void

    .line 1120
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->a:Lcom/inmobi/re/container/IMWebView;

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .parameter

    .prologue
    .line 1432
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 1435
    if-nez p1, :cond_0

    .line 1438
    :try_start_0
    new-instance v0, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;

    invoke-direct {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;-><init>()V

    .line 1439
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->init()V

    .line 1441
    iget-object v1, p0, Lcom/inmobi/androidsdk/BannerView;->d:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/net/RequestResponseManager;->processClick(Landroid/content/Context;Lcom/inmobi/androidsdk/impl/net/HttpRequestCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1447
    :cond_0
    :goto_0
    return-void

    .line 1442
    :catch_0
    move-exception v0

    .line 1444
    const-string v1, "[InMobi]-[Network]-4.1.1"

    const-string v2, "Exception ping in background"

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setAdBackgroundColor(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 887
    return-void
.end method

.method public setAdBackgroundGradientColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 897
    return-void
.end method

.method public setAdServerUrl(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 656
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->x:Ljava/lang/String;

    .line 657
    return-void
.end method

.method public setAdSize(I)V
    .locals 0
    .parameter

    .prologue
    .line 1388
    invoke-direct {p0, p1}, Lcom/inmobi/androidsdk/BannerView;->a(I)V

    .line 1389
    iput p1, p0, Lcom/inmobi/androidsdk/BannerView;->p:I

    .line 1390
    return-void
.end method

.method public setAdTextColor(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 907
    return-void
.end method

.method public setAnimationType(Lcom/inmobi/commons/AnimationType;)V
    .locals 0
    .parameter

    .prologue
    .line 916
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->u:Lcom/inmobi/commons/AnimationType;

    .line 917
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->o:Ljava/lang/String;

    .line 1349
    return-void
.end method

.method public setIMAdListener(Lcom/inmobi/androidsdk/BannerViewListener;)V
    .locals 0
    .parameter

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->m:Lcom/inmobi/androidsdk/BannerViewListener;

    .line 1262
    return-void
.end method

.method public setIMAdRequest(Lcom/inmobi/androidsdk/AdRequest;)V
    .locals 0
    .parameter

    .prologue
    .line 1280
    iput-object p1, p0, Lcom/inmobi/androidsdk/BannerView;->n:Lcom/inmobi/androidsdk/AdRequest;

    .line 1281
    return-void
.end method

.method public setRefTagParam(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 336
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 337
    :cond_0
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Key or Value cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_1
    :goto_0
    return-void

    .line 341
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 342
    :cond_3
    const-string v0, "[InMobi]-[Network]-4.1.1"

    const-string v1, "Key or Value cannot be empty"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 347
    :cond_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setRefTagKey(Ljava/lang/String;)V

    .line 349
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->f:Lcom/inmobi/androidsdk/impl/UserInfo;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/impl/UserInfo;->setRefTagValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setSlotId(J)V
    .locals 0
    .parameter

    .prologue
    .line 1408
    iput-wide p1, p0, Lcom/inmobi/androidsdk/BannerView;->q:J

    .line 1409
    return-void
.end method

.method public stopLoading()V
    .locals 3

    .prologue
    const/16 v2, 0x6c

    const/16 v1, 0x6b

    .line 1421
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView$d;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1422
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView$d;->removeMessages(I)V

    .line 1423
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/BannerView$d;->sendEmptyMessage(I)Z

    .line 1428
    :cond_0
    :goto_0
    return-void

    .line 1424
    :cond_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/BannerView$d;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1425
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/BannerView$d;->removeMessages(I)V

    .line 1426
    iget-object v0, p0, Lcom/inmobi/androidsdk/BannerView;->A:Lcom/inmobi/androidsdk/BannerView$d;

    invoke-virtual {v0, v2}, Lcom/inmobi/androidsdk/BannerView$d;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
