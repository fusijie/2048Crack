.class final Lcom/nextpeer/android/dg$aa;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/dg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "aa"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/nextpeer/android/dg;


# direct methods
.method private constructor <init>(Lcom/nextpeer/android/dg;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nextpeer/android/dg;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/dg$aa;-><init>(Lcom/nextpeer/android/dg;)V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    new-instance v1, Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    invoke-static {v2}, Lcom/nextpeer/android/dg;->i(Lcom/nextpeer/android/dg;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    invoke-static {v3}, Lcom/nextpeer/android/dg;->j(Lcom/nextpeer/android/dg;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcom/nextpeer/android/dg;->a(Lcom/nextpeer/android/dg;Ljava/net/InetSocketAddress;)V

    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/nextpeer/android/dg;->a(Lcom/nextpeer/android/dg;Ljava/net/DatagramSocket;)V

    iget-object v0, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->b(Lcom/nextpeer/android/dg;)Ljava/net/DatagramSocket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    new-instance v0, Ljava/net/InetSocketAddress;

    const v1, 0xc34d

    invoke-direct {v0, v1}, Ljava/net/InetSocketAddress;-><init>(I)V

    iget-object v1, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    invoke-static {v1}, Lcom/nextpeer/android/dg;->b(Lcom/nextpeer/android/dg;)Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "UdpSendingHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nextpeer/android/dg;->a(Lcom/nextpeer/android/dg;Landroid/os/HandlerThread;)V

    iget-object v0, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->k(Lcom/nextpeer/android/dg;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    invoke-static {v2}, Lcom/nextpeer/android/dg;->k(Lcom/nextpeer/android/dg;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    invoke-static {v3}, Lcom/nextpeer/android/dg;->l(Lcom/nextpeer/android/dg;)Lcom/nextpeer/android/dg$ac;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-static {v0, v1}, Lcom/nextpeer/android/dg;->a(Lcom/nextpeer/android/dg;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "UdpReceivingHandlerThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/nextpeer/android/dg;->b(Lcom/nextpeer/android/dg;Landroid/os/HandlerThread;)V

    iget-object v0, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->m(Lcom/nextpeer/android/dg;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iget-object v0, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    invoke-static {v2}, Lcom/nextpeer/android/dg;->m(Lcom/nextpeer/android/dg;)Landroid/os/HandlerThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    invoke-static {v3}, Lcom/nextpeer/android/dg;->n(Lcom/nextpeer/android/dg;)Lcom/nextpeer/android/dg$ab;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-static {v0, v1}, Lcom/nextpeer/android/dg;->b(Lcom/nextpeer/android/dg;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    invoke-static {v2}, Lcom/nextpeer/android/dg;->o(Lcom/nextpeer/android/dg;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0, v1}, Lcom/nextpeer/android/dg;->a(Lcom/nextpeer/android/dg;Ljava/lang/Thread;)V

    iget-object v0, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->p(Lcom/nextpeer/android/dg;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nextpeer/android/dg;->a(Lcom/nextpeer/android/dg;I)V

    iget-object v0, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->q(Lcom/nextpeer/android/dg;)V

    :goto_0
    return-object v4

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/nextpeer/android/dg$aa;->a:Lcom/nextpeer/android/dg;

    invoke-static {v1}, Lcom/nextpeer/android/dg;->d(Lcom/nextpeer/android/dg;)Lcom/nextpeer/android/dj;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nextpeer/android/dj;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0}, Lcom/nextpeer/android/dg$aa;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
