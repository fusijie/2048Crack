.class final Lcom/nextpeer/android/cl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile a:Ljava/nio/channels/SocketChannel;

.field private volatile b:Z

.field private final c:Lcom/nextpeer/android/cn;

.field private volatile d:Ljava/nio/channels/Selector;

.field private final e:Lcom/nextpeer/android/ce;

.field private final f:Lcom/nextpeer/android/cd;


# direct methods
.method public constructor <init>(Lcom/nextpeer/android/ce;Lcom/nextpeer/android/cd;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/cl;->b:Z

    iput-object p2, p0, Lcom/nextpeer/android/cl;->f:Lcom/nextpeer/android/cd;

    iput-object p1, p0, Lcom/nextpeer/android/cl;->e:Lcom/nextpeer/android/ce;

    new-instance v0, Lcom/nextpeer/android/cn;

    iget-object v1, p0, Lcom/nextpeer/android/cl;->e:Lcom/nextpeer/android/ce;

    invoke-direct {v0, v1}, Lcom/nextpeer/android/cn;-><init>(Lcom/nextpeer/android/ce;)V

    iput-object v0, p0, Lcom/nextpeer/android/cl;->c:Lcom/nextpeer/android/cn;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/cl;->b:Z

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/cl;->b:Z

    return v0
.end method

.method public final run()V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    const-string v0, "java.net.preferIPv6Addresses"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lcom/nextpeer/android/cl;->f:Lcom/nextpeer/android/cd;

    invoke-virtual {v1}, Lcom/nextpeer/android/cd;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/cl;->f:Lcom/nextpeer/android/cd;

    invoke-virtual {v2}, Lcom/nextpeer/android/cd;->c()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-static {v0}, Ljava/nio/channels/SocketChannel;->open(Ljava/net/SocketAddress;)Ljava/nio/channels/SocketChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/cl;->a:Ljava/nio/channels/SocketChannel;

    iget-object v0, p0, Lcom/nextpeer/android/cl;->a:Ljava/nio/channels/SocketChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    iget-object v0, p0, Lcom/nextpeer/android/cl;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v0

    iput-object v0, p0, Lcom/nextpeer/android/cl;->d:Ljava/nio/channels/Selector;

    iget-object v0, p0, Lcom/nextpeer/android/cl;->a:Ljava/nio/channels/SocketChannel;

    iget-object v1, p0, Lcom/nextpeer/android/cl;->d:Ljava/nio/channels/Selector;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    iget-object v0, p0, Lcom/nextpeer/android/cl;->f:Lcom/nextpeer/android/cd;

    iget-object v1, p0, Lcom/nextpeer/android/cl;->a:Ljava/nio/channels/SocketChannel;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/cd;->a(Ljava/nio/channels/SocketChannel;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/cl;->b:Z

    iget-object v0, p0, Lcom/nextpeer/android/cl;->e:Lcom/nextpeer/android/ce;

    invoke-interface {v0}, Lcom/nextpeer/android/ce;->a()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/nextpeer/android/cl;->b:Z

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v5, p0, Lcom/nextpeer/android/cl;->b:Z

    iget-object v0, p0, Lcom/nextpeer/android/cl;->e:Lcom/nextpeer/android/ce;

    :goto_2
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NPTablerListener - send failed to init with exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/cl;->e:Lcom/nextpeer/android/ce;

    invoke-interface {v1, v0}, Lcom/nextpeer/android/ce;->a(Ljava/io/IOException;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/cl;->c:Lcom/nextpeer/android/cn;

    invoke-virtual {v0}, Lcom/nextpeer/android/cn;->a()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    :cond_2
    :try_start_3
    iget-boolean v0, p0, Lcom/nextpeer/android/cl;->b:Z

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/nextpeer/android/cl;->c:Lcom/nextpeer/android/cn;

    invoke-virtual {v1}, Lcom/nextpeer/android/cn;->a()I

    move-result v1

    if-lt v0, v1, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/nextpeer/android/cl;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/cl;->c:Lcom/nextpeer/android/cn;

    invoke-virtual {v0, v2}, Lcom/nextpeer/android/cn;->a(Ljava/nio/ByteBuffer;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "NPTablerListener - send failed to read with exception: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/cl;->e:Lcom/nextpeer/android/ce;

    invoke-interface {v1, v0}, Lcom/nextpeer/android/ce;->b(Ljava/lang/Exception;)V

    goto :goto_1

    :cond_4
    :try_start_4
    iget-object v0, p0, Lcom/nextpeer/android/cl;->d:Ljava/nio/channels/Selector;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v3, v4}, Ljava/nio/channels/Selector;->select(J)I

    iget-object v0, p0, Lcom/nextpeer/android/cl;->d:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/SelectionKey;

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isValid()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->isReadable()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SocketChannel;

    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    if-gez v1, :cond_5

    iget-object v1, p0, Lcom/nextpeer/android/cl;->e:Lcom/nextpeer/android/ce;

    invoke-interface {v1}, Lcom/nextpeer/android/ce;->b()V

    invoke-virtual {v0}, Ljava/nio/channels/SelectionKey;->cancel()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/cl;->b:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3
.end method
