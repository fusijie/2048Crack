.class Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;
.super Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetTokenAuthHandler"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient getTokenClient:Lcom/nextpeer/android/facebook/GetTokenClient;

.field final synthetic this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/AuthorizationClient;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-direct {p0, p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthHandler;-><init>(Lcom/nextpeer/android/facebook/AuthorizationClient;)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/nextpeer/android/facebook/GetTokenClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/nextpeer/android/facebook/GetTokenClient;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/GetTokenClient;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/nextpeer/android/facebook/GetTokenClient;

    :cond_0
    return-void
.end method

.method getNameForLogging()Ljava/lang/String;
    .locals 1

    const-string v0, "get_token"

    return-object v0
.end method

.method getTokenCompleted(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Landroid/os/Bundle;)V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/nextpeer/android/facebook/GetTokenClient;

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    #calls: Lcom/nextpeer/android/facebook/AuthorizationClient;->notifyBackgroundProcessingStop()V
    invoke-static {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->access$2(Lcom/nextpeer/android/facebook/AuthorizationClient;)V

    if-eqz p2, :cond_4

    const-string v0, "com.facebook.platform.extra.PERMISSIONS"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v0, Lcom/nextpeer/android/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/nextpeer/android/facebook/AccessTokenSource;

    invoke-static {p2, v0}, Lcom/nextpeer/android/facebook/AccessToken;->createFromNativeLogin(Landroid/os/Bundle;Lcom/nextpeer/android/facebook/AccessTokenSource;)Lcom/nextpeer/android/facebook/AccessToken;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/nextpeer/android/facebook/AuthorizationClient;->pendingRequest:Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v1, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient$Result;->createTokenResult(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;Lcom/nextpeer/android/facebook/AccessToken;)Lcom/nextpeer/android/facebook/AuthorizationClient$Result;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->completeAndValidate(Lcom/nextpeer/android/facebook/AuthorizationClient$Result;)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "new_permissions"

    const-string v1, ","

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {p1, v2}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->setPermissions(Ljava/util/List;)V

    :cond_4
    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->tryNextHandler()V

    goto :goto_0

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method tryAuthorize(Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;)Z
    .locals 3

    new-instance v0, Lcom/nextpeer/android/facebook/GetTokenClient;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/nextpeer/android/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/nextpeer/android/facebook/GetTokenClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/nextpeer/android/facebook/GetTokenClient;

    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/nextpeer/android/facebook/GetTokenClient;

    invoke-virtual {v0}, Lcom/nextpeer/android/facebook/GetTokenClient;->start()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/nextpeer/android/facebook/AuthorizationClient;

    #calls: Lcom/nextpeer/android/facebook/AuthorizationClient;->notifyBackgroundProcessingStart()V
    invoke-static {v0}, Lcom/nextpeer/android/facebook/AuthorizationClient;->access$1(Lcom/nextpeer/android/facebook/AuthorizationClient;)V

    new-instance v0, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler$1;-><init>(Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;Lcom/nextpeer/android/facebook/AuthorizationClient$AuthorizationRequest;)V

    iget-object v1, p0, Lcom/nextpeer/android/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/nextpeer/android/facebook/GetTokenClient;

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/facebook/GetTokenClient;->setCompletedListener(Lcom/nextpeer/android/facebook/internal/PlatformServiceClient$CompletedListener;)V

    const/4 v0, 0x1

    goto :goto_0
.end method
