.class public Lcom/nextpeer/android/facebook/AppLinkData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/facebook/AppLinkData$CompletionHandler;,
        Lcom/nextpeer/android/facebook/AppLinkData$DeferredAppLinkDataClient;
    }
.end annotation


# static fields
.field private static final APPLINK_BRIDGE_ARGS_KEY:Ljava/lang/String; = "bridge_args"

.field private static final APPLINK_METHOD_ARGS_KEY:Ljava/lang/String; = "method_args"

.field private static final APPLINK_VERSION_KEY:Ljava/lang/String; = "version"

.field public static final ARGUMENTS_TAPTIME_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_TAP_TIME_UTC"

.field private static final BRIDGE_ARGS_METHOD_KEY:Ljava/lang/String; = "method"

.field private static final BUNDLE_APPLINK_ARGS_KEY:Ljava/lang/String; = "com.facebook.platform.APPLINK_ARGS"

.field private static final METHOD_ARGS_REF_KEY:Ljava/lang/String; = "ref"

.field private static final METHOD_ARGS_TARGET_URL_KEY:Ljava/lang/String; = "target_url"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private arguments:Lorg/json/JSONObject;

.field private ref:[Ljava/lang/String;

.field private targetUri:Landroid/net/Uri;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nextpeer/android/facebook/AppLinkData;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nextpeer/android/facebook/AppLinkData;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Ljava/lang/String;)Lcom/nextpeer/android/facebook/AppLinkData;
    .locals 1

    invoke-static {p0}, Lcom/nextpeer/android/facebook/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/nextpeer/android/facebook/AppLinkData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nextpeer/android/facebook/AppLinkData;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static createFromActivity(Landroid/app/Activity;)Lcom/nextpeer/android/facebook/AppLinkData;
    .locals 2

    const-string v0, "activity"

    invoke-static {p0, v0}, Lcom/nextpeer/android/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "com.facebook.platform.APPLINK_ARGS"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/AppLinkData;->createFromJson(Ljava/lang/String;)Lcom/nextpeer/android/facebook/AppLinkData;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/AppLinkData;->createFromUri(Landroid/net/Uri;)Lcom/nextpeer/android/facebook/AppLinkData;

    move-result-object v0

    goto :goto_0
.end method

.method private static createFromJson(Ljava/lang/String;)Lcom/nextpeer/android/facebook/AppLinkData;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "version"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "bridge_args"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "method"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "applink"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "2"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/nextpeer/android/facebook/AppLinkData;

    invoke-direct {v1}, Lcom/nextpeer/android/facebook/AppLinkData;-><init>()V

    iput-object v3, v1, Lcom/nextpeer/android/facebook/AppLinkData;->version:Ljava/lang/String;

    const-string v3, "method_args"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, v1, Lcom/nextpeer/android/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    iget-object v2, v1, Lcom/nextpeer/android/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v3, "ref"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/nextpeer/android/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v3, "ref"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/nextpeer/android/facebook/AppLinkData;->ref:[Ljava/lang/String;

    :cond_2
    iget-object v2, v1, Lcom/nextpeer/android/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v3, "target_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v1, Lcom/nextpeer/android/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    const-string v3, "target_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/nextpeer/android/facebook/AppLinkData;->targetUri:Landroid/net/Uri;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v1, Lcom/nextpeer/android/facebook/AppLinkData;->TAG:Ljava/lang/String;

    const-string v2, "Unable to parse AppLink JSON"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static createFromUri(Landroid/net/Uri;)Lcom/nextpeer/android/facebook/AppLinkData;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :cond_0
    return-object v0
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Lcom/nextpeer/android/facebook/AppLinkData$CompletionHandler;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/nextpeer/android/facebook/AppLinkData;->fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/facebook/AppLinkData$CompletionHandler;)V

    return-void
.end method

.method public static fetchDeferredAppLinkData(Landroid/content/Context;Ljava/lang/String;Lcom/nextpeer/android/facebook/AppLinkData$CompletionHandler;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/nextpeer/android/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completionHandler"

    invoke-static {p2, v0}, Lcom/nextpeer/android/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/nextpeer/android/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "applicationId"

    invoke-static {p1, v0}, Lcom/nextpeer/android/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/nextpeer/android/facebook/AppLinkData$DeferredAppLinkDataClient;

    invoke-direct {v0, p0, p1}, Lcom/nextpeer/android/facebook/AppLinkData$DeferredAppLinkDataClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/nextpeer/android/facebook/AppLinkData$1;

    invoke-direct {v1, p2}, Lcom/nextpeer/android/facebook/AppLinkData$1;-><init>(Lcom/nextpeer/android/facebook/AppLinkData$CompletionHandler;)V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/AppLinkData$DeferredAppLinkDataClient;->setCompletedListener(Lcom/nextpeer/android/facebook/internal/PlatformServiceClient$CompletedListener;)V

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AppLinkData$DeferredAppLinkDataClient;->start()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/nextpeer/android/facebook/AppLinkData$2;

    invoke-direct {v1, p2}, Lcom/nextpeer/android/facebook/AppLinkData$2;-><init>(Lcom/nextpeer/android/facebook/AppLinkData$CompletionHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getArguments()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AppLinkData;->arguments:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getRef()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AppLinkData;->ref:[Ljava/lang/String;

    return-object v0
.end method

.method public getTargetUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AppLinkData;->targetUri:Landroid/net/Uri;

    return-object v0
.end method
