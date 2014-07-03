.class public Lcom/nextpeer/android/facebook/Session;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;,
        Lcom/nextpeer/android/facebook/Session$Builder;,
        Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;,
        Lcom/nextpeer/android/facebook/Session$OpenRequest;,
        Lcom/nextpeer/android/facebook/Session$SerializationProxyV1;,
        Lcom/nextpeer/android/facebook/Session$StartActivityDelegate;,
        Lcom/nextpeer/android/facebook/Session$StatusCallback;,
        Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;,
        Lcom/nextpeer/android/facebook/Session$TokenRefreshRequestHandler;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$nextpeer$android$facebook$SessionState:[I = null

.field public static final ACTION_ACTIVE_SESSION_CLOSED:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

.field public static final ACTION_ACTIVE_SESSION_OPENED:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_OPENED"

.field public static final ACTION_ACTIVE_SESSION_SET:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_SET"

.field public static final ACTION_ACTIVE_SESSION_UNSET:Ljava/lang/String; = "com.facebook.sdk.ACTIVE_SESSION_UNSET"

.field private static final AUTH_BUNDLE_SAVE_KEY:Ljava/lang/String; = "com.facebook.sdk.Session.authBundleKey"

.field public static final DEFAULT_AUTHORIZE_ACTIVITY_CODE:I = 0xface

.field private static final MANAGE_PERMISSION_PREFIX:Ljava/lang/String; = "manage"

.field private static final OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLISH_PERMISSION_PREFIX:Ljava/lang/String; = "publish"

.field private static final SESSION_BUNDLE_SAVE_KEY:Ljava/lang/String; = "com.facebook.sdk.Session.saveSessionKey"

.field private static final STATIC_LOCK:Ljava/lang/Object; = null

.field public static final TAG:Ljava/lang/String; = null

.field private static final TOKEN_EXTEND_RETRY_SECONDS:I = 0xe10

.field private static final TOKEN_EXTEND_THRESHOLD_SECONDS:I = 0x15180

.field public static final WEB_VIEW_ERROR_CODE_KEY:Ljava/lang/String; = "com.facebook.sdk.WebViewErrorCode"

.field public static final WEB_VIEW_FAILING_URL_KEY:Ljava/lang/String; = "com.facebook.sdk.FailingUrl"

.field private static activeSession:Lcom/nextpeer/android/facebook/Session; = null

.field private static final serialVersionUID:J = 0x1L

.field private static volatile staticContext:Landroid/content/Context;


# instance fields
.field private applicationId:Ljava/lang/String;

.field private volatile authorizationBundle:Landroid/os/Bundle;

.field private authorizationClient:Lcom/nextpeer/android/facebook/AuthorizationClient;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/facebook/Session$StatusCallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile currentTokenRefreshRequest:Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;

.field private handler:Landroid/os/Handler;

.field private lastAttemptedTokenExtendDate:Ljava/util/Date;

.field private final lock:Ljava/lang/Object;

.field private pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

.field private state:Lcom/nextpeer/android/facebook/SessionState;

.field private tokenCachingStrategy:Lcom/nextpeer/android/facebook/TokenCachingStrategy;

.field private tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;


# direct methods
.method static synthetic $SWITCH_TABLE$com$nextpeer$android$facebook$SessionState()[I
    .locals 3

    sget-object v0, Lcom/nextpeer/android/facebook/Session;->$SWITCH_TABLE$com$nextpeer$android$facebook$SessionState:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/facebook/SessionState;->values()[Lcom/nextpeer/android/facebook/SessionState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nextpeer/android/facebook/SessionState;->CLOSED:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nextpeer/android/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/nextpeer/android/facebook/SessionState;->CREATED:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/nextpeer/android/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/nextpeer/android/facebook/SessionState;->OPENED:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/nextpeer/android/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/nextpeer/android/facebook/SessionState;->OPENING:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/SessionState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/nextpeer/android/facebook/Session;->$SWITCH_TABLE$com$nextpeer$android$facebook$SessionState:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nextpeer/android/facebook/Session;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/facebook/Session;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/nextpeer/android/facebook/Session;->STATIC_LOCK:Ljava/lang/Object;

    new-instance v0, Lcom/nextpeer/android/facebook/Session$1;

    invoke-direct {v0}, Lcom/nextpeer/android/facebook/Session$1;-><init>()V

    sput-object v0, Lcom/nextpeer/android/facebook/Session;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/nextpeer/android/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/facebook/TokenCachingStrategy;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/facebook/TokenCachingStrategy;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/nextpeer/android/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/facebook/TokenCachingStrategy;Z)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/facebook/TokenCachingStrategy;Z)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v1, p0, Lcom/nextpeer/android/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/nextpeer/android/facebook/Session;->lock:Ljava/lang/Object;

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/nextpeer/android/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string v1, "applicationId"

    invoke-static {p2, v1}, Lcom/nextpeer/android/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nextpeer/android/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V

    if-nez p3, :cond_1

    new-instance p3, Lcom/nextpeer/android/facebook/SharedPreferencesTokenCachingStrategy;

    sget-object v1, Lcom/nextpeer/android/facebook/Session;->staticContext:Landroid/content/Context;

    invoke-direct {p3, v1}, Lcom/nextpeer/android/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V

    :cond_1
    iput-object p2, p0, Lcom/nextpeer/android/facebook/Session;->applicationId:Ljava/lang/String;

    iput-object p3, p0, Lcom/nextpeer/android/facebook/Session;->tokenCachingStrategy:Lcom/nextpeer/android/facebook/TokenCachingStrategy;

    sget-object v1, Lcom/nextpeer/android/facebook/SessionState;->CREATED:Lcom/nextpeer/android/facebook/SessionState;

    iput-object v1, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nextpeer/android/facebook/Session;->callbacks:Ljava/util/List;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/nextpeer/android/facebook/Session;->handler:Landroid/os/Handler;

    if-eqz p4, :cond_2

    invoke-virtual {p3}, Lcom/nextpeer/android/facebook/TokenCachingStrategy;->load()Landroid/os/Bundle;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Lcom/nextpeer/android/facebook/TokenCachingStrategy;->hasTokenInformation(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "com.nextpeer.android.facebook.TokenCachingStrategy.ExpirationDate"

    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/TokenCachingStrategy;->getDate(Landroid/os/Bundle;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    if-eqz v1, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    invoke-virtual {p3}, Lcom/nextpeer/android/facebook/TokenCachingStrategy;->clear()V

    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/AccessToken;->createEmptyToken(Ljava/util/List;)Lcom/nextpeer/android/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    :goto_0
    return-void

    :cond_5
    invoke-static {v0}, Lcom/nextpeer/android/facebook/AccessToken;->createFromCache(Landroid/os/Bundle;)Lcom/nextpeer/android/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    sget-object v0, Lcom/nextpeer/android/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/nextpeer/android/facebook/SessionState;

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/nextpeer/android/facebook/SessionState;Lcom/nextpeer/android/facebook/AccessToken;Ljava/util/Date;ZLcom/nextpeer/android/facebook/Session$AuthorizationRequest;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session;->lock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session;->applicationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    iput-object p3, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    iput-object p4, p0, Lcom/nextpeer/android/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    iput-object p6, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session;->handler:Landroid/os/Handler;

    iput-object v3, p0, Lcom/nextpeer/android/facebook/Session;->currentTokenRefreshRequest:Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;

    iput-object v3, p0, Lcom/nextpeer/android/facebook/Session;->tokenCachingStrategy:Lcom/nextpeer/android/facebook/TokenCachingStrategy;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session;->callbacks:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/nextpeer/android/facebook/SessionState;Lcom/nextpeer/android/facebook/AccessToken;Ljava/util/Date;ZLcom/nextpeer/android/facebook/Session$AuthorizationRequest;Lcom/nextpeer/android/facebook/Session;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/nextpeer/android/facebook/Session;-><init>(Ljava/lang/String;Lcom/nextpeer/android/facebook/SessionState;Lcom/nextpeer/android/facebook/AccessToken;Ljava/util/Date;ZLcom/nextpeer/android/facebook/Session$AuthorizationRequest;)V

    return-void
.end method

.method static synthetic access$1()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/facebook/Session;->staticContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2(Lcom/nextpeer/android/facebook/Session;)Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->currentTokenRefreshRequest:Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;

    return-object v0
.end method

.method static synthetic access$3(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session;->currentTokenRefreshRequest:Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;

    return-void
.end method

.method static synthetic access$5(Lcom/nextpeer/android/facebook/Session;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->callbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$6(Lcom/nextpeer/android/facebook/Session;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/nextpeer/android/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$8(Lcom/nextpeer/android/facebook/Session;ILcom/nextpeer/android/facebook/AuthorizationClient$Result;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nextpeer/android/facebook/Session;->handleAuthorizationResult(ILcom/nextpeer/android/facebook/AuthorizationClient$Result;)V

    return-void
.end method

.method private static areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private finishAuthorization(Lcom/nextpeer/android/facebook/AccessToken;Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/Session;->saveTokenToCache(Lcom/nextpeer/android/facebook/AccessToken;)V

    sget-object v1, Lcom/nextpeer/android/facebook/SessionState;->OPENED:Lcom/nextpeer/android/facebook/SessionState;

    iput-object v1, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {p0, v0, v1, p2}, Lcom/nextpeer/android/facebook/Session;->postStateChange(Lcom/nextpeer/android/facebook/SessionState;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V

    return-void

    :cond_1
    if-eqz p2, :cond_0

    sget-object v1, Lcom/nextpeer/android/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/nextpeer/android/facebook/SessionState;

    iput-object v1, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    goto :goto_0
.end method

.method private finishReauthorization(Lcom/nextpeer/android/facebook/AccessToken;Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/Session;->saveTokenToCache(Lcom/nextpeer/android/facebook/AccessToken;)V

    sget-object v1, Lcom/nextpeer/android/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/nextpeer/android/facebook/SessionState;

    iput-object v1, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {p0, v0, v1, p2}, Lcom/nextpeer/android/facebook/Session;->postStateChange(Lcom/nextpeer/android/facebook/SessionState;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V

    return-void
.end method

.method public static final getActiveSession()Lcom/nextpeer/android/facebook/Session;
    .locals 2

    sget-object v1, Lcom/nextpeer/android/facebook/Session;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nextpeer/android/facebook/Session;->activeSession:Lcom/nextpeer/android/facebook/Session;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLoginActivityIntent(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nextpeer/android/facebook/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->getLoginBehavior()Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->getAuthorizationClientRequest()Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/facebook/LoginActivity;->populateIntentExtras(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method static getStaticContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/facebook/Session;->staticContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleAuthorizationResult(ILcom/nextpeer/android/facebook/AuthorizationClient$Result;)V
    .locals 5

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p2, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->code:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    sget-object v2, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->SUCCESS:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    if-ne v0, v2, :cond_0

    iget-object v0, p2, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->token:Lcom/nextpeer/android/facebook/AccessToken;

    move-object v2, v0

    move-object v0, v1

    :goto_0
    iget-object v3, p2, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->code:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    iget-object v4, p2, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->loggingExtras:Ljava/util/Map;

    invoke-direct {p0, v3, v4, v0}, Lcom/nextpeer/android/facebook/Session;->logAuthorizationComplete(Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    iput-object v1, p0, Lcom/nextpeer/android/facebook/Session;->authorizationClient:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-virtual {p0, v2, v0}, Lcom/nextpeer/android/facebook/Session;->finishAuthOrReauth(Lcom/nextpeer/android/facebook/AccessToken;Ljava/lang/Exception;)V

    return-void

    :cond_0
    new-instance v0, Lcom/nextpeer/android/facebook/FacebookAuthorizationException;

    iget-object v2, p2, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/nextpeer/android/facebook/FacebookAuthorizationException;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookOperationCanceledException;

    iget-object v2, p2, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/nextpeer/android/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    move-object v2, v1

    goto :goto_0
.end method

.method static initializeStaticContext(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/nextpeer/android/facebook/Session;->staticContext:Landroid/content/Context;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p0, v0

    :cond_0
    sput-object p0, Lcom/nextpeer/android/facebook/Session;->staticContext:Landroid/content/Context;

    :cond_1
    return-void
.end method

.method public static isPublishPermission(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "publish"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "manage"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nextpeer/android/facebook/Session;->OTHER_PUBLISH_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private logAuthorizationComplete(Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-static {v1}, Lcom/nextpeer/android/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "2_result"

    sget-object v3, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    invoke-virtual {v3}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "5_error_message"

    const-string v3, "Unexpected call to logAuthorizationComplete with null pendingAuthorizationRequest."

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->getAuthId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz p1, :cond_1

    const-string v1, "2_result"

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "5_error_message"

    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v2}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->access$2(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v2}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->access$2(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    :cond_3
    if-eqz p2, :cond_4

    if-nez v1, :cond_7

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_6

    move-object v1, v4

    :cond_4
    :goto_3
    if-eqz v1, :cond_5

    const-string v2, "6_extras"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v1, v3

    goto :goto_0

    :cond_6
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    move-object v1, v4

    goto :goto_3

    :cond_7
    move-object v4, v1

    goto :goto_1
.end method

.method private logAuthorizationStart()V
    .locals 5

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->getAuthId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "login_behavior"

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->loginBehavior:Lcom/nextpeer/android/facebook/SessionLoginBehavior;
    invoke-static {v3}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->access$4(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "request_code"

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->requestCode:I
    invoke-static {v3}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->access$5(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "is_legacy"

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->isLegacy:Z
    invoke-static {v3}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->access$3(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "permissions"

    const-string v3, ","

    iget-object v4, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->permissions:Ljava/util/List;
    invoke-static {v4}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->access$6(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Ljava/util/List;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "default_audience"

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->defaultAudience:Lcom/nextpeer/android/facebook/SessionDefaultAudience;
    invoke-static {v3}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->access$7(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nextpeer/android/facebook/SessionDefaultAudience;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "6_extras"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private open(Lcom/nextpeer/android/facebook/Session$OpenRequest;Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/nextpeer/android/facebook/Session;->validatePermissions(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;)V

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/Session;->validateLoginBehavior(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "Session: an attempt was made to open a session that has a pending request."

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2, v3}, Lcom/nextpeer/android/facebook/Session;->postStateChange(Lcom/nextpeer/android/facebook/SessionState;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V

    monitor-exit v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->$SWITCH_TABLE$com$nextpeer$android$facebook$SessionState()[I

    move-result-object v0

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v3}, Lcom/nextpeer/android/facebook/SessionState;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to open an already opened session."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_0
    :try_start_1
    sget-object v0, Lcom/nextpeer/android/facebook/SessionState;->OPENING:Lcom/nextpeer/android/facebook/SessionState;

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    if-nez p1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "openRequest cannot be null when opening a new Session"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->getCallback()Lcom/nextpeer/android/facebook/Session$StatusCallback;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/nextpeer/android/facebook/Session;->addCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)V

    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v3}, Lcom/nextpeer/android/facebook/Session;->postStateChange(Lcom/nextpeer/android/facebook/SessionState;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v1, Lcom/nextpeer/android/facebook/SessionState;->OPENING:Lcom/nextpeer/android/facebook/SessionState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/Session;->authorize(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)V

    goto :goto_0

    :pswitch_1
    if-eqz p1, :cond_4

    :try_start_2
    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/nextpeer/android/facebook/internal/Utility;->isSubset(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    :cond_4
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    if-nez v0, :cond_5

    sget-object v0, Lcom/nextpeer/android/facebook/SessionState;->OPENED:Lcom/nextpeer/android/facebook/SessionState;

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/nextpeer/android/facebook/SessionState;->OPENING:Lcom/nextpeer/android/facebook/SessionState;

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static openActiveSession(Landroid/app/Activity;ZLcom/nextpeer/android/facebook/Session$StatusCallback;)Lcom/nextpeer/android/facebook/Session;
    .locals 1

    new-instance v0, Lcom/nextpeer/android/facebook/Session$OpenRequest;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, p2}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->setCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)Lcom/nextpeer/android/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/nextpeer/android/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/nextpeer/android/facebook/Session$OpenRequest;)Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public static openActiveSession(Landroid/content/Context;Landroid/support/v4/app/Fragment;ZLcom/nextpeer/android/facebook/Session$StatusCallback;)Lcom/nextpeer/android/facebook/Session;
    .locals 1

    new-instance v0, Lcom/nextpeer/android/facebook/Session$OpenRequest;

    invoke-direct {v0, p1}, Lcom/nextpeer/android/facebook/Session$OpenRequest;-><init>(Landroid/support/v4/app/Fragment;)V

    invoke-virtual {v0, p3}, Lcom/nextpeer/android/facebook/Session$OpenRequest;->setCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)Lcom/nextpeer/android/facebook/Session$OpenRequest;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/nextpeer/android/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/nextpeer/android/facebook/Session$OpenRequest;)Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method private static openActiveSession(Landroid/content/Context;ZLcom/nextpeer/android/facebook/Session$OpenRequest;)Lcom/nextpeer/android/facebook/Session;
    .locals 3

    new-instance v0, Lcom/nextpeer/android/facebook/Session$Builder;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/facebook/Session$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session$Builder;->build()Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    sget-object v1, Lcom/nextpeer/android/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->getState()Lcom/nextpeer/android/facebook/SessionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/facebook/SessionState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session;->setActiveSession(Lcom/nextpeer/android/facebook/Session;)V

    invoke-virtual {v0, p2}, Lcom/nextpeer/android/facebook/Session;->openForRead(Lcom/nextpeer/android/facebook/Session$OpenRequest;)V

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static openActiveSessionFromCache(Landroid/content/Context;)Lcom/nextpeer/android/facebook/Session;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/nextpeer/android/facebook/Session;->openActiveSession(Landroid/content/Context;ZLcom/nextpeer/android/facebook/Session$OpenRequest;)Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public static openActiveSessionWithAccessToken(Landroid/content/Context;Lcom/nextpeer/android/facebook/AccessToken;Lcom/nextpeer/android/facebook/Session$StatusCallback;)Lcom/nextpeer/android/facebook/Session;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/nextpeer/android/facebook/Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v2, v2, v1}, Lcom/nextpeer/android/facebook/Session;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/facebook/TokenCachingStrategy;Z)V

    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session;->setActiveSession(Lcom/nextpeer/android/facebook/Session;)V

    invoke-virtual {v0, p1, p2}, Lcom/nextpeer/android/facebook/Session;->open(Lcom/nextpeer/android/facebook/AccessToken;Lcom/nextpeer/android/facebook/Session$StatusCallback;)V

    return-object v0
.end method

.method static postActiveSessionAction(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2

    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Cannot readObject, serialization proxy required"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private requestNewPermissions(Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/nextpeer/android/facebook/Session;->validatePermissions(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;)V

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/Session;->validateLoginBehavior(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)V

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to request new permissions for a session that has a pending request."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;->setValidateSameFbidAsToken(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/Session;->authorize(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)V

    :cond_1
    return-void

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/SessionState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to request new permissions for a session that has been closed."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to request new permissions for a session that is not currently open."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private resolveIntent(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final restoreSession(Landroid/content/Context;Lcom/nextpeer/android/facebook/TokenCachingStrategy;Lcom/nextpeer/android/facebook/Session$StatusCallback;Landroid/os/Bundle;)Lcom/nextpeer/android/facebook/Session;
    .locals 4

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/Session;

    invoke-static {p0}, Lcom/nextpeer/android/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V

    if-eqz p1, :cond_3

    iput-object p1, v0, Lcom/nextpeer/android/facebook/Session;->tokenCachingStrategy:Lcom/nextpeer/android/facebook/TokenCachingStrategy;

    :goto_1
    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Lcom/nextpeer/android/facebook/Session;->addCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)V

    :cond_1
    const-string v2, "com.facebook.sdk.Session.authBundleKey"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/nextpeer/android/facebook/Session;->authorizationBundle:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/nextpeer/android/facebook/Session;->TAG:Ljava/lang/String;

    const-string v3, "Unable to restore session"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance v2, Lcom/nextpeer/android/facebook/SharedPreferencesTokenCachingStrategy;

    invoke-direct {v2, p0}, Lcom/nextpeer/android/facebook/SharedPreferencesTokenCachingStrategy;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/nextpeer/android/facebook/Session;->tokenCachingStrategy:Lcom/nextpeer/android/facebook/TokenCachingStrategy;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    sget-object v2, Lcom/nextpeer/android/facebook/Session;->TAG:Ljava/lang/String;

    const-string v3, "Unable to restore session."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static final saveSession(Lcom/nextpeer/android/facebook/Session;Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    const-string v0, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "com.facebook.sdk.Session.saveSessionKey"

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "com.facebook.sdk.Session.authBundleKey"

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v2, "Unable to save session."

    invoke-direct {v1, v2, v0}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private saveTokenToCache(Lcom/nextpeer/android/facebook/AccessToken;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenCachingStrategy:Lcom/nextpeer/android/facebook/TokenCachingStrategy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenCachingStrategy:Lcom/nextpeer/android/facebook/TokenCachingStrategy;

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static final setActiveSession(Lcom/nextpeer/android/facebook/Session;)V
    .locals 2

    sget-object v1, Lcom/nextpeer/android/facebook/Session;->STATIC_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/nextpeer/android/facebook/Session;->activeSession:Lcom/nextpeer/android/facebook/Session;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/nextpeer/android/facebook/Session;->activeSession:Lcom/nextpeer/android/facebook/Session;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session;->close()V

    :cond_0
    sput-object p0, Lcom/nextpeer/android/facebook/Session;->activeSession:Lcom/nextpeer/android/facebook/Session;

    if-eqz v0, :cond_1

    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_UNSET"

    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    :cond_1
    if-eqz p0, :cond_2

    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_SET"

    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/Session;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private tryLegacyAuth(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)V
    .locals 2

    new-instance v0, Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-direct {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session;->authorizationClient:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->authorizationClient:Lcom/nextpeer/android/facebook/AuthorizationClient;

    new-instance v1, Lcom/nextpeer/android/facebook/Session$3;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/facebook/Session$3;-><init>(Lcom/nextpeer/android/facebook/Session;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient;->setOnCompletedListener(Lcom/nextpeer/android/facebook/AuthorizationClient$OnCompletedListener;)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->authorizationClient:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient;->setContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->authorizationClient:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->getAuthorizationClientRequest()Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient;->startOrContinueAuth(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;)V

    return-void
.end method

.method private tryLoginActivity(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/Session;->getLoginActivityIntent(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nextpeer/android/facebook/Session;->resolveIntent(Landroid/content/Intent;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->getStartActivityDelegate()Lcom/nextpeer/android/facebook/Session$StartActivityDelegate;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->getRequestCode()I

    move-result v3

    invoke-interface {v2, v1, v3}, Lcom/nextpeer/android/facebook/Session$StartActivityDelegate;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private validateLoginBehavior(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)V
    .locals 5

    if-eqz p1, :cond_0

    #getter for: Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->isLegacy:Z
    invoke-static {p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->access$3(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/nextpeer/android/facebook/LoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-direct {p0, v0}, Lcom/nextpeer/android/facebook/Session;->resolveIntent(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "Cannot use SessionLoginBehavior %s when %s is not declared as an activity in AndroidManifest.xml"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->getLoginBehavior()Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Lcom/nextpeer/android/facebook/LoginActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private validatePermissions(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v0, p2}, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "Cannot request publish or manage authorization with no permissions."

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    return-void

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session;->isPublishPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;->READ:Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v2, p2}, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v1, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v2, "Cannot pass a publish or manage permission (%s) to a request for read authorization"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    sget-object v2, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

    invoke-virtual {v2, p2}, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/nextpeer/android/facebook/Session;->TAG:Ljava/lang/String;

    const-string v3, "Should not pass a read permission (%s) to a request for publish or manage authorization"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 7

    new-instance v0, Lcom/nextpeer/android/facebook/Session$SerializationProxyV1;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->applicationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    iget-object v4, p0, Lcom/nextpeer/android/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    invoke-direct/range {v0 .. v6}, Lcom/nextpeer/android/facebook/Session$SerializationProxyV1;-><init>(Ljava/lang/String;Lcom/nextpeer/android/facebook/SessionState;Lcom/nextpeer/android/facebook/AccessToken;Ljava/util/Date;ZLcom/nextpeer/android/facebook/Session$AuthorizationRequest;)V

    return-object v0
.end method


# virtual methods
.method public final addCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->callbacks:Ljava/util/List;

    monitor-enter v1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method authorize(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)V
    .locals 5

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->applicationId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->setApplicationId(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/Session;->logAuthorizationStart()V

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/Session;->tryLoginActivity(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Z

    move-result v1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->access$2(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    move-result-object v2

    const-string v3, "try_login_activity"

    if-eqz v1, :cond_1

    const-string v0, "1"

    :goto_0
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v1, :cond_2

    #getter for: Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->isLegacy:Z
    invoke-static {p1}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->access$3(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    #getter for: Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->loggingExtras:Ljava/util/Map;
    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->access$2(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "try_legacy"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/Session;->tryLegacyAuth(Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;)V

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->$SWITCH_TABLE$com$nextpeer$android$facebook$SessionState()[I

    move-result-object v2

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v3}, Lcom/nextpeer/android/facebook/SessionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    sget-object v2, Lcom/nextpeer/android/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/nextpeer/android/facebook/SessionState;

    iput-object v2, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    new-instance v2, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v3, "Log in attempt failed: LoginActivity could not be started, and not legacy request"

    invoke-direct {v2, v3}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4, v2}, Lcom/nextpeer/android/facebook/Session;->logAuthorizationComplete(Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {p0, v0, v3, v2}, Lcom/nextpeer/android/facebook/Session;->postStateChange(Lcom/nextpeer/android/facebook/SessionState;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    const-string v0, "0"

    goto :goto_0

    :pswitch_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 5

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->$SWITCH_TABLE$com$nextpeer$android$facebook$SessionState()[I

    move-result-object v2

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v3}, Lcom/nextpeer/android/facebook/SessionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    monitor-exit v1

    return-void

    :pswitch_0
    sget-object v2, Lcom/nextpeer/android/facebook/SessionState;->CLOSED_LOGIN_FAILED:Lcom/nextpeer/android/facebook/SessionState;

    iput-object v2, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    new-instance v3, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v4, "Log in attempt aborted."

    invoke-direct {v3, v4}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2, v3}, Lcom/nextpeer/android/facebook/Session;->postStateChange(Lcom/nextpeer/android/facebook/SessionState;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_1
    :try_start_1
    sget-object v2, Lcom/nextpeer/android/facebook/SessionState;->CLOSED:Lcom/nextpeer/android/facebook/SessionState;

    iput-object v2, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/nextpeer/android/facebook/Session;->postStateChange(Lcom/nextpeer/android/facebook/SessionState;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final closeAndClearTokenInformation()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenCachingStrategy:Lcom/nextpeer/android/facebook/TokenCachingStrategy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenCachingStrategy:Lcom/nextpeer/android/facebook/TokenCachingStrategy;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/TokenCachingStrategy;->clear()V

    :cond_0
    sget-object v0, Lcom/nextpeer/android/facebook/Session;->staticContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nextpeer/android/facebook/internal/Utility;->clearFacebookCookies(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/Session;->close()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/nextpeer/android/facebook/Session;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/nextpeer/android/facebook/Session;

    iget-object v1, p1, Lcom/nextpeer/android/facebook/Session;->applicationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->applicationId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/nextpeer/android/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/nextpeer/android/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/nextpeer/android/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-static {v1, v2}, Lcom/nextpeer/android/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nextpeer/android/facebook/Session;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method extendAccessToken()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->currentTokenRefreshRequest:Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;

    if-nez v2, :cond_0

    new-instance v0, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;-><init>(Lcom/nextpeer/android/facebook/Session;)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session;->currentTokenRefreshRequest:Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;->bind()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method extendAccessTokenIfNeeded()V
    .locals 1

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/Session;->shouldExtendAccessToken()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/Session;->extendAccessToken()V

    :cond_0
    return-void
.end method

.method extendTokenCompleted(Landroid/os/Bundle;)V
    .locals 4

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->$SWITCH_TABLE$com$nextpeer$android$facebook$SessionState()[I

    move-result-object v2

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v3}, Lcom/nextpeer/android/facebook/SessionState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    sget-object v0, Lcom/nextpeer/android/facebook/Session;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "refreshToken ignored in state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :pswitch_0
    sget-object v2, Lcom/nextpeer/android/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/nextpeer/android/facebook/SessionState;

    iput-object v2, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/nextpeer/android/facebook/Session;->postStateChange(Lcom/nextpeer/android/facebook/SessionState;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V

    :pswitch_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    invoke-static {v0, p1}, Lcom/nextpeer/android/facebook/AccessToken;->createFromRefresh(Lcom/nextpeer/android/facebook/AccessToken;Landroid/os/Bundle;)Lcom/nextpeer/android/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenCachingStrategy:Lcom/nextpeer/android/facebook/TokenCachingStrategy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenCachingStrategy:Lcom/nextpeer/android/facebook/TokenCachingStrategy;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/nextpeer/android/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V

    :cond_0
    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->callbacks:Ljava/util/List;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Lcom/nextpeer/android/facebook/Session$2;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/facebook/Session$2;-><init>(Lcom/nextpeer/android/facebook/Session;)V

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Session;->handler:Landroid/os/Handler;

    invoke-static {v3, v0}, Lcom/nextpeer/android/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method finishAuthOrReauth(Lcom/nextpeer/android/facebook/AccessToken;Ljava/lang/Exception;)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AccessToken;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    new-instance p2, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v0, "Invalid access token."

    invoke-direct {p2, v0}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->$SWITCH_TABLE$com$nextpeer$android$facebook$SessionState()[I

    move-result-object v0

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v2}, Lcom/nextpeer/android/facebook/SessionState;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_0
    monitor-exit v1

    return-void

    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/nextpeer/android/facebook/Session;->finishAuthorization(Lcom/nextpeer/android/facebook/AccessToken;Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_1
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/nextpeer/android/facebook/Session;->finishReauthorization(Lcom/nextpeer/android/facebook/AccessToken;Ljava/lang/Exception;)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/nextpeer/android/facebook/Session;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unexpected call to finishAuthOrReauth in state "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final getAccessToken()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AccessToken;->getToken()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getApplicationId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAuthorizationBundle()Landroid/os/Bundle;
    .locals 2

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->authorizationBundle:Landroid/os/Bundle;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getExpirationDate()Ljava/util/Date;
    .locals 2

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AccessToken;->getExpires()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getLastAttemptedTokenExtendDate()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    return-object v0
.end method

.method public final getPermissions()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AccessToken;->getPermissions()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final getState()Lcom/nextpeer/android/facebook/SessionState;
    .locals 2

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method getTokenInfo()Lcom/nextpeer/android/facebook/AccessToken;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final isClosed()Z
    .locals 2

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/SessionState;->isClosed()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final isOpened()Z
    .locals 2

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/SessionState;->isOpened()Z

    move-result v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v1, 0x1

    const-string v0, "currentActivity"

    invoke-static {p1, v0}, Lcom/nextpeer/android/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/nextpeer/android/facebook/Session;->initializeStaticContext(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;->getRequestCode()I

    move-result v0

    if-eq p2, v0, :cond_1

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    monitor-exit v2

    sget-object v2, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    if-eqz p4, :cond_3

    const-string v0, "com.facebook.LoginActivity:Result"

    invoke-virtual {p4, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    if-eqz v0, :cond_2

    invoke-direct {p0, p3, v0}, Lcom/nextpeer/android/facebook/Session;->handleAuthorizationResult(ILcom/nextpeer/android/facebook/AuthorizationClient$Result;)V

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->authorizationClient:Lcom/nextpeer/android/facebook/AuthorizationClient;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->authorizationClient:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-virtual {v0, p2, p3, p4}, Lcom/nextpeer/android/facebook/AuthorizationClient;->onActivityResult(IILandroid/content/Intent;)Z

    move v0, v1

    goto :goto_0

    :cond_3
    if-nez p3, :cond_5

    new-instance v2, Lcom/nextpeer/android/facebook/FacebookOperationCanceledException;

    const-string v0, "User canceled operation."

    invoke-direct {v2, v0}, Lcom/nextpeer/android/facebook/FacebookOperationCanceledException;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    move-object v5, v0

    move-object v0, v2

    move-object v2, v5

    :goto_1
    if-nez v0, :cond_4

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v4, "Unexpected call to Session.onActivityResult"

    invoke-direct {v0, v4}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, v2, v3, v0}, Lcom/nextpeer/android/facebook/Session;->logAuthorizationComplete(Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;Ljava/util/Map;Ljava/lang/Exception;)V

    invoke-virtual {p0, v3, v0}, Lcom/nextpeer/android/facebook/Session;->finishAuthOrReauth(Lcom/nextpeer/android/facebook/AccessToken;Ljava/lang/Exception;)V

    move v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v3

    goto :goto_1
.end method

.method public final open(Lcom/nextpeer/android/facebook/AccessToken;Lcom/nextpeer/android/facebook/Session$StatusCallback;)V
    .locals 4

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->pendingAuthorizationRequest:Lcom/nextpeer/android/facebook/Session$AuthorizationRequest;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to open a session that has a pending request."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/SessionState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to open a previously-closed session."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    sget-object v2, Lcom/nextpeer/android/facebook/SessionState;->CREATED:Lcom/nextpeer/android/facebook/SessionState;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    sget-object v2, Lcom/nextpeer/android/facebook/SessionState;->CREATED_TOKEN_LOADED:Lcom/nextpeer/android/facebook/SessionState;

    if-eq v0, v2, :cond_2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Session: an attempt was made to open an already opened session."

    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/nextpeer/android/facebook/Session;->addCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)V

    :cond_3
    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenCachingStrategy:Lcom/nextpeer/android/facebook/TokenCachingStrategy;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenCachingStrategy:Lcom/nextpeer/android/facebook/TokenCachingStrategy;

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AccessToken;->toCacheBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/facebook/TokenCachingStrategy;->save(Landroid/os/Bundle;)V

    :cond_4
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    sget-object v2, Lcom/nextpeer/android/facebook/SessionState;->OPENED:Lcom/nextpeer/android/facebook/SessionState;

    iput-object v2, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/nextpeer/android/facebook/Session;->postStateChange(Lcom/nextpeer/android/facebook/SessionState;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final openForPublish(Lcom/nextpeer/android/facebook/Session$OpenRequest;)V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/nextpeer/android/facebook/Session;->open(Lcom/nextpeer/android/facebook/Session$OpenRequest;Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;)V

    return-void
.end method

.method public final openForRead(Lcom/nextpeer/android/facebook/Session$OpenRequest;)V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;->READ:Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/nextpeer/android/facebook/Session;->open(Lcom/nextpeer/android/facebook/Session$OpenRequest;Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;)V

    return-void
.end method

.method postStateChange(Lcom/nextpeer/android/facebook/SessionState;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 3

    if-ne p1, p2, :cond_1

    sget-object v0, Lcom/nextpeer/android/facebook/SessionState;->OPENED_TOKEN_UPDATED:Lcom/nextpeer/android/facebook/SessionState;

    if-eq p1, v0, :cond_1

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/nextpeer/android/facebook/SessionState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/AccessToken;->createEmptyToken(Ljava/util/List;)Lcom/nextpeer/android/facebook/AccessToken;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    :cond_2
    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->callbacks:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/nextpeer/android/facebook/Session$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/nextpeer/android/facebook/Session$4;-><init>(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/SessionState;Ljava/lang/Exception;)V

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->handler:Landroid/os/Handler;

    invoke-static {v2, v0}, Lcom/nextpeer/android/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/nextpeer/android/facebook/Session;->activeSession:Lcom/nextpeer/android/facebook/Session;

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/SessionState;->isOpened()Z

    move-result v0

    invoke-virtual {p2}, Lcom/nextpeer/android/facebook/SessionState;->isOpened()Z

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p2}, Lcom/nextpeer/android/facebook/SessionState;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_OPENED"

    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_3
    const-string v0, "com.facebook.sdk.ACTIVE_SESSION_CLOSED"

    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session;->postActiveSessionAction(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final removeCallback(Lcom/nextpeer/android/facebook/Session$StatusCallback;)V
    .locals 2

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->callbacks:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final requestNewPublishPermissions(Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;)V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;->PUBLISH:Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/nextpeer/android/facebook/Session;->requestNewPermissions(Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;)V

    return-void
.end method

.method public final requestNewReadPermissions(Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;)V
    .locals 1

    sget-object v0, Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;->READ:Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;

    invoke-direct {p0, p1, v0}, Lcom/nextpeer/android/facebook/Session;->requestNewPermissions(Lcom/nextpeer/android/facebook/Session$NewPermissionsRequest;Lcom/nextpeer/android/facebook/internal/SessionAuthorizationType;)V

    return-void
.end method

.method setCurrentTokenRefreshRequest(Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session;->currentTokenRefreshRequest:Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;

    return-void
.end method

.method setLastAttemptedTokenExtendDate(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    return-void
.end method

.method setTokenInfo(Lcom/nextpeer/android/facebook/AccessToken;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    return-void
.end method

.method shouldExtendAccessToken()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->currentTokenRefreshRequest:Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v2}, Lcom/nextpeer/android/facebook/SessionState;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/nextpeer/android/facebook/AccessToken;->getSource()Lcom/nextpeer/android/facebook/AccessTokenSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nextpeer/android/facebook/AccessTokenSource;->canExtendToken()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/nextpeer/android/facebook/Session;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    invoke-virtual {v3}, Lcom/nextpeer/android/facebook/AccessToken;->getLastRefresh()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{Session state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/Session;->state:Lcom/nextpeer/android/facebook/SessionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", appId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->applicationId:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->tokenInfo:Lcom/nextpeer/android/facebook/AccessToken;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session;->applicationId:Ljava/lang/String;

    goto :goto_1
.end method
