.class final Lcom/nextpeer/android/cn;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/nextpeer/android/cq;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/nextpeer/android/ce;


# direct methods
.method public constructor <init>(Lcom/nextpeer/android/ce;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nextpeer/android/cn;->b:Ljava/util/List;

    iput-object p1, p0, Lcom/nextpeer/android/cn;->c:Lcom/nextpeer/android/ce;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcom/nextpeer/android/cn;->a:Lcom/nextpeer/android/cq;

    if-nez v0, :cond_0

    const/16 v0, 0x34

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/nextpeer/android/cn;->a:Lcom/nextpeer/android/cq;

    invoke-virtual {v0}, Lcom/nextpeer/android/cq;->e()I

    move-result v0

    iget-object v1, p0, Lcom/nextpeer/android/cn;->b:Ljava/util/List;

    invoke-static {v1}, Lcom/nextpeer/android/de;->a(Ljava/util/List;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .locals 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/nextpeer/android/cn;->a:Lcom/nextpeer/android/cq;

    if-nez v0, :cond_1

    new-instance v0, Lcom/nextpeer/android/cq;

    invoke-direct {v0, p1}, Lcom/nextpeer/android/cq;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/nextpeer/android/cn;->a:Lcom/nextpeer/android/cq;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/nextpeer/android/cn;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/nextpeer/android/cn;->a()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nextpeer/android/cn;->b:Ljava/util/List;

    invoke-static {v0}, Lcom/nextpeer/android/de;->a(Ljava/util/List;)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v0, p0, Lcom/nextpeer/android/cn;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/nextpeer/android/cn;->a:Lcom/nextpeer/android/cq;

    invoke-static {v0, v1}, Lcom/nextpeer/android/db;->a(Lcom/nextpeer/android/cq;Ljava/nio/ByteBuffer;)Lcom/nextpeer/android/cm;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/cn;->c:Lcom/nextpeer/android/ce;

    invoke-interface {v1, v0}, Lcom/nextpeer/android/ce;->a(Lcom/nextpeer/android/cm;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nextpeer/android/cn;->a:Lcom/nextpeer/android/cq;

    iget-object v0, p0, Lcom/nextpeer/android/cn;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NPTablerMessageAccumulator [_header="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/cn;->a:Lcom/nextpeer/android/cq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _buffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/cn;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", _handler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/cn;->c:Lcom/nextpeer/android/ce;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
