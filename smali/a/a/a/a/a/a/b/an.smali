.class public final La/a/a/a/a/a/b/an;
.super La/a/a/a/a/a/b/ah;


# direct methods
.method public constructor <init>(La/a/a/a/a/a/b/am;)V
    .locals 1

    const/4 v0, 0x6

    invoke-direct {p0, v0}, La/a/a/a/a/a/b/ah;-><init>(B)V

    invoke-virtual {p1}, La/a/a/a/a/a/b/am;->i()I

    move-result v0

    invoke-virtual {p0, v0}, La/a/a/a/a/a/b/an;->a(I)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x6

    invoke-direct {p0, v0}, La/a/a/a/a/a/b/ah;-><init>(B)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, La/a/a/a/a/a/b/an;->c:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    return-void
.end method


# virtual methods
.method protected final k_()B
    .locals 1

    iget-boolean v0, p0, La/a/a/a/a/a/b/an;->d:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final m_()[B
    .locals 1

    invoke-virtual {p0}, La/a/a/a/a/a/b/an;->k()[B

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, La/a/a/a/a/a/b/ah;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " msgId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/a/a/a/a/a/b/an;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
