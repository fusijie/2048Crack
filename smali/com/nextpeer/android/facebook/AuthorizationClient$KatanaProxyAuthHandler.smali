.class Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaProxyAuthHandler;
.super Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaAuthHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KatanaProxyAuthHandler"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/AuthorizationClient;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaAuthHandler;-><init>(Lcom/nextpeer/android/facebook/AuthorizationClient;)V

    return-void
.end method

.method private handleResultOk(Landroid/content/Intent;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v0, "error"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "error_type"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v2, "error_code"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "error_message"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "error_description"

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-nez v0, :cond_2

    if-nez v4, :cond_2

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/nextpeer/android/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/nextpeer/android/facebook/AccessTokenSource;

    invoke-static {v0, v3, v1}, Lcom/nextpeer/android/facebook/AccessToken;->createFromWebBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/AccessTokenSource;)Lcom/nextpeer/android/facebook/AccessToken;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v1, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createTokenResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Lcom/nextpeer/android/facebook/AccessToken;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    sget-object v3, Lcom/nextpeer/android/facebook/internal/ServerProtocol;->errorsProxyAuthDisabled:Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/nextpeer/android/facebook/internal/ServerProtocol;->errorsUserCanceled:Ljava/util/Collection;

    invoke-interface {v3, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createCancelResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v1, v0, v2, v4}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method getNameForLogging()Ljava/lang/String;
    .locals 1

    const-string v0, "katana_proxy_auth"

    return-object v0
.end method

.method onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v1, "Operation canceled"

    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createCancelResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->completeAndValidate(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V

    :goto_1
    const/4 v0, 0x1

    return v0

    :cond_0
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v1, "error"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createCancelResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v1, "Unexpected resultCode from authorization."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3}, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaProxyAuthHandler;->handleResultOk(Landroid/content/Intent;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->tryNextHandler()V

    goto :goto_1
.end method

.method tryAuthorize(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;)Z
    .locals 4

    #calls: Lcom/nextpeer/android/facebook/AuthorizationClient;->getE2E()Ljava/lang/String;
    invoke-static {}, Lcom/nextpeer/android/facebook/AuthorizationClient;->access$0()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaProxyAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/nextpeer/android/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/nextpeer/android/facebook/internal/NativeProtocol;->createProxyAuthIntent(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "e2e"

    invoke-virtual {p0, v2, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaProxyAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getRequestCode()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$KatanaProxyAuthHandler;->tryIntent(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method
