.class public La/a/a/a/a/a/ao;
.super Ljava/lang/Object;

# interfaces
.implements La/a/a/a/a/a/am;


# static fields
.field static final d:Ljava/lang/String;


# instance fields
.field private a:Ljavax/net/SocketFactory;

.field private b:Ljava/lang/String;

.field protected c:Ljava/net/Socket;

.field e:La/a/a/a/a/b/ab;

.field private f:I

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/a/a/a/ao;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/a/a/a/a/ao;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/net/SocketFactory;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, La/a/a/a/a/a/ao;->d:Ljava/lang/String;

    new-instance v0, La/a/a/a/a/b/aa;

    invoke-direct {v0}, La/a/a/a/a/b/aa;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/ao;->e:La/a/a/a/a/b/ab;

    iget-object v0, p0, La/a/a/a/a/a/ao;->e:La/a/a/a/a/b/ab;

    iput-object p1, p0, La/a/a/a/a/a/ao;->a:Ljavax/net/SocketFactory;

    iput-object p2, p0, La/a/a/a/a/a/ao;->b:Ljava/lang/String;

    iput p3, p0, La/a/a/a/a/a/ao;->f:I

    return-void
.end method

.method private e()V
    .locals 1

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/ao;->c:Ljava/net/Socket;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/ao;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/a/ao;->c:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 5

    :try_start_0
    iget-object v0, p0, La/a/a/a/a/a/ao;->e:La/a/a/a/a/b/ab;

    sget-object v0, La/a/a/a/a/a/ao;->d:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, La/a/a/a/a/a/ao;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, La/a/a/a/a/a/ao;->f:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/Long;

    iget v3, p0, La/a/a/a/a/a/ao;->g:I

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    aput-object v2, v0, v1

    new-instance v0, Ljava/net/InetSocketAddress;

    iget-object v1, p0, La/a/a/a/a/a/ao;->b:Ljava/lang/String;

    iget v2, p0, La/a/a/a/a/a/ao;->f:I

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    iget-object v1, p0, La/a/a/a/a/a/ao;->a:Ljavax/net/SocketFactory;

    invoke-virtual {v1}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v1

    iput-object v1, p0, La/a/a/a/a/a/ao;->c:Ljava/net/Socket;

    iget-object v1, p0, La/a/a/a/a/a/ao;->c:Ljava/net/Socket;

    iget v2, p0, La/a/a/a/a/a/ao;->g:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v0, v2}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-direct {p0}, La/a/a/a/a/a/ao;->e()V

    iget-object v1, p0, La/a/a/a/a/a/ao;->e:La/a/a/a/a/b/ab;

    sget-object v1, La/a/a/a/a/a/ao;->d:Ljava/lang/String;

    new-instance v1, La/a/a/a/a/ap;

    const/16 v2, 0x7d67

    invoke-direct {v1, v2, v0}, La/a/a/a/a/ap;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method

.method public final b()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/ao;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, La/a/a/a/a/a/ao;->g:I

    return-void
.end method

.method public final c()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/ao;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 0

    invoke-direct {p0}, La/a/a/a/a/a/ao;->e()V

    return-void
.end method
