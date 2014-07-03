.class public La/a/a/a/a/a/an;
.super La/a/a/a/a/a/ao;


# static fields
.field static final a:Ljava/lang/String;


# instance fields
.field b:La/a/a/a/a/b/ab;

.field private f:[Ljava/lang/String;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, La/a/a/a/a/a/an;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, La/a/a/a/a/a/an;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, La/a/a/a/a/a/ao;-><init>(Ljavax/net/SocketFactory;Ljava/lang/String;I)V

    sget-object v0, La/a/a/a/a/a/an;->a:Ljava/lang/String;

    new-instance v0, La/a/a/a/a/b/aa;

    invoke-direct {v0}, La/a/a/a/a/b/aa;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/an;->b:La/a/a/a/a/b/ab;

    iget-object v0, p0, La/a/a/a/a/a/an;->b:La/a/a/a/a/b/ab;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-super {p0}, La/a/a/a/a/a/ao;->a()V

    iget-object v0, p0, La/a/a/a/a/a/an;->f:[Ljava/lang/String;

    invoke-virtual {p0, v0}, La/a/a/a/a/a/an;->a([Ljava/lang/String;)V

    iget-object v0, p0, La/a/a/a/a/a/an;->c:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/an;->c:Ljava/net/Socket;

    iget v2, p0, La/a/a/a/a/a/an;->g:I

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/an;->c:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    iget-object v0, p0, La/a/a/a/a/a/an;->c:Ljava/net/Socket;

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, La/a/a/a/a/a/an;->g:I

    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, La/a/a/a/a/a/an;->f:[Ljava/lang/String;

    iget-object v0, p0, La/a/a/a/a/a/an;->c:Ljava/net/Socket;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/an;->b:La/a/a/a/a/b/ab;

    iget-object v0, p0, La/a/a/a/a/a/an;->c:Ljava/net/Socket;

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    :cond_0
    return-void
.end method
