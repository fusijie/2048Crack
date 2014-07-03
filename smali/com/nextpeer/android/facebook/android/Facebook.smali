.class public Lcom/nextpeer/android/facebook/android/Facebook;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;,
        Lcom/nextpeer/android/facebook/android/Facebook$ServiceListener;,
        Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;,
        Lcom/nextpeer/android/facebook/android/Facebook$TokenRefreshConnectionHandler;,
        Lcom/nextpeer/android/facebook/android/Facebook$TokenRefreshServiceConnection;
    }
.end annotation


# static fields
.field public static final ATTRIBUTION_ID_COLUMN_NAME:Ljava/lang/String; = "aid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CANCEL_URI:Ljava/lang/String; = "fbconnect://cancel"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEFAULT_AUTH_ACTIVITY_CODE:I = 0x7f99

.field protected static DIALOG_BASE_URL:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXPIRES:Ljava/lang/String; = "expires_in"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FB_APP_SIGNATURE:Ljava/lang/String; = "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORCE_DIALOG_AUTH:I = -0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static GRAPH_BASE_URL:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final LOGIN:Ljava/lang/String; = "oauth"

.field public static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final REFRESH_TOKEN_BARRIER:J = 0x5265c00L

.field protected static RESTSERVER_URL:Ljava/lang/String; = null
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SINGLE_SIGN_ON_DISABLED:Ljava/lang/String; = "service_disabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOKEN:Ljava/lang/String; = "access_token"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private accessExpiresMillisecondsAfterEpoch:J

.field private accessToken:Ljava/lang/String;

.field private lastAccessUpdateMillisecondsAfterEpoch:J

.field private final lock:Ljava/lang/Object;

.field private mAppId:Ljava/lang/String;

.field private pendingAuthorizationActivity:Landroid/app/Activity;

.field private pendingAuthorizationPermissions:[Ljava/lang/String;

.field private pendingOpeningSession:Lcom/nextpeer/android/facebook/Session;

.field private volatile session:Lcom/nextpeer/android/facebook/Session;

.field private sessionInvalidated:Z

.field private tokenCache:Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;

.field private volatile userSetSession:Lcom/nextpeer/android/facebook/Session;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.facebook.katana.provider.AttributionIdProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/facebook/android/Facebook;->ATTRIBUTION_ID_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "https://m.facebook.com/dialog/"

    sput-object v0, Lcom/nextpeer/android/facebook/android/Facebook;->DIALOG_BASE_URL:Ljava/lang/String;

    const-string v0, "https://graph.facebook.com/"

    sput-object v0, Lcom/nextpeer/android/facebook/android/Facebook;->GRAPH_BASE_URL:Ljava/lang/String;

    const-string v0, "https://api.facebook.com/restserver.php"

    sput-object v0, Lcom/nextpeer/android/facebook/android/Facebook;->RESTSERVER_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    iput-wide v1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    iput-wide v1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must specify your application ID when instantiating a Facebook object. See README for details."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/nextpeer/android/facebook/android/Facebook;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/nextpeer/android/facebook/android/Facebook;)Lcom/nextpeer/android/facebook/Session;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->session:Lcom/nextpeer/android/facebook/Session;

    return-object v0
.end method

.method static synthetic access$10(Lcom/nextpeer/android/facebook/android/Facebook;J)V
    .locals 0

    iput-wide p1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    return-void
.end method

.method static synthetic access$11(Lcom/nextpeer/android/facebook/android/Facebook;Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/nextpeer/android/facebook/android/Facebook;->onSessionCallback(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V

    return-void
.end method

.method static synthetic access$2(Lcom/nextpeer/android/facebook/android/Facebook;)J
    .locals 2

    iget-wide v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    return-wide v0
.end method

.method static synthetic access$3(Lcom/nextpeer/android/facebook/android/Facebook;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4([Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lcom/nextpeer/android/facebook/android/Facebook;->stringList([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/nextpeer/android/facebook/android/Facebook;)J
    .locals 2

    iget-wide v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    return-wide v0
.end method

.method static synthetic access$6(Lcom/nextpeer/android/facebook/android/Facebook;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/nextpeer/android/facebook/android/Facebook;J)V
    .locals 0

    iput-wide p1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    return-void
.end method

.method static synthetic access$8(Ljava/util/List;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/nextpeer/android/facebook/android/Facebook;->stringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9(Lcom/nextpeer/android/facebook/android/Facebook;[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    return-void
.end method

.method private authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/nextpeer/android/facebook/SessionLoginBehavior;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "authorize"

    invoke-direct {p0, v1}, Lcom/nextpeer/android/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    new-instance v1, Lcom/nextpeer/android/facebook/Session$Builder;

    invoke-direct {v1, p1}, Lcom/nextpeer/android/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/nextpeer/android/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/nextpeer/android/facebook/Session$Builder;

    move-result-object v1

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/android/Facebook;->getTokenCache()Lcom/nextpeer/android/facebook/TokenCachingStrategy;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/facebook/Session$Builder;->setTokenCachingStrategy(Lcom/nextpeer/android/facebook/TokenCachingStrategy;)Lcom/nextpeer/android/facebook/Session$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/Session$Builder;->build()Lcom/nextpeer/android/facebook/Session;

    move-result-object v1

    iput-object v1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->pendingOpeningSession:Lcom/nextpeer/android/facebook/Session;

    iput-object p1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->pendingAuthorizationActivity:Landroid/app/Activity;

    if-eqz p2, :cond_1

    :goto_0
    iput-object p2, p0, Lcom/nextpeer/android/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    new-instance v1, Lcom/nextpeer/android/facebook/android/Facebook$1;

    invoke-direct {v1, p0, p5}, Lcom/nextpeer/android/facebook/android/Facebook$1;-><init>(Lcom/nextpeer/android/facebook/android/Facebook;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V

    new-instance v2, Lcom/nextpeer/android/facebook/Session$OpenRequest;

    invoke-direct {v2, p1}, Lcom/nextpeer/android/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v1}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->setCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)Lcom/nextpeer/android/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/nextpeer/android/facebook/SessionLoginBehavior;)Lcom/nextpeer/android/facebook/Session$OpenRequest;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->setRequestCode(I)Lcom/nextpeer/android/facebook/Session$OpenRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/nextpeer/android/facebook/Session$OpenRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/facebook/android/Facebook;->pendingOpeningSession:Lcom/nextpeer/android/facebook/Session;

    iget-object v3, p0, Lcom/nextpeer/android/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-direct {p0, v2, v1, v0}, Lcom/nextpeer/android/facebook/android/Facebook;->openSession(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/Session$OpenRequest;Z)V

    return-void

    :cond_1
    new-array p2, v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method private checkUserSession(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->userSetSession:Lcom/nextpeer/android/facebook/Session;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot call %s after setSession has been called."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lcom/nextpeer/android/facebook/Settings;->getAttributionId(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTokenCache()Lcom/nextpeer/android/facebook/TokenCachingStrategy;
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->tokenCache:Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;-><init>(Lcom/nextpeer/android/facebook/android/Facebook;Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->tokenCache:Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->tokenCache:Lcom/nextpeer/android/facebook/android/Facebook$SetterTokenCachingStrategy;

    return-object v0
.end method

.method private onSessionCallback(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V
    .locals 5

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/Session;->getAuthorizationBundle()Landroid/os/Bundle;

    move-result-object v1

    sget-object v0, Lcom/nextpeer/android/facebook/SessionState;->OPENED:Lcom/nextpeer/android/facebook/SessionState;

    if-ne p2, v0, :cond_3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/nextpeer/android/facebook/android/Facebook;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/nextpeer/android/facebook/android/Facebook;->session:Lcom/nextpeer/android/facebook/Session;

    if-eq p1, v3, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->session:Lcom/nextpeer/android/facebook/Session;

    iput-object p1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->session:Lcom/nextpeer/android/facebook/Session;

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/nextpeer/android/facebook/android/Facebook;->sessionInvalidated:Z

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->close()V

    :cond_1
    invoke-interface {p4, v1}, Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;->onComplete(Landroid/os/Bundle;)V

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_3
    if-eqz p3, :cond_2

    instance-of v0, p3, Lcom/nextpeer/android/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_4

    invoke-interface {p4}, Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;->onCancel()V

    goto :goto_0

    :cond_4
    instance-of v0, p3, Lcom/nextpeer/android/facebook/FacebookAuthorizationException;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    const-string v0, "com.facebook.sdk.WebViewErrorCode"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "com.facebook.sdk.FailingUrl"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/nextpeer/android/facebook/android/DialogError;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.facebook.sdk.WebViewErrorCode"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "com.facebook.sdk.FailingUrl"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/nextpeer/android/facebook/android/DialogError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;->onError(Lcom/nextpeer/android/facebook/android/DialogError;)V

    goto :goto_0

    :cond_5
    new-instance v0, Lcom/nextpeer/android/facebook/android/FacebookError;

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/android/FacebookError;-><init>(Ljava/lang/String;)V

    invoke-interface {p4, v0}, Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;->onFacebookError(Lcom/nextpeer/android/facebook/android/FacebookError;)V

    goto :goto_0
.end method

.method private openSession(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/Session$OpenRequest;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->setIsLegacy(Z)V

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Lcom/nextpeer/android/facebook/Session;->openForPublish(Lcom/nextpeer/android/facebook/Session$OpenRequest;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/nextpeer/android/facebook/Session;->openForRead(Lcom/nextpeer/android/facebook/Session$OpenRequest;)V

    goto :goto_0
.end method

.method private static stringArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    new-array v2, v0, [Ljava/lang/String;

    if-eqz p0, :cond_0

    :goto_1
    array-length v0, v2

    if-lt v1, v0, :cond_2

    :cond_0
    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private static stringList([Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method private validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_0

    :goto_1
    return v0

    :cond_0
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/nextpeer/android/facebook/android/Facebook;->validateAppSignatureForPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public authorize(Landroid/app/Activity;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/String;

    const/16 v3, 0x7f99

    sget-object v4, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/nextpeer/android/facebook/SessionLoginBehavior;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V

    return-void
.end method

.method public authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-ltz p3, :cond_0

    sget-object v4, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/nextpeer/android/facebook/SessionLoginBehavior;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V

    return-void

    :cond_0
    sget-object v4, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->SUPPRESS_SSO:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    goto :goto_0
.end method

.method public authorize(Landroid/app/Activity;[Ljava/lang/String;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/16 v3, 0x7f99

    sget-object v4, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/android/Facebook;->authorize(Landroid/app/Activity;[Ljava/lang/String;ILcom/nextpeer/android/facebook/SessionLoginBehavior;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V

    return-void
.end method

.method public authorizeCallback(IILandroid/content/Intent;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v2, 0x0

    const-string v0, "authorizeCallback"

    invoke-direct {p0, v0}, Lcom/nextpeer/android/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->pendingOpeningSession:Lcom/nextpeer/android/facebook/Session;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->pendingAuthorizationActivity:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/nextpeer/android/facebook/Session;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/nextpeer/android/facebook/android/Facebook;->pendingOpeningSession:Lcom/nextpeer/android/facebook/Session;

    iput-object v2, p0, Lcom/nextpeer/android/facebook/android/Facebook;->pendingAuthorizationActivity:Landroid/app/Activity;

    iput-object v2, p0, Lcom/nextpeer/android/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "display"

    const-string v1, "touch"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "redirect_uri"

    const-string v1, "fbconnect://success"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "oauth"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "type"

    const-string v1, "user_agent"

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "client_id"

    iget-object v1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Error"

    const-string v1, "Application requires permission to access the Internet"

    invoke-static {p1, v0, v1}, Lcom/nextpeer/android/facebook/android/Util;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    const-string v0, "app_id"

    iget-object v1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "access_token"

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/nextpeer/android/facebook/android/FbDialog;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/nextpeer/android/facebook/android/FbDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/android/FbDialog;->show()V

    goto :goto_1
.end method

.method public dialog(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/nextpeer/android/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/android/Facebook$DialogListener;)V

    return-void
.end method

.method public extendAccessToken(Landroid/content/Context;Lcom/nextpeer/android/facebook/android/Facebook$ServiceListener;)Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "extendAccessToken"

    invoke-direct {p0, v0}, Lcom/nextpeer/android/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.facebook.katana"

    const-string v2, "com.facebook.katana.platform.TokenRefreshService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v0}, Lcom/nextpeer/android/facebook/android/Facebook;->validateServiceIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Lcom/nextpeer/android/facebook/android/Facebook$TokenRefreshServiceConnection;

    invoke-direct {v1, p0, p1, p2}, Lcom/nextpeer/android/facebook/android/Facebook$TokenRefreshServiceConnection;-><init>(Lcom/nextpeer/android/facebook/android/Facebook;Landroid/content/Context;Lcom/nextpeer/android/facebook/android/Facebook$ServiceListener;)V

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    goto :goto_0
.end method

.method public extendAccessTokenIfNeeded(Landroid/content/Context;Lcom/nextpeer/android/facebook/android/Facebook$ServiceListener;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "extendAccessTokenIfNeeded"

    invoke-direct {p0, v0}, Lcom/nextpeer/android/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/android/Facebook;->shouldExtendAccessToken()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/nextpeer/android/facebook/android/Facebook;->extendAccessToken(Landroid/content/Context;Lcom/nextpeer/android/facebook/android/Facebook$ServiceListener;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getAccessExpires()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/android/Facebook;->getSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    goto :goto_0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/android/Facebook;->getSession()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getLastAccessUpdate()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    return-wide v0
.end method

.method public final getSession()Lcom/nextpeer/android/facebook/Session;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    iget-object v3, p0, Lcom/nextpeer/android/facebook/android/Facebook;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->userSetSession:Lcom/nextpeer/android/facebook/Session;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->userSetSession:Lcom/nextpeer/android/facebook/Session;

    monitor-exit v3

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->session:Lcom/nextpeer/android/facebook/Session;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->sessionInvalidated:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->session:Lcom/nextpeer/android/facebook/Session;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    iget-object v4, p0, Lcom/nextpeer/android/facebook/android/Facebook;->session:Lcom/nextpeer/android/facebook/Session;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_4

    move-object v0, v2

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/nextpeer/android/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v0

    :goto_1
    new-instance v3, Lcom/nextpeer/android/facebook/Session$Builder;

    iget-object v4, p0, Lcom/nextpeer/android/facebook/android/Facebook;->pendingAuthorizationActivity:Landroid/app/Activity;

    invoke-direct {v3, v4}, Lcom/nextpeer/android/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/nextpeer/android/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/nextpeer/android/facebook/Session$Builder;->setApplicationId(Ljava/lang/String;)Lcom/nextpeer/android/facebook/Session$Builder;

    move-result-object v3

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/android/Facebook;->getTokenCache()Lcom/nextpeer/android/facebook/TokenCachingStrategy;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/nextpeer/android/facebook/Session$Builder;->setTokenCachingStrategy(Lcom/nextpeer/android/facebook/TokenCachingStrategy;)Lcom/nextpeer/android/facebook/Session$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nextpeer/android/facebook/Session$Builder;->build()Lcom/nextpeer/android/facebook/Session;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nextpeer/android/facebook/Session;->getState()Lcom/nextpeer/android/facebook/SessionState;

    move-result-object v4

    sget-object v5, Lcom/nextpeer/android/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/nextpeer/android/facebook/SessionState;

    if-eq v4, v5, :cond_7

    move-object v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->pendingAuthorizationPermissions:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_7
    new-instance v4, Lcom/nextpeer/android/facebook/Session$OpenRequest;

    iget-object v5, p0, Lcom/nextpeer/android/facebook/android/Facebook;->pendingAuthorizationActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/nextpeer/android/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v4, v0}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/nextpeer/android/facebook/Session$OpenRequest;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_2
    invoke-direct {p0, v3, v4, v0}, Lcom/nextpeer/android/facebook/android/Facebook;->openSession(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/Session$OpenRequest;Z)V

    iget-object v4, p0, Lcom/nextpeer/android/facebook/android/Facebook;->lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iget-boolean v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->sessionInvalidated:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->session:Lcom/nextpeer/android/facebook/Session;

    if-nez v0, :cond_b

    :cond_8
    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->session:Lcom/nextpeer/android/facebook/Session;

    iput-object v3, p0, Lcom/nextpeer/android/facebook/android/Facebook;->session:Lcom/nextpeer/android/facebook/Session;

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/nextpeer/android/facebook/android/Facebook;->sessionInvalidated:Z

    move-object v6, v3

    move-object v3, v0

    move-object v0, v6

    :goto_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lcom/nextpeer/android/facebook/Session;->close()V

    :cond_9
    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v4

    throw v0

    :cond_b
    move-object v0, v2

    move-object v3, v2

    goto :goto_3
.end method

.method public isSessionValid()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logout(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/android/Facebook;->logoutImpl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method logoutImpl(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string v0, "logout"

    invoke-direct {p0, v0}, Lcom/nextpeer/android/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "method"

    const-string v2, "auth.expireSession"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/facebook/android/Facebook;->request(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/nextpeer/android/facebook/android/Facebook;->lock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/nextpeer/android/facebook/android/Facebook;->session:Lcom/nextpeer/android/facebook/Session;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/nextpeer/android/facebook/android/Facebook;->session:Lcom/nextpeer/android/facebook/Session;

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/nextpeer/android/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/nextpeer/android/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    iput-wide v1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->sessionInvalidated:Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/nextpeer/android/facebook/Session;->closeAndClearTokenInformation()V

    :cond_0
    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0
.end method

.method public request(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "method"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "API method must be specified. (parameters must contain key \"method\" and value). See http://developers.facebook.com/docs/reference/rest/"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "GET"

    invoke-virtual {p0, v0, p1, v1}, Lcom/nextpeer/android/facebook/android/Facebook;->requestImpl(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "GET"

    invoke-virtual {p0, p1, v0, v1}, Lcom/nextpeer/android/facebook/android/Facebook;->requestImpl(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "GET"

    invoke-virtual {p0, p1, p2, v0}, Lcom/nextpeer/android/facebook/android/Facebook;->requestImpl(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/nextpeer/android/facebook/android/Facebook;->requestImpl(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method requestImpl(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "format"

    const-string v1, "json"

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "access_token"

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nextpeer/android/facebook/android/Facebook;->GRAPH_BASE_URL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0, p3, p2}, Lcom/nextpeer/android/facebook/android/Util;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/nextpeer/android/facebook/android/Facebook;->RESTSERVER_URL:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAccessExpires(J)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "setAccessExpires"

    invoke-direct {p0, v0}, Lcom/nextpeer/android/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-wide p1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nextpeer/android/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->sessionInvalidated:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAccessExpiresIn(Ljava/lang/String;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "setAccessExpiresIn"

    invoke-direct {p0, v0}, Lcom/nextpeer/android/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/facebook/android/Facebook;->setAccessExpires(J)V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "setAccessToken"

    invoke-direct {p0, v0}, Lcom/nextpeer/android/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/nextpeer/android/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->sessionInvalidated:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "setAppId"

    invoke-direct {p0, v0}, Lcom/nextpeer/android/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->mAppId:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/android/Facebook;->sessionInvalidated:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setSession(Lcom/nextpeer/android/facebook/Session;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "session cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->userSetSession:Lcom/nextpeer/android/facebook/Session;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setTokenFromCache(Ljava/lang/String;JJ)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "setTokenFromCache"

    invoke-direct {p0, v0}, Lcom/nextpeer/android/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/nextpeer/android/facebook/android/Facebook;->accessToken:Ljava/lang/String;

    iput-wide p2, p0, Lcom/nextpeer/android/facebook/android/Facebook;->accessExpiresMillisecondsAfterEpoch:J

    iput-wide p4, p0, Lcom/nextpeer/android/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public shouldExtendAccessToken()Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "shouldExtendAccessToken"

    invoke-direct {p0, v0}, Lcom/nextpeer/android/facebook/android/Facebook;->checkUserSession(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/android/Facebook;->isSessionValid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/nextpeer/android/facebook/android/Facebook;->lastAccessUpdateMillisecondsAfterEpoch:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method