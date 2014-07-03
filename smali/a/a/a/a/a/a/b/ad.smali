.class public final La/a/a/a/a/a/b/ad;
.super La/a/a/a/a/a/b/au;


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Z

.field private g:La/a/a/a/a/ak;

.field private h:Ljava/lang/String;

.field private i:[C

.field private j:I

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Con"

    sput-object v0, La/a/a/a/a/a/b/ad;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZILjava/lang/String;[CLa/a/a/a/a/ak;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, La/a/a/a/a/a/b/au;-><init>(B)V

    iput-object p1, p0, La/a/a/a/a/a/b/ad;->e:Ljava/lang/String;

    iput-boolean p2, p0, La/a/a/a/a/a/b/ad;->f:Z

    iput p3, p0, La/a/a/a/a/a/b/ad;->j:I

    iput-object p4, p0, La/a/a/a/a/a/b/ad;->h:Ljava/lang/String;

    iput-object p5, p0, La/a/a/a/a/a/b/ad;->i:[C

    iput-object p6, p0, La/a/a/a/a/a/b/ad;->g:La/a/a/a/a/ak;

    iput-object p7, p0, La/a/a/a/a/a/b/ad;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, La/a/a/a/a/a/b/au;-><init>(B)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, La/a/a/a/a/a/b/ad;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, La/a/a/a/a/a/b/ad;->j:I

    invoke-static {v1}, La/a/a/a/a/a/b/ad;->b(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, La/a/a/a/a/a/b/ad;->e:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    sget-object v1, La/a/a/a/a/a/b/ad;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected final k_()B
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final l_()[B
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v2, p0, La/a/a/a/a/a/b/ad;->e:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a/a/a/b/ad;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/a/a/a/b/ad;->g:La/a/a/a/a/ak;

    if-eqz v2, :cond_0

    iget-object v2, p0, La/a/a/a/a/a/b/ad;->k:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a/a/a/b/ad;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/a/a/a/b/ad;->g:La/a/a/a/a/ak;

    invoke-virtual {v2}, La/a/a/a/a/ak;->a()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, La/a/a/a/a/a/b/ad;->g:La/a/a/a/a/ak;

    invoke-virtual {v2}, La/a/a/a/a/ak;->a()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    :cond_0
    iget-object v2, p0, La/a/a/a/a/a/b/ad;->h:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, La/a/a/a/a/a/b/ad;->h:Ljava/lang/String;

    invoke-static {v1, v2}, La/a/a/a/a/a/b/ad;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    iget-object v2, p0, La/a/a/a/a/a/b/ad;->i:[C

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, La/a/a/a/a/a/b/ad;->i:[C

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1, v2}, La/a/a/a/a/a/b/ad;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    :cond_1
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

.method protected final m_()[B
    .locals 4

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const-string v0, "MQIsdp"

    invoke-static {v2, v0}, La/a/a/a/a/a/b/ad;->a(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v0, 0x0

    iget-boolean v3, p0, La/a/a/a/a/a/b/ad;->f:Z

    if-eqz v3, :cond_0

    const/4 v0, 0x2

    :cond_0
    iget-object v3, p0, La/a/a/a/a/a/b/ad;->g:La/a/a/a/a/ak;

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iget-object v3, p0, La/a/a/a/a/a/b/ad;->g:La/a/a/a/a/ak;

    invoke-virtual {v3}, La/a/a/a/a/ak;->d()I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    or-int/2addr v0, v3

    int-to-byte v0, v0

    iget-object v3, p0, La/a/a/a/a/a/b/ad;->g:La/a/a/a/a/ak;

    invoke-virtual {v3}, La/a/a/a/a/ak;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    or-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    :cond_1
    iget-object v3, p0, La/a/a/a/a/a/b/ad;->h:Ljava/lang/String;

    if-eqz v3, :cond_2

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    iget-object v3, p0, La/a/a/a/a/a/b/ad;->i:[C

    if-eqz v3, :cond_2

    or-int/lit8 v0, v0, 0x40

    int-to-byte v0, v0

    :cond_2
    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->write(I)V

    iget v0, p0, La/a/a/a/a/a/b/ad;->j:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
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

    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, La/a/a/a/a/a/b/au;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " clientId "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, La/a/a/a/a/a/b/ad;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " keepAliveInterval "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, La/a/a/a/a/a/b/ad;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
