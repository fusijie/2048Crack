.class final Lcom/nextpeer/android/dg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/dg$aa;,
        Lcom/nextpeer/android/dg$ab;,
        Lcom/nextpeer/android/dg$ac;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/net/InetSocketAddress;

.field private d:I

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Lcom/nextpeer/android/dj;

.field private h:Ljava/net/DatagramSocket;

.field private i:Lcom/nextpeer/android/dg$aa;

.field private j:Landroid/os/HandlerThread;

.field private k:Landroid/os/Handler;

.field private l:Lcom/nextpeer/android/dg$ac;

.field private m:Landroid/os/HandlerThread;

.field private n:Landroid/os/Handler;

.field private o:Lcom/nextpeer/android/dg$ab;

.field private p:Ljava/lang/Thread;

.field private q:Z

.field private r:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nextpeer/android/da;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/nextpeer/android/dj;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/nextpeer/android/dg;->d:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/dg;->e:Ljava/util/HashMap;

    new-instance v0, Lcom/nextpeer/android/dg$ac;

    invoke-direct {v0, p0, v1}, Lcom/nextpeer/android/dg$ac;-><init>(Lcom/nextpeer/android/dg;B)V

    iput-object v0, p0, Lcom/nextpeer/android/dg;->l:Lcom/nextpeer/android/dg$ac;

    new-instance v0, Lcom/nextpeer/android/dg$ab;

    invoke-direct {v0, p0, v1}, Lcom/nextpeer/android/dg$ab;-><init>(Lcom/nextpeer/android/dg;B)V

    iput-object v0, p0, Lcom/nextpeer/android/dg;->o:Lcom/nextpeer/android/dg$ab;

    new-instance v0, Lcom/nextpeer/android/dh;

    invoke-direct {v0, p0}, Lcom/nextpeer/android/dh;-><init>(Lcom/nextpeer/android/dg;)V

    iput-object v0, p0, Lcom/nextpeer/android/dg;->s:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/nextpeer/android/dg;->a:Ljava/lang/String;

    iput p2, p0, Lcom/nextpeer/android/dg;->b:I

    iput-object p3, p0, Lcom/nextpeer/android/dg;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/nextpeer/android/dg;->g:Lcom/nextpeer/android/dj;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/dg;->r:Ljava/util/Map;

    return-void
.end method

.method private a(Lcom/nextpeer/android/da;)V
    .locals 2

    new-instance v0, Lcom/nextpeer/android/di;

    invoke-direct {v0, p0, p1}, Lcom/nextpeer/android/di;-><init>(Lcom/nextpeer/android/dg;Lcom/nextpeer/android/da;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/dg;I)V
    .locals 0

    iput p1, p0, Lcom/nextpeer/android/dg;->d:I

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/dg;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dg;->k:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/dg;Landroid/os/HandlerThread;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dg;->j:Landroid/os/HandlerThread;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/dg;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dg;->p:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/dg;Ljava/net/DatagramSocket;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dg;->h:Ljava/net/DatagramSocket;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/dg;Ljava/net/InetSocketAddress;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dg;->c:Ljava/net/InetSocketAddress;

    return-void
.end method

.method static synthetic a(Lcom/nextpeer/android/dg;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/nextpeer/android/dg;->q:Z

    return v0
.end method

.method static synthetic b(Lcom/nextpeer/android/dg;)Ljava/net/DatagramSocket;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dg;->h:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method static synthetic b(Lcom/nextpeer/android/dg;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dg;->n:Landroid/os/Handler;

    return-void
.end method

.method static synthetic b(Lcom/nextpeer/android/dg;Landroid/os/HandlerThread;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dg;->m:Landroid/os/HandlerThread;

    return-void
.end method

.method static synthetic c(Lcom/nextpeer/android/dg;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dg;->n:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lcom/nextpeer/android/dg;)Lcom/nextpeer/android/dj;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dg;->g:Lcom/nextpeer/android/dj;

    return-object v0
.end method

.method private static d()Ljava/util/List;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[NPTablerUdpConnection] Failed to get  local interfaces- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/nextpeer/android/dg;)Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dg;->c:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method static synthetic f(Lcom/nextpeer/android/dg;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dg;->r:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/nextpeer/android/dg;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dg;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/nextpeer/android/dg;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dg;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic i(Lcom/nextpeer/android/dg;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dg;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/nextpeer/android/dg;)I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/dg;->b:I

    return v0
.end method

.method static synthetic k(Lcom/nextpeer/android/dg;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dg;->j:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic l(Lcom/nextpeer/android/dg;)Lcom/nextpeer/android/dg$ac;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dg;->l:Lcom/nextpeer/android/dg$ac;

    return-object v0
.end method

.method static synthetic m(Lcom/nextpeer/android/dg;)Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dg;->m:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic n(Lcom/nextpeer/android/dg;)Lcom/nextpeer/android/dg$ab;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dg;->o:Lcom/nextpeer/android/dg$ab;

    return-object v0
.end method

.method static synthetic o(Lcom/nextpeer/android/dg;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dg;->s:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic p(Lcom/nextpeer/android/dg;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dg;->p:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic q(Lcom/nextpeer/android/dg;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nextpeer/android/dg;->q:Z

    return-void
.end method

.method static synthetic r(Lcom/nextpeer/android/dg;)I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/dg;->d:I

    return v0
.end method

.method static synthetic s(Lcom/nextpeer/android/dg;)Ljava/net/InetSocketAddress;
    .locals 3

    invoke-static {}, Lcom/nextpeer/android/dg;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v1, Ljava/net/InetSocketAddress;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/nextpeer/android/dg;->h:Ljava/net/DatagramSocket;

    invoke-virtual {v2}, Ljava/net/DatagramSocket;->getLocalPort()I

    move-result v2

    invoke-direct {v1, v0, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    move-object v0, v1

    goto :goto_0
.end method

.method static synthetic t(Lcom/nextpeer/android/dg;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dg;->k:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/nextpeer/android/dg;->a(Lcom/nextpeer/android/da;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dg;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[NPTablerUdpConnection] Player with id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " removed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nextpeer/android/dg;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/nextpeer/android/da;)V
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/dg;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dg;->r:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/da;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/nextpeer/android/da;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    iget-object v1, p0, Lcom/nextpeer/android/dg;->r:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/nextpeer/android/dg;->a(Lcom/nextpeer/android/da;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final a([BLjava/lang/String;)V
    .locals 4

    array-length v0, p1

    const/16 v1, 0x514

    if-le v0, v1, :cond_0

    const-string v0, "[NPTablerUdpConnection] Buffer sent out is too large to be sent!"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/nextpeer/android/dk;

    sget-object v1, Lcom/nextpeer/android/dk$aa;->b:Lcom/nextpeer/android/dk$aa;

    iget v2, p0, Lcom/nextpeer/android/dg;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/nextpeer/android/dg;->d:I

    invoke-direct {v0, v1, v2}, Lcom/nextpeer/android/dk;-><init>(Lcom/nextpeer/android/dk$aa;I)V

    invoke-virtual {v0, p2}, Lcom/nextpeer/android/dk;->b(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/nextpeer/android/dk;->a([B)V

    iget-object v1, p0, Lcom/nextpeer/android/dg;->k:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    new-instance v2, Lcom/nextpeer/android/dl;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/nextpeer/android/dl;-><init>(Lcom/nextpeer/android/dk;Lcom/nextpeer/android/da;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/nextpeer/android/dg;->k:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dg;->p:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dg;->p:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/dg;->p:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/dg;->j:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/dg;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nextpeer/android/dg;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/dg;->m:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/dg;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nextpeer/android/dg;->m:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_2
    iget-object v0, p0, Lcom/nextpeer/android/dg;->h:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/dg;->h:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nextpeer/android/dg;->h:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nextpeer/android/dg;->q:Z

    iget-object v0, p0, Lcom/nextpeer/android/dg;->g:Lcom/nextpeer/android/dj;

    return-void
.end method

.method public final c()V
    .locals 2

    const/4 v1, 0x0

    new-instance v0, Lcom/nextpeer/android/dg$aa;

    invoke-direct {v0, p0, v1}, Lcom/nextpeer/android/dg$aa;-><init>(Lcom/nextpeer/android/dg;B)V

    iput-object v0, p0, Lcom/nextpeer/android/dg;->i:Lcom/nextpeer/android/dg$aa;

    iget-object v0, p0, Lcom/nextpeer/android/dg;->i:Lcom/nextpeer/android/dg$aa;

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/dg$aa;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
