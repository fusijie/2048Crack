.class Lcom/nextpeer/android/facebook/AuthorizationClient;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/facebook/AuthorizationClient$AuthDialogBuilder;,
        Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;,
        Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;,
        Lcom/nextpeer/android/facebook/AuthorizationClient$BackgroundProcessingListener;,
        Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;,
        Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaAuthHandler;,
        Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;,
        Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaProxyAuthHandler;,
        Lcom/nextpeer/android/facebook/AuthorizationClient$OnCompletedListener;,
        Lcom/nextpeer/android/facebook/AuthorizationClient$Result;,
        Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;,
        Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;
    }
.end annotation


# static fields
.field static final EVENT_EXTRAS_APP_CALL_ID:Ljava/lang/String; = "call_id"

.field static final EVENT_EXTRAS_DEFAULT_AUDIENCE:Ljava/lang/String; = "default_audience"

.field static final EVENT_EXTRAS_IS_LEGACY:Ljava/lang/String; = "is_legacy"

.field static final EVENT_EXTRAS_LOGIN_BEHAVIOR:Ljava/lang/String; = "login_behavior"

.field static final EVENT_EXTRAS_MISSING_INTERNET_PERMISSION:Ljava/lang/String; = "no_internet_permission"

.field static final EVENT_EXTRAS_NEW_PERMISSIONS:Ljava/lang/String; = "new_permissions"

.field static final EVENT_EXTRAS_NOT_TRIED:Ljava/lang/String; = "not_tried"

.field static final EVENT_EXTRAS_PERMISSIONS:Ljava/lang/String; = "permissions"

.field static final EVENT_EXTRAS_PROTOCOL_VERSION:Ljava/lang/String; = "protocol_version"

.field static final EVENT_EXTRAS_REQUEST_CODE:Ljava/lang/String; = "request_code"

.field static final EVENT_EXTRAS_SERVICE_DISABLED:Ljava/lang/String; = "service_disabled"

.field static final EVENT_EXTRAS_TRY_LEGACY:Ljava/lang/String; = "try_legacy"

.field static final EVENT_EXTRAS_TRY_LOGIN_ACTIVITY:Ljava/lang/String; = "try_login_activity"

.field static final EVENT_EXTRAS_WRITE_PRIVACY:Ljava/lang/String; = "write_privacy"

.field static final EVENT_NAME_LOGIN_COMPLETE:Ljava/lang/String; = "fb_mobile_login_complete"

.field static final EVENT_NAME_LOGIN_START:Ljava/lang/String; = "fb_mobile_login_start"

.field static final EVENT_PARAM_AUTH_LOGGER_ID:Ljava/lang/String; = "0_auth_logger_id"

.field static final EVENT_PARAM_ERROR_CODE:Ljava/lang/String; = "4_error_code"

.field static final EVENT_PARAM_ERROR_MESSAGE:Ljava/lang/String; = "5_error_message"

.field static final EVENT_PARAM_EXTRAS:Ljava/lang/String; = "6_extras"

.field static final EVENT_PARAM_LOGIN_RESULT:Ljava/lang/String; = "2_result"

.field static final EVENT_PARAM_METHOD:Ljava/lang/String; = "3_method"

.field private static final EVENT_PARAM_METHOD_RESULT_SKIPPED:Ljava/lang/String; = "skipped"

.field static final EVENT_PARAM_TIMESTAMP:Ljava/lang/String; = "1_timestamp_ms"

.field private static final TAG:Ljava/lang/String; = "Facebook-AuthorizationClient"

.field private static final WEB_VIEW_AUTH_HANDLER_STORE:Ljava/lang/String; = "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

.field private static final WEB_VIEW_AUTH_HANDLER_TOKEN_KEY:Ljava/lang/String; = "TOKEN"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field transient backgroundProcessingListener:Lcom/nextpeer/android/facebook/AuthorizationClient$BackgroundProcessingListener;

.field transient checkedInternetPermission:Z

.field transient context:Landroid/content/Context;

.field currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

.field handlersToTry:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;",
            ">;"
        }
    .end annotation
.end field

.field loggingExtras:Ljava/util/Map;
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

.field transient onCompletedListener:Lcom/nextpeer/android/facebook/AuthorizationClient$OnCompletedListener;

.field pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

.field transient startActivityDelegate:Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nextpeer/android/facebook/AuthorizationClient;->getE2E()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/nextpeer/android/facebook/AuthorizationClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->notifyBackgroundProcessingStart()V

    return-void
.end method

.method static synthetic access$2(Lcom/nextpeer/android/facebook/AuthorizationClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->notifyBackgroundProcessingStop()V

    return-void
.end method

.method private addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private completeWithFailure()V
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v1, "Login attempt failed."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->complete(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V

    return-void
.end method

.method private static getE2E()Ljava/lang/String;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "init"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getHandlerTypes(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getLoginBehavior()Lcom/nextpeer/android/facebook/SessionLoginBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->allowsKatanaAuth()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->isLegacy()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;

    invoke-direct {v2, p0}, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;-><init>(Lcom/nextpeer/android/facebook/AuthorizationClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;

    invoke-direct {v2, p0}, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;-><init>(Lcom/nextpeer/android/facebook/AuthorizationClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    new-instance v2, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaProxyAuthHandler;

    invoke-direct {v2, p0}, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaProxyAuthHandler;-><init>(Lcom/nextpeer/android/facebook/AuthorizationClient;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/SessionLoginBehavior;->allowsWebViewAuth()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;

    invoke-direct {v1, p0}, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;-><init>(Lcom/nextpeer/android/facebook/AuthorizationClient;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method private logAuthorizationMethodComplete(Ljava/lang/String;Lcom/nextpeer/android/facebook/AuthorizationClient$Result;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/nextpeer/android/facebook/AuthorizationClient$Result;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p2, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->code:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->errorMessage:Ljava/lang/String;

    iget-object v4, p2, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->errorCode:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/AuthorizationClient;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-static {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "2_result"

    sget-object v2, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->ERROR:Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;

    invoke-virtual {v2}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result$Code;->getLoggingValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "5_error_message"

    const-string v2, "Unexpected call to logAuthorizationMethodComplete with null pendingRequest."

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    const-string v1, "3_method"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getAuthId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz p2, :cond_2

    const-string v1, "2_result"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p3, :cond_3

    const-string v1, "5_error_message"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p4, :cond_4

    const-string v1, "4_error_code"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p5}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v2, "6_extras"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private logAuthorizationMethodStart(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getAuthId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "3_method"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static newAuthorizationLoggingBundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "1_timestamp_ms"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "0_auth_logger_id"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "3_method"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "2_result"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "5_error_message"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "4_error_code"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "6_extras"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private notifyBackgroundProcessingStart()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/nextpeer/android/facebook/AuthorizationClient$BackgroundProcessingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/nextpeer/android/facebook/AuthorizationClient$BackgroundProcessingListener;

    invoke-interface {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$BackgroundProcessingListener;->onBackgroundProcessingStarted()V

    :cond_0
    return-void
.end method

.method private notifyBackgroundProcessingStop()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/nextpeer/android/facebook/AuthorizationClient$BackgroundProcessingListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/nextpeer/android/facebook/AuthorizationClient$BackgroundProcessingListener;

    invoke-interface {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$BackgroundProcessingListener;->onBackgroundProcessingStopped()V

    :cond_0
    return-void
.end method

.method private notifyOnCompleteListener(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->onCompletedListener:Lcom/nextpeer/android/facebook/AuthorizationClient$OnCompletedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->onCompletedListener:Lcom/nextpeer/android/facebook/AuthorizationClient$OnCompletedListener;

    invoke-interface {v0, p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$OnCompletedListener;->onCompleted(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V

    :cond_0
    return-void
.end method


# virtual methods
.method authorize(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "Attempted to authorize while a request is pending."

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->needsNewTokenValidation()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->checkInternetPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iput-object p1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/AuthorizationClient;->getHandlerTypes(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->tryNextHandler()V

    goto :goto_0
.end method

.method cancelCurrentHandler()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;->cancel()V

    :cond_0
    return-void
.end method

.method checkInternetPermission()Z
    .locals 3

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->checkedInternetPermission:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p0, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient;->checkPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->context:Landroid/content/Context;

    sget v1, Lcom/nextpeer/android/R$string;->np__facebook_internet_permission_error_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->context:Landroid/content/Context;

    sget v2, Lcom/nextpeer/android/R$string;->np__facebook_internet_permission_error_message:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v2, v0, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->complete(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->checkedInternetPermission:Z

    goto :goto_0
.end method

.method checkPermission(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method complete(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    iget-object v1, v1, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;->methodLoggingExtras:Ljava/util/Map;

    invoke-direct {p0, v0, p1, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient;->logAuthorizationMethodComplete(Ljava/lang/String;Lcom/nextpeer/android/facebook/AuthorizationClient$Result;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    iput-object v0, p1, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->loggingExtras:Ljava/util/Map;

    :cond_1
    iput-object v2, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    iput-object v2, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    iput-object v2, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    iput-object v2, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->loggingExtras:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/AuthorizationClient;->notifyOnCompleteListener(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V

    return-void
.end method

.method completeAndValidate(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V
    .locals 1

    iget-object v0, p1, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->token:Lcom/nextpeer/android/facebook/AccessToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->needsNewTokenValidation()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/AuthorizationClient;->validateSameFbidAndFinish(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/AuthorizationClient;->complete(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V

    goto :goto_0
.end method

.method continueAuth()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "Attempted to continue authorization without a pending request."

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;->needsRestart()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;->cancel()V

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->tryCurrentHandler()Z

    :cond_2
    return-void
.end method

.method createGetPermissionsRequest(Ljava/lang/String;)Lcom/nextpeer/android/facebook/Request;
    .locals 6

    const/4 v1, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fields"

    const-string v2, "id"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "access_token"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/nextpeer/android/facebook/Request;

    const-string v2, "me/permissions"

    sget-object v4, Lcom/nextpeer/android/facebook/HttpMethod;->GET:Lcom/nextpeer/android/facebook/HttpMethod;

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    return-object v0
.end method

.method createGetProfileIdRequest(Ljava/lang/String;)Lcom/nextpeer/android/facebook/Request;
    .locals 6

    const/4 v1, 0x0

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "fields"

    const-string v2, "id"

    invoke-virtual {v3, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "access_token"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/nextpeer/android/facebook/Request;

    const-string v2, "me"

    sget-object v4, Lcom/nextpeer/android/facebook/HttpMethod;->GET:Lcom/nextpeer/android/facebook/HttpMethod;

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/Request;-><init>(Lcom/nextpeer/android/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/HttpMethod;Lcom/nextpeer/android/facebook/Request$Callback;)V

    return-object v0
.end method

.method createReauthValidationBatch(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)Lcom/nextpeer/android/facebook/RequestBatch;
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->token:Lcom/nextpeer/android/facebook/AccessToken;

    invoke-virtual {v2}, Lcom/nextpeer/android/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/nextpeer/android/facebook/AuthorizationClient$3;

    invoke-direct {v3, p0, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$3;-><init>(Lcom/nextpeer/android/facebook/AuthorizationClient;Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v4}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getPreviousAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/nextpeer/android/facebook/AuthorizationClient;->createGetProfileIdRequest(Ljava/lang/String;)Lcom/nextpeer/android/facebook/Request;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/nextpeer/android/facebook/Request;->setCallback(Lcom/nextpeer/android/facebook/Request$Callback;)V

    invoke-virtual {p0, v2}, Lcom/nextpeer/android/facebook/AuthorizationClient;->createGetProfileIdRequest(Ljava/lang/String;)Lcom/nextpeer/android/facebook/Request;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/nextpeer/android/facebook/Request;->setCallback(Lcom/nextpeer/android/facebook/Request$Callback;)V

    invoke-virtual {p0, v4}, Lcom/nextpeer/android/facebook/AuthorizationClient;->createGetPermissionsRequest(Ljava/lang/String;)Lcom/nextpeer/android/facebook/Request;

    move-result-object v3

    new-instance v4, Lcom/nextpeer/android/facebook/AuthorizationClient$4;

    invoke-direct {v4, p0, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient$4;-><init>(Lcom/nextpeer/android/facebook/AuthorizationClient;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/nextpeer/android/facebook/Request;->setCallback(Lcom/nextpeer/android/facebook/Request$Callback;)V

    new-instance v4, Lcom/nextpeer/android/facebook/RequestBatch;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/nextpeer/android/facebook/Request;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v5, 0x1

    aput-object v2, v6, v5

    const/4 v2, 0x2

    aput-object v3, v6, v2

    invoke-direct {v4, v6}, Lcom/nextpeer/android/facebook/RequestBatch;-><init>([Lcom/nextpeer/android/facebook/Request;)V

    iget-object v2, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v2}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/nextpeer/android/facebook/RequestBatch;->setBatchApplicationId(Ljava/lang/String;)V

    new-instance v2, Lcom/nextpeer/android/facebook/AuthorizationClient$5;

    invoke-direct {v2, p0, v0, p1, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient$5;-><init>(Lcom/nextpeer/android/facebook/AuthorizationClient;Ljava/util/ArrayList;Lcom/nextpeer/android/facebook/AuthorizationClient$Result;Ljava/util/ArrayList;)V

    invoke-virtual {v4, v2}, Lcom/nextpeer/android/facebook/RequestBatch;->addCallback(Lcom/nextpeer/android/facebook/RequestBatch$Callback;)V

    return-object v4
.end method

.method getBackgroundProcessingListener()Lcom/nextpeer/android/facebook/AuthorizationClient$BackgroundProcessingListener;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/nextpeer/android/facebook/AuthorizationClient$BackgroundProcessingListener;

    return-object v0
.end method

.method getInProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getOnCompletedListener()Lcom/nextpeer/android/facebook/AuthorizationClient$OnCompletedListener;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->onCompletedListener:Lcom/nextpeer/android/facebook/AuthorizationClient$OnCompletedListener;

    return-object v0
.end method

.method getStartActivityDelegate()Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->startActivityDelegate:Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->startActivityDelegate:Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/nextpeer/android/facebook/AuthorizationClient$2;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/facebook/AuthorizationClient$2;-><init>(Lcom/nextpeer/android/facebook/AuthorizationClient;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getRequestCode()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setBackgroundProcessingListener(Lcom/nextpeer/android/facebook/AuthorizationClient$BackgroundProcessingListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->backgroundProcessingListener:Lcom/nextpeer/android/facebook/AuthorizationClient$BackgroundProcessingListener;

    return-void
.end method

.method setContext(Landroid/app/Activity;)V
    .locals 1

    iput-object p1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->context:Landroid/content/Context;

    new-instance v0, Lcom/nextpeer/android/facebook/AuthorizationClient$1;

    invoke-direct {v0, p0, p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$1;-><init>(Lcom/nextpeer/android/facebook/AuthorizationClient;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->startActivityDelegate:Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;

    return-void
.end method

.method setContext(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->context:Landroid/content/Context;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->startActivityDelegate:Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;

    return-void
.end method

.method setOnCompletedListener(Lcom/nextpeer/android/facebook/AuthorizationClient$OnCompletedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->onCompletedListener:Lcom/nextpeer/android/facebook/AuthorizationClient$OnCompletedListener;

    return-void
.end method

.method startOrContinueAuth(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;)V
    .locals 1

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->getInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->continueAuth()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/AuthorizationClient;->authorize(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;)V

    goto :goto_0
.end method

.method tryCurrentHandler()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;->needsInternetPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->checkInternetPermission()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "no_internet_permission"

    const-string v2, "1"

    invoke-direct {p0, v1, v2, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;->tryAuthorize(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient;->logAuthorizationMethodStart(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "not_tried"

    iget-object v2, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v2}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/nextpeer/android/facebook/AuthorizationClient;->addLoggingExtra(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method tryNextHandler()V
    .locals 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;->getNameForLogging()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skipped"

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    iget-object v5, v0, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;->methodLoggingExtras:Ljava/util/Map;

    move-object v0, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/nextpeer/android/facebook/AuthorizationClient;->logAuthorizationMethodComplete(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->completeWithFailure()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->handlersToTry:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    iput-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient;->currentHandler:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;

    invoke-virtual {p0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->tryCurrentHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method validateSameFbidAndFinish(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V
    .locals 2

    iget-object v0, p1, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->token:Lcom/nextpeer/android/facebook/AccessToken;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nextpeer/android/facebook/FacebookException;

    const-string v1, "Can\'t validate without a token"

    invoke-direct {v0, v1}, Lcom/nextpeer/android/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/nextpeer/android/facebook/AuthorizationClient;->createReauthValidationBatch(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)Lcom/nextpeer/android/facebook/RequestBatch;

    move-result-object v0

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->notifyBackgroundProcessingStart()V

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/RequestBatch;->executeAsync()Lcom/nextpeer/android/facebook/RequestAsyncTask;

    return-void
.end method
