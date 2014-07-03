.class public final La/a/a/a/a/a/b/ao;
.super La/a/a/a/a/a/b/ah;


# instance fields
.field private a:La/a/a/a/a/ak;

.field private e:Ljava/lang/String;

.field private f:[B


# direct methods
.method public constructor <init>(B[B)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, La/a/a/a/a/a/b/ah;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/a/b/ao;->f:[B

    new-instance v0, La/a/a/a/a/a/b/ap;

    invoke-direct {v0}, La/a/a/a/a/a/b/ap;-><init>()V

    iput-object v0, p0, La/a/a/a/a/a/b/ao;->a:La/a/a/a/a/ak;

    iget-object v0, p0, La/a/a/a/a/a/b/ao;->a:La/a/a/a/a/ak;

    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x3

    invoke-virtual {v0, v1}, La/a/a/a/a/ak;->a(I)V

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/b/ao;->a:La/a/a/a/a/ak;

    invoke-virtual {v0}, La/a/a/a/a/ak;->c()V

    :cond_0
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    iget-object v0, p0, La/a/a/a/a/a/b/ao;->a:La/a/a/a/a/ak;

    check-cast v0, La/a/a/a/a/a/b/ap;

    invoke-virtual {v0, v2}, La/a/a/a/a/a/b/ap;->a(Z)V

    :cond_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, La/a/a/a/a/a/b/aa;

    invoke-direct {v1, v0}, La/a/a/a/a/a/b/aa;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, La/a/a/a/a/a/b/ao;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, La/a/a/a/a/a/b/ao;->e:Ljava/lang/String;

    iget-object v2, p0, La/a/a/a/a/a/b/ao;->a:La/a/a/a/a/ak;

    invoke-virtual {v2}, La/a/a/a/a/ak;->d()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, p0, La/a/a/a/a/a/b/ao;->c:I

    :cond_2
    array-length v2, p2

    invoke-virtual {v1}, La/a/a/a/a/a/b/aa;->a()I

    move-result v1

    sub-int v1, v2, v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    iget-object v0, p0, La/a/a/a/a/a/b/ao;->a:La/a/a/a/a/ak;

    invoke-virtual {v0, v1}, La/a/a/a/a/ak;->a([B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;La/a/a/a/a/ak;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, La/a/a/a/a/a/b/ah;-><init>(B)V

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/a/a/a/b/ao;->f:[B

    iput-object p1, p0, La/a/a/a/a/a/b/ao;->e:Ljava/lang/String;

    iput-object p2, p0, La/a/a/a/a/a/b/ao;->a:La/a/a/a/a/ak;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    invoke-super {p0, p1}, La/a/a/a/a/a/b/ah;->a(I)V

    iget-object v0, p0, La/a/a/a/a/a/b/ao;->a:La/a/a/a/a/ak;

    instance-of v0, v0, La/a/a/a/a/a/b/ap;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/b/ao;->a:La/a/a/a/a/ak;

    check-cast v0, La/a/a/a/a/a/b/ap;

    invoke-virtual {v0, p1}, La/a/a/a/a/a/b/ap;->b(I)V

    :cond_0
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/b/ao;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final h()La/a/a/a/a/ak;
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/b/ao;->a:La/a/a/a/a/ak;

    return-object v0
.end method

.method public final j_()I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, La/a/a/a/a/a/b/ao;->l_()[B

    move-result-object v1

    array-length v0, v1
    :try_end_0
    .catch La/a/a/a/a/ap; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected final k_()B
    .locals 2

    iget-object v0, p0, La/a/a/a/a/a/b/ao;->a:La/a/a/a/a/ak;

    invoke-virtual {v0}, La/a/a/a/a/ak;->d()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iget-object v1, p0, La/a/a/a/a/a/b/ao;->a:La/a/a/a/a/ak;

    invoke-virtual {v1}, La/a/a/a/a/ak;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_0
    iget-object v1, p0, La/a/a/a/a/a/b/ao;->a:La/a/a/a/a/ak;

    invoke-virtual {v1}, La/a/a/a/a/ak;->e()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, La/a/a/a/a/a/b/ao;->d:Z

    if-eqz v1, :cond_2

    :cond_1
    or-int/lit8 v0, v0, 0x8

    int-to-byte v0, v0

    :cond_2
    return v0
.end method

.method public final l_()[B
    .locals 1

    iget-object v0, p0, La/a/a/a/a/a/b/ao;->f:[B

    if-nez v0, :cond_0

    iget-object v0, p0, La/a/a/a/a/a/b/ao;->a:La/a/a/a/a/ak;

    invoke-virtual {v0}, La/a/a/a/a/ak;->a()[B

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/a/b/ao;->f:[B

    :cond_0
    iget-object v0, p0, La/a/a/a/a/a/b/ao;->f:[B

    return-object v0
.end method

.method protected final m_()[B
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, La/a/a/a/a/a/b/ao;->e:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a/a/a/b/ao;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/a/a/a/b/ao;->a:La/a/a/a/a/ak;

    invoke-virtual {v2}, La/a/a/a/a/ak;->d()I

    move-result v2

    if-lez v2, :cond_0

    iget v2, p0, La/a/a/a/a/a/b/ao;->c:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, La/a/a/a/a/ap;

    invoke-direct {v1, v0}, La/a/a/a/a/ap;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final n_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, La/a/a/a/a/a/b/ao;->a:La/a/a/a/a/ak;

    invoke-virtual {v1}, La/a/a/a/a/ak;->a()[B

    move-result-object v3

    array-length v1, v3

    const/16 v4, 0x14

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    const-string v5, "UTF-8"

    invoke-direct {v0, v3, v1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, La/a/a/a/a/a/b/ah;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " qos:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, La/a/a/a/a/a/b/ao;->a:La/a/a/a/a/ak;

    invoke-virtual {v5}, La/a/a/a/a/ak;->d()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, La/a/a/a/a/a/b/ao;->a:La/a/a/a/a/ak;

    invoke-virtual {v4}, La/a/a/a/a/ak;->d()I

    move-result v4

    if-lez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " msgId:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, La/a/a/a/a/a/b/ao;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " retained:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, La/a/a/a/a/a/b/ao;->a:La/a/a/a/a/ak;

    invoke-virtual {v5}, La/a/a/a/a/ak;->b()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " dup:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, La/a/a/a/a/a/b/ao;->d:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " topic:\""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, La/a/a/a/a/a/b/ao;->e:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, " payload:[hex:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " utf8:\""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " length:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    aget-byte v0, v3, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v0, "?"

    goto/16 :goto_1
.end method
