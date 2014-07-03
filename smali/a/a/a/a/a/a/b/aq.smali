.class public final La/a/a/a/a/a/b/aq;
.super La/a/a/a/a/a/b/ab;


# instance fields
.field private a:[I


# direct methods
.method public constructor <init>([B)V
    .locals 4

    const/16 v0, 0x9

    invoke-direct {p0, v0}, La/a/a/a/a/a/b/ab;-><init>(B)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, La/a/a/a/a/a/b/aq;->c:I

    const/4 v0, 0x0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x2

    new-array v1, v1, [I

    iput-object v1, p0, La/a/a/a/a/a/b/aq;->a:[I

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v1

    :goto_0
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    return-void

    :cond_0
    iget-object v3, p0, La/a/a/a/a/a/b/aq;->a:[I

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v2}, Ljava/io/DataInputStream;->read()I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method protected final m_()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, La/a/a/a/a/a/b/ab;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " granted Qos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, La/a/a/a/a/a/b/aq;->a:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, La/a/a/a/a/a/b/aq;->a:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
