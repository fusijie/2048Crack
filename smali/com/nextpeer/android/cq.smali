.class final Lcom/nextpeer/android/cq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/nextpeer/android/cq;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nextpeer/android/cq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nextpeer/android/cq;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x34

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nextpeer/android/cq;-><init>(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nextpeer/android/cq;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private g()I
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/cq;->b:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private h()I
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/cq;->b:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private i()[B
    .locals 3

    const/16 v0, 0x20

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/nextpeer/android/cq;->b:Ljava/nio/ByteBuffer;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/nextpeer/android/cq;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/cq;->b:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const v2, 0x445b8

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/cq;->b:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a(Lcom/nextpeer/android/cy;)V
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/cq;->b:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/nextpeer/android/cy;->a()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final a([B)V
    .locals 2

    sget-boolean v0, Lcom/nextpeer/android/cq;->a:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "hmac is null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/nextpeer/android/cq;->a:Z

    if-nez v0, :cond_1

    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "wrong hmac size"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/cq;->b:Ljava/nio/ByteBuffer;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/nextpeer/android/cq;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final b()Lcom/nextpeer/android/cy;
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/cq;->b:Ljava/nio/ByteBuffer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/nextpeer/android/cy;->a(I)Lcom/nextpeer/android/cy;

    move-result-object v0

    return-object v0
.end method

.method public final b(I)V
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/cq;->b:Ljava/nio/ByteBuffer;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/cq;->b:Ljava/nio/ByteBuffer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    const/4 v1, 0x0

    check-cast p1, Lcom/nextpeer/android/cq;

    invoke-direct {p0}, Lcom/nextpeer/android/cq;->g()I

    move-result v0

    invoke-direct {p1}, Lcom/nextpeer/android/cq;->g()I

    move-result v2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/nextpeer/android/cq;->b()Lcom/nextpeer/android/cy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nextpeer/android/cy;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Lcom/nextpeer/android/cq;->b()Lcom/nextpeer/android/cy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nextpeer/android/cy;->ordinal()I

    move-result v2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/nextpeer/android/cq;->c()I

    move-result v0

    invoke-virtual {p1}, Lcom/nextpeer/android/cq;->c()I

    move-result v2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/nextpeer/android/cq;->h()I

    move-result v0

    invoke-direct {p1}, Lcom/nextpeer/android/cq;->h()I

    move-result v2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_4

    move v1, v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/nextpeer/android/cq;->e()I

    move-result v0

    invoke-virtual {p1}, Lcom/nextpeer/android/cq;->e()I

    move-result v2

    sub-int/2addr v0, v2

    if-eqz v0, :cond_5

    move v1, v0

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_1
    invoke-direct {p0}, Lcom/nextpeer/android/cq;->i()[B

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_0

    invoke-direct {p0}, Lcom/nextpeer/android/cq;->i()[B

    move-result-object v2

    aget-byte v2, v2, v0

    invoke-direct {p1}, Lcom/nextpeer/android/cq;->i()[B

    move-result-object v3

    aget-byte v3, v3, v0

    if-eq v2, v3, :cond_6

    invoke-direct {p0}, Lcom/nextpeer/android/cq;->i()[B

    move-result-object v1

    aget-byte v1, v1, v0

    invoke-direct {p1}, Lcom/nextpeer/android/cq;->i()[B

    move-result-object v2

    aget-byte v2, v2, v0

    sub-int/2addr v1, v2

    mul-int/2addr v1, v0

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lcom/nextpeer/android/cq;->b:Ljava/nio/ByteBuffer;

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final e()I
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/cq;->b:Ljava/nio/ByteBuffer;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public final f()Ljava/nio/ByteBuffer;
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/cq;->b:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/nextpeer/android/cq;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
