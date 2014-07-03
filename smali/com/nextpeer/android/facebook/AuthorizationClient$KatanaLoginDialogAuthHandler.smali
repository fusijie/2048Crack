.class Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;
.super Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaAuthHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KatanaLoginDialogAuthHandler"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private callId:Ljava/lang/String;

.field final synthetic this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/AuthorizationClient;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaAuthHandler;-><init>(Lcom/nextpeer/android/facebook/AuthorizationClient;)V

    return-void
.end method

.method private createCancelOrErrorResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Landroid/content/Intent;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UserCanceled"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PermissionDenied"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v0, "com.facebook.platform.status.ERROR_DESCRIPTION"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createCancelResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v2, "com.facebook.platform.status.ERROR_JSON"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "error_code"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    const-string v2, "com.facebook.platform.status.ERROR_DESCRIPTION"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private handleResultOk(Landroid/content/Intent;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    sget-object v2, Lcom/nextpeer/android/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_NATIVE:Lcom/nextpeer/android/facebook/AccessTokenSource;

    invoke-static {v0, v2}, Lcom/nextpeer/android/facebook/AccessToken;->createFromNativeLogin(Landroid/os/Bundle;Lcom/nextpeer/android/facebook/AccessTokenSource;)Lcom/nextpeer/android/facebook/AccessToken;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createTokenResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Lcom/nextpeer/android/facebook/AccessToken;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ServiceDisabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "service_disabled"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-direct {p0, v0, p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->createCancelOrErrorResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Landroid/content/Intent;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method getNameForLogging()Ljava/lang/String;
    .locals 1

    const-string v0, "katana_login_dialog"

    return-object v0
.end method

.method onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v1, "Operation canceled"

    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createCancelResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->completeAndValidate(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-static {p3}, Lcom/nextpeer/android/facebook/internal/NativeProtocol;->isServiceDisabledResult20121101(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-direct {p0, v0, p3}, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->createCancelOrErrorResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Landroid/content/Intent;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v2, "Unexpected resultCode from authorization."

    invoke-static {v1, v2, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p3}, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->handleResultOk(Landroid/content/Intent;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->tryNextHandler()V

    goto :goto_1
.end method

.method tryAuthorize(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;)Z
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/nextpeer/android/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getDefaultAudience()Lcom/nextpeer/android/facebook/SessionDefaultAudience;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nextpeer/android/facebook/SessionDefaultAudience;->getNativeProtocolAudience()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/nextpeer/android/facebook/internal/NativeProtocol;->createLoginDialog20121101Intent(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const-string v2, "com.facebook.platform.protocol.CALL_ID"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->callId:Ljava/lang/String;

    const-string v2, "call_id"

    iget-object v3, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->callId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "protocol_version"

    const-string v3, "com.facebook.platform.protocol.PROTOCOL_VERSION"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "permissions"

    const-string v2, ","

    const-string v3, "com.facebook.platform.extra.PERMISSIONS"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "write_privacy"

    const-string v2, "com.facebook.platform.extra.WRITE_PRIVACY"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getRequestCode()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaLoginDialogAuthHandler;->tryIntent(Landroid/content/Intent;I)Z

    move-result v0

    goto :goto_0
.end method
