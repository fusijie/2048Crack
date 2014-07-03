.class Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TokenRefreshRequest"
.end annotation


# instance fields
.field final messageReceiver:Landroid/os/Messenger;

.field messageSender:Landroid/os/Messenger;

.field final synthetic this$0:Lcom/nextpeer/android/facebook/Session;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/facebook/Session;)V
    .locals 2

    iput-object p1, p0, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;->this$0:Lcom/nextpeer/android/facebook/Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequestHandler;

    invoke-direct {v1, p1, p0}, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequestHandler;-><init>(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;->messageReceiver:Landroid/os/Messenger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;->messageSender:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$0(Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;)V
    .locals 0

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;->cleanup()V

    return-void
.end method

.method private cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;->this$0:Lcom/nextpeer/android/facebook/Session;

    #getter for: Lcom/nextpeer/android/facebook/Session;->currentTokenRefreshRequest:Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;
    invoke-static {v0}, Lcom/nextpeer/android/facebook/Session;->access$2(Lcom/nextpeer/android/facebook/Session;)Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;->this$0:Lcom/nextpeer/android/facebook/Session;

    const/4 v1, 0x0

    #setter for: Lcom/nextpeer/android/facebook/Session;->currentTokenRefreshRequest:Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;
    invoke-static {v0, v1}, Lcom/nextpeer/android/facebook/Session;->access$3(Lcom/nextpeer/android/facebook/Session;Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;)V

    :cond_0
    return-void
.end method

.method private refreshToken()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "access_token"

    iget-object v2, p0, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;->this$0:Lcom/nextpeer/android/facebook/Session;

    invoke-virtual {v2}, Lcom/nextpeer/android/facebook/Session;->getTokenInfo()Lcom/nextpeer/android/facebook/AccessToken;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nextpeer/android/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;->messageReceiver:Landroid/os/Messenger;

    iput-object v0, v1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;->messageSender:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;->cleanup()V

    goto :goto_0
.end method


# virtual methods
.method public bind()V
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->getStaticContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/facebook/internal/NativeProtocol;->createTokenRefreshIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->access$1()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;->this$0:Lcom/nextpeer/android/facebook/Session;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/facebook/Session;->setLastAttemptedTokenExtendDate(Ljava/util/Date;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;->cleanup()V

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v0, p0, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;->messageSender:Landroid/os/Messenger;

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;->refreshToken()V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/facebook/Session$TokenRefreshRequest;->cleanup()V

    invoke-static {}, Lcom/nextpeer/android/facebook/Session;->access$1()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method
