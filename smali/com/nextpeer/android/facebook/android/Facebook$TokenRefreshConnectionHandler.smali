.class Lcom/nextpeer/android/facebook/android/Facebook$TokenRefreshConnectionHandler;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/android/Facebook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TokenRefreshConnectionHandler"
.end annotation


# instance fields
.field connectionWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nextpeer/android/facebook/android/Facebook$TokenRefreshServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field facebookWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/nextpeer/android/facebook/android/Facebook;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/android/Facebook;Lcom/nextpeer/android/facebook/android/Facebook$TokenRefreshServiceConnection;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook$TokenRefreshConnectionHandler;->facebookWeakReference:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook$TokenRefreshConnectionHandler;->connectionWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p0, Lcom/nextpeer/android/facebook/android/Facebook$TokenRefreshConnectionHandler;->facebookWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/facebook/android/Facebook;

    iget-object v1, p0, Lcom/nextpeer/android/facebook/android/Facebook$TokenRefreshConnectionHandler;->connectionWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nextpeer/android/facebook/android/Facebook$TokenRefreshServiceConnection;

    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "access_token"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "expires_in"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    if-eqz v2, :cond_4

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Lcom/nextpeer/android/facebook/android/Facebook;->setAccessExpires(J)V

    #getter for: Lcom/nextpeer/android/facebook/android/Facebook;->session:Lcom/nextpeer/android/facebook/Session;
    invoke-static {v0}, Lcom/nextpeer/android/facebook/android/Facebook;->access$1(Lcom/nextpeer/android/facebook/android/Facebook;)Lcom/nextpeer/android/facebook/Session;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/nextpeer/android/facebook/LegacyHelper;->extendTokenCompleted(Lcom/nextpeer/android/facebook/Session;Landroid/os/Bundle;)V

    :cond_2
    iget-object v0, v1, Lcom/nextpeer/android/facebook/android/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/nextpeer/android/facebook/android/Facebook$ServiceListener;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v2, "expires_in"

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v2, v1, Lcom/nextpeer/android/facebook/android/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/nextpeer/android/facebook/android/Facebook$ServiceListener;

    invoke-interface {v2, v0}, Lcom/nextpeer/android/facebook/android/Facebook$ServiceListener;->onComplete(Landroid/os/Bundle;)V

    :cond_3
    :goto_1
    iget-object v0, v1, Lcom/nextpeer/android/facebook/android/Facebook$TokenRefreshServiceConnection;->applicationsContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_0

    :cond_4
    iget-object v0, v1, Lcom/nextpeer/android/facebook/android/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/nextpeer/android/facebook/android/Facebook$ServiceListener;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "error"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "error_code"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "error_code"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, v1, Lcom/nextpeer/android/facebook/android/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/nextpeer/android/facebook/android/Facebook$ServiceListener;

    new-instance v4, Lcom/nextpeer/android/facebook/android/FacebookError;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v2}, Lcom/nextpeer/android/facebook/android/FacebookError;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v3, v4}, Lcom/nextpeer/android/facebook/android/Facebook$ServiceListener;->onFacebookError(Lcom/nextpeer/android/facebook/android/FacebookError;)V

    goto :goto_1

    :cond_5
    iget-object v2, v1, Lcom/nextpeer/android/facebook/android/Facebook$TokenRefreshServiceConnection;->serviceListener:Lcom/nextpeer/android/facebook/android/Facebook$ServiceListener;

    new-instance v3, Ljava/lang/Error;

    if-eqz v0, :cond_6

    :goto_2
    invoke-direct {v3, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Lcom/nextpeer/android/facebook/android/Facebook$ServiceListener;->onError(Ljava/lang/Error;)V

    goto :goto_1

    :cond_6
    const-string v0, "Unknown service error"

    goto :goto_2
.end method
