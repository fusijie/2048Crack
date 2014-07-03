.class public final La/a/a/a/a/ai;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:La/a/a/a/a/ak;

.field private d:Ljava/lang/String;

.field private e:[C

.field private f:Ljavax/net/SocketFactory;

.field private g:Ljava/util/Properties;

.field private h:Z

.field private i:I

.field private j:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput v0, p0, La/a/a/a/a/ai;->a:I

    iput-object v1, p0, La/a/a/a/a/ai;->b:Ljava/lang/String;

    iput-object v1, p0, La/a/a/a/a/ai;->c:La/a/a/a/a/ak;

    iput-object v1, p0, La/a/a/a/a/ai;->g:Ljava/util/Properties;

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/ai;->h:Z

    const/16 v0, 0x1e

    iput v0, p0, La/a/a/a/a/ai;->i:I

    iput-object v1, p0, La/a/a/a/a/ai;->j:[Ljava/lang/String;

    return-void
.end method

.method protected static b(Ljava/lang/String;)I
    .locals 3

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tcp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ssl"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput p1, p0, La/a/a/a/a/ai;->a:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, La/a/a/a/a/ai;->d:Ljava/lang/String;

    return-void
.end method

.method public final a()[C
    .locals 1

    iget-object v0, p0, La/a/a/a/a/ai;->e:[C

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/ai;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, La/a/a/a/a/ai;->a:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, La/a/a/a/a/ai;->i:I

    return v0
.end method

.method public final e()Ljavax/net/SocketFactory;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/ai;->f:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/ai;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()La/a/a/a/a/ak;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/ai;->c:La/a/a/a/a/ak;

    return-object v0
.end method

.method public final h()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/ai;->g:Ljava/util/Properties;

    return-object v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/ai;->h:Z

    return v0
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/a/a/a/a/ai;->h:Z

    return-void
.end method

.method public final k()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/ai;->j:[Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const-string v0, "CleanSession"

    new-instance v2, Ljava/lang/Boolean;

    iget-boolean v3, p0, La/a/a/a/a/ai;->h:Z

    invoke-direct {v2, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ConTimeout"

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, La/a/a/a/a/ai;->i:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "KeepAliveInterval"

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, La/a/a/a/a/ai;->a:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "UserName"

    iget-object v0, p0, La/a/a/a/a/ai;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "WillDestination"

    iget-object v0, p0, La/a/a/a/a/ai;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "null"

    :goto_1
    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, La/a/a/a/a/ai;->f:Ljavax/net/SocketFactory;

    if-nez v0, :cond_2

    const-string v0, "SocketFactory"

    const-string v2, "null"

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v0, p0, La/a/a/a/a/ai;->g:Ljava/util/Properties;

    if-nez v0, :cond_3

    const-string v0, "SSLProperties"

    const-string v2, "null"

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    const-string v0, "Connection options"

    invoke-static {v1, v0}, La/a/a/a/a/d/aa;->a(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, La/a/a/a/a/ai;->d:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, La/a/a/a/a/ai;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v0, "SocketFactory"

    iget-object v2, p0, La/a/a/a/a/ai;->f:Ljavax/net/SocketFactory;

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    const-string v0, "SSLProperties"

    iget-object v2, p0, La/a/a/a/a/ai;->g:Ljava/util/Properties;

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3
.end method
