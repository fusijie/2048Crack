.class Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;
.super Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewAuthHandler"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private applicationId:Ljava/lang/String;

.field private e2e:Ljava/lang/String;

.field private transient loginDialog:Lcom/nextpeer/android/facebook/widget/WebDialog;

.field final synthetic this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/AuthorizationClient;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;-><init>(Lcom/nextpeer/android/facebook/AuthorizationClient;)V

    return-void
.end method

.method private loadCookieToken()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->getStartActivityDelegate()Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "TOKEN"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private saveCookieToken(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->getStartActivityDelegate()Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TOKEN"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Facebook-AuthorizationClient"

    const-string v1, "Could not update saved web view auth handler token."

    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->loginDialog:Lcom/nextpeer/android/facebook/widget/WebDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->loginDialog:Lcom/nextpeer/android/facebook/widget/WebDialog;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/widget/WebDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->loginDialog:Lcom/nextpeer/android/facebook/widget/WebDialog;

    :cond_0
    return-void
.end method

.method getNameForLogging()Ljava/lang/String;
    .locals 1

    const-string v0, "web_view"

    return-object v0
.end method

.method needsInternetPermission()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method needsRestart()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method onWebDialogComplete(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/FacebookException;)V
    .locals 6

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    const-string v0, "e2e"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "e2e"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    :cond_0
    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/nextpeer/android/facebook/AccessTokenSource;->WEB_VIEW:Lcom/nextpeer/android/facebook/AccessTokenSource;

    invoke-static {v0, p2, v1}, Lcom/nextpeer/android/facebook/AccessToken;->createFromWebBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/nextpeer/android/facebook/AccessTokenSource;)Lcom/nextpeer/android/facebook/AccessToken;

    move-result-object v1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createTokenResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Lcom/nextpeer/android/facebook/AccessToken;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    iget-object v2, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v2, v2, Lcom/nextpeer/android/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/CookieSyncManager;->sync()V

    invoke-virtual {v1}, Lcom/nextpeer/android/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->saveCookieToken(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->completeAndValidate(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V

    return-void

    :cond_1
    instance-of v0, p3, Lcom/nextpeer/android/facebook/FacebookOperationCanceledException;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    const-string v1, "User canceled log in."

    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createCancelResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_0

    :cond_2
    iput-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/nextpeer/android/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v0

    instance-of v2, p3, Lcom/nextpeer/android/facebook/FacebookServiceException;

    if-eqz v2, :cond_3

    check-cast p3, Lcom/nextpeer/android/facebook/FacebookServiceException;

    invoke-virtual {p3}, Lcom/nextpeer/android/facebook/FacebookServiceException;->getRequestError()Lcom/nextpeer/android/facebook/FacebookRequestError;

    move-result-object v2

    const-string v0, "%d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2}, Lcom/nextpeer/android/facebook/FacebookRequestError;->getErrorCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/nextpeer/android/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v3, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v3, v3, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v3, v1, v2, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v2, v0

    move-object v0, v1

    goto :goto_1
.end method

.method tryAuthorize(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->applicationId:Ljava/lang/String;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ","

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scope"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "scope"

    invoke-virtual {p0, v2, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getPreviousAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->loadCookieToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "access_token"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "access_token"

    const-string v2, "1"

    invoke-virtual {p0, v1, v2}, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    new-instance v1, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler$1;-><init>(Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;)V

    #calls: Lcom/nextpeer/android/facebook/AuthorizationClient;->getE2E()Ljava/lang/String;
    invoke-static {}, Lcom/nextpeer/android/facebook/AuthorizationClient;->access$0()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    const-string v2, "e2e"

    iget-object v3, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthDialogBuilder;

    iget-object v3, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-virtual {v3}, Lcom/nextpeer/android/facebook/AuthorizationClient;->getStartActivityDelegate()Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/nextpeer/android/facebook/AuthorizationClient$StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->applicationId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthDialogBuilder;->setE2E(Ljava/lang/String;)Lcom/nextpeer/android/facebook/AuthorizationClient$AuthDialogBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthDialogBuilder;->setOnCompleteListener(Lcom/nextpeer/android/facebook/widget/WebDialog$OnCompleteListener;)Lcom/nextpeer/android/facebook/widget/WebDialog$BuilderBase;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/widget/WebDialog$Builder;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/widget/WebDialog$Builder;->build()Lcom/nextpeer/android/facebook/widget/WebDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->loginDialog:Lcom/nextpeer/android/facebook/widget/WebDialog;

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->loginDialog:Lcom/nextpeer/android/facebook/widget/WebDialog;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/widget/WebDialog;->show()V

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/nextpeer/android/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/nextpeer/android/facebook/internal/Utility;->clearFacebookCookies(Landroid/content/Context;)V

    const-string v1, "access_token"

    const-string v2, "0"

    invoke-virtual {p0, v1, v2}, Lcom/nextpeer/android/facebook/AuthorizationClient$WebViewAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
