.class public final La/a/a/a/a/a/b/am;
.super La/a/a/a/a/a/b/ab;


# direct methods
.method public constructor <init>(La/a/a/a/a/a/b/ao;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, La/a/a/a/a/a/b/ab;-><init>(B)V

    invoke-virtual {p1}, La/a/a/a/a/a/b/ao;->i()I

    move-result v0

    iput v0, p0, La/a/a/a/a/a/b/am;->c:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x5

    invoke-direct {p0, v0}, La/a/a/a/a/a/b/ab;-><init>(B)V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, La/a/a/a/a/a/b/am;->c:I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    return-void
.end method


# virtual methods
.method protected final m_()[B
    .locals 1

    invoke-virtual {p0}, La/a/a/a/a/a/b/am;->k()[B

    move-result-object v0

    return-object v0
.end method
