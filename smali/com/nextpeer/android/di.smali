.class final Lcom/nextpeer/android/di;
.super Landroid/os/AsyncTask;


# annotations
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

.field private final synthetic b:Lcom/nextpeer/android/da;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/dg;Lcom/nextpeer/android/da;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/di;->a:Lcom/nextpeer/android/dg;

    iput-object p2, p0, Lcom/nextpeer/android/di;->b:Lcom/nextpeer/android/da;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/nextpeer/android/dk;

    sget-object v1, Lcom/nextpeer/android/dk$aa;->a:Lcom/nextpeer/android/dk$aa;

    iget-object v2, p0, Lcom/nextpeer/android/di;->a:Lcom/nextpeer/android/dg;

    invoke-static {v2}, Lcom/nextpeer/android/dg;->r(Lcom/nextpeer/android/dg;)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    invoke-static {v2, v4}, Lcom/nextpeer/android/dg;->a(Lcom/nextpeer/android/dg;I)V

    invoke-direct {v0, v1, v3}, Lcom/nextpeer/android/dk;-><init>(Lcom/nextpeer/android/dk$aa;I)V

    iget-object v1, p0, Lcom/nextpeer/android/di;->a:Lcom/nextpeer/android/dg;

    invoke-static {v1}, Lcom/nextpeer/android/dg;->s(Lcom/nextpeer/android/dg;)Ljava/net/InetSocketAddress;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[UdpConnection] Got local ip "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/dk;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dk;->a(I)V

    :cond_0
    iget-object v1, p0, Lcom/nextpeer/android/di;->a:Lcom/nextpeer/android/dg;

    invoke-static {v1}, Lcom/nextpeer/android/dg;->g(Lcom/nextpeer/android/dg;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dk;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/nextpeer/android/dl;

    iget-object v2, p0, Lcom/nextpeer/android/di;->b:Lcom/nextpeer/android/da;

    invoke-direct {v1, v0, v2}, Lcom/nextpeer/android/dl;-><init>(Lcom/nextpeer/android/dk;Lcom/nextpeer/android/da;)V

    iget-object v0, p0, Lcom/nextpeer/android/di;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->t(Lcom/nextpeer/android/dg;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nextpeer/android/di;->a:Lcom/nextpeer/android/dg;

    invoke-static {v1}, Lcom/nextpeer/android/dg;->k(Lcom/nextpeer/android/dg;)Landroid/os/HandlerThread;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nextpeer/android/di;->a:Lcom/nextpeer/android/dg;

    invoke-static {v1}, Lcom/nextpeer/android/dg;->k(Lcom/nextpeer/android/dg;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/nextpeer/android/di;->a:Lcom/nextpeer/android/dg;

    invoke-static {v1}, Lcom/nextpeer/android/dg;->t(Lcom/nextpeer/android/dg;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
