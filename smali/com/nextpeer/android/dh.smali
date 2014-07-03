.class final Lcom/nextpeer/android/dh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nextpeer/android/dg;


# direct methods
.method constructor <init>(Lcom/nextpeer/android/dg;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dh;->a:Lcom/nextpeer/android/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/dh;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->a(Lcom/nextpeer/android/dg;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dh;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->b(Lcom/nextpeer/android/dg;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/16 v0, 0x5dc

    new-array v0, v0, [B

    new-instance v1, Ljava/net/DatagramPacket;

    array-length v2, v0

    invoke-direct {v1, v0, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    iget-object v0, p0, Lcom/nextpeer/android/dh;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->b(Lcom/nextpeer/android/dg;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/nextpeer/android/dh;->a:Lcom/nextpeer/android/dg;

    invoke-static {v1}, Lcom/nextpeer/android/dg;->c(Lcom/nextpeer/android/dg;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    instance-of v1, v0, Ljava/lang/InterruptedException;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/nextpeer/android/dh;->a:Lcom/nextpeer/android/dg;

    invoke-static {v1}, Lcom/nextpeer/android/dg;->d(Lcom/nextpeer/android/dg;)Lcom/nextpeer/android/dj;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/nextpeer/android/dj;->a(Ljava/lang/Exception;)V

    goto :goto_1
.end method
