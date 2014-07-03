.class final Lcom/nextpeer/android/dg$ac;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/dg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ac"
.end annotation


# instance fields
.field final synthetic a:Lcom/nextpeer/android/dg;


# direct methods
.method private constructor <init>(Lcom/nextpeer/android/dg;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dg$ac;->a:Lcom/nextpeer/android/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nextpeer/android/dg;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/dg$ac;-><init>(Lcom/nextpeer/android/dg;)V

    return-void
.end method

.method private a(Ljava/net/DatagramPacket;Lcom/nextpeer/android/da;)V
    .locals 3

    :try_start_0
    invoke-virtual {p2}, Lcom/nextpeer/android/da;->b()Lcom/nextpeer/android/da$aa;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Lcom/nextpeer/android/da$aa;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nextpeer/android/da$aa;->b()I

    move-result v0

    invoke-direct {v1, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lcom/nextpeer/android/dg$ac;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->b(Lcom/nextpeer/android/dg;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p2}, Lcom/nextpeer/android/da;->a()Lcom/nextpeer/android/da$aa;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/net/InetSocketAddress;

    invoke-virtual {v0}, Lcom/nextpeer/android/da$aa;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/nextpeer/android/da$aa;->b()I

    move-result v0

    invoke-direct {v1, v2, v0}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lcom/nextpeer/android/dg$ac;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->b(Lcom/nextpeer/android/dg;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[NPTablerUdpConnection] Failed to send UDP packet to address ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nextpeer/android/da;->b()Lcom/nextpeer/android/da$aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") via private ip - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[NPTablerUdpConnection] Failed to send UDP packet to user ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/nextpeer/android/da;->a()Lcom/nextpeer/android/da$aa;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") via public ip - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/nextpeer/android/dg$ac;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->b(Lcom/nextpeer/android/dg;)Ljava/net/DatagramSocket;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/nextpeer/android/dl;

    invoke-virtual {v0}, Lcom/nextpeer/android/dl;->a()Lcom/nextpeer/android/dk;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/dg$ac;->a:Lcom/nextpeer/android/dg;

    invoke-static {v2}, Lcom/nextpeer/android/dg;->g(Lcom/nextpeer/android/dg;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nextpeer/android/dk;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/nextpeer/android/dk;->f()Ljava/net/DatagramPacket;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/nextpeer/android/dl;->b()Lcom/nextpeer/android/da;

    move-result-object v0

    if-nez v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/nextpeer/android/dg$ac;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->e(Lcom/nextpeer/android/dg;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->isUnresolved()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/dg$ac;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->e(Lcom/nextpeer/android/dg;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    iget-object v0, p0, Lcom/nextpeer/android/dg$ac;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->b(Lcom/nextpeer/android/dg;)Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/nextpeer/android/dg$ac;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->f(Lcom/nextpeer/android/dg;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/nextpeer/android/dg$ac;->a:Lcom/nextpeer/android/dg;

    invoke-static {v3}, Lcom/nextpeer/android/dg;->f(Lcom/nextpeer/android/dg;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/nextpeer/android/dg$ac;->a:Lcom/nextpeer/android/dg;

    invoke-static {v3}, Lcom/nextpeer/android/dg;->f(Lcom/nextpeer/android/dg;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/da;

    invoke-direct {p0, v1, v0}, Lcom/nextpeer/android/dg$ac;->a(Ljava/net/DatagramPacket;Lcom/nextpeer/android/da;)V

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[NPTablerUdpConnection] Failed to send UDP packet to server - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, v1, v0}, Lcom/nextpeer/android/dg$ac;->a(Ljava/net/DatagramPacket;Lcom/nextpeer/android/da;)V

    goto/16 :goto_0
.end method
