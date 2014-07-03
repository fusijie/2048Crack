.class final Lcom/nextpeer/android/dk;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nextpeer/android/dk$aa;
    }
.end annotation


# static fields
.field private static synthetic h:[I


# instance fields
.field private a:Lcom/nextpeer/android/dk$aa;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:I

.field private g:[B


# direct methods
.method public constructor <init>(Lcom/nextpeer/android/dk$aa;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nextpeer/android/dk;->a:Lcom/nextpeer/android/dk$aa;

    iput p2, p0, Lcom/nextpeer/android/dk;->f:I

    return-void
.end method

.method public static a(Ljava/net/DatagramPacket;)Lcom/nextpeer/android/dk;
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getLength()I

    move-result v3

    invoke-static {v0, v2, v3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/dd;->a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v2, v0, Ljava/util/Map;

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "[NPTablerUdpMessage] Failed to unpack incoming message buffer"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Ljava/util/Map;

    const-string v2, "type"

    invoke-static {v0, v2}, Lcom/nextpeer/android/de;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v0, "[NPTablerUdpMessage] Missing type from UDP Tabler message"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "seq"

    invoke-static {v0, v2}, Lcom/nextpeer/android/de;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v4

    if-nez v4, :cond_3

    const-string v0, "[NPTablerUdpMessage] Missing or invalid sequence in UDP Tabler message"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/nextpeer/android/dk;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-static {v3}, Lcom/nextpeer/android/dk$aa;->a(I)Lcom/nextpeer/android/dk$aa;

    move-result-object v3

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/nextpeer/android/dk;-><init>(Lcom/nextpeer/android/dk$aa;I)V

    const-string v3, "user"

    invoke-static {v0, v3}, Lcom/nextpeer/android/de;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/nextpeer/android/dk;->b:Ljava/lang/String;

    iget-object v3, v2, Lcom/nextpeer/android/dk;->b:Ljava/lang/String;

    if-nez v3, :cond_4

    const-string v0, "[NPTablerUdpMessage] Failed to extract sender id from message"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/nextpeer/android/dk;->g()[I

    move-result-object v3

    iget-object v4, v2, Lcom/nextpeer/android/dk;->a:Lcom/nextpeer/android/dk$aa;

    invoke-virtual {v4}, Lcom/nextpeer/android/dk$aa;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    const-string v0, "[NPTablerUdpMessage] Unknown type from socket"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :pswitch_0
    const-string v1, "room"

    invoke-static {v0, v1}, Lcom/nextpeer/android/de;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/nextpeer/android/dk;->e:Ljava/lang/String;

    iget-object v1, v2, Lcom/nextpeer/android/dk;->e:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string v0, "[NPTablerUdpMessage] Failed to extract room id from message"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    :cond_5
    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_6
    const-string v1, "content"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    instance-of v1, v0, [B

    if-nez v1, :cond_8

    :cond_7
    const-string v0, "[NPTablerUdpMessage] Failed to extract content from message"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    check-cast v0, [B

    iput-object v0, v2, Lcom/nextpeer/android/dk;->g:[B

    goto :goto_1

    :pswitch_1
    const-string v1, "internalHost"

    invoke-static {v0, v1}, Lcom/nextpeer/android/de;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/nextpeer/android/dk;->c:Ljava/lang/String;

    const-string v1, "internalPort"

    invoke-static {v0, v1}, Lcom/nextpeer/android/de;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/nextpeer/android/dk;->d:I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static synthetic g()[I
    .locals 3

    sget-object v0, Lcom/nextpeer/android/dk;->h:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/dk$aa;->values()[Lcom/nextpeer/android/dk$aa;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nextpeer/android/dk$aa;->b:Lcom/nextpeer/android/dk$aa;

    invoke-virtual {v1}, Lcom/nextpeer/android/dk$aa;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nextpeer/android/dk$aa;->a:Lcom/nextpeer/android/dk$aa;

    invoke-virtual {v1}, Lcom/nextpeer/android/dk$aa;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/nextpeer/android/dk;->h:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/nextpeer/android/dk$aa;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dk;->a:Lcom/nextpeer/android/dk$aa;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/nextpeer/android/dk;->d:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dk;->c:Ljava/lang/String;

    return-void
.end method

.method public final a([B)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dk;->g:[B

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dk;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dk;->e:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dk;->b:Ljava/lang/String;

    return-void
.end method

.method public final c()[B
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dk;->g:[B

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nextpeer/android/dk;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/nextpeer/android/dk;->f:I

    return v0
.end method

.method public final f()Ljava/net/DatagramPacket;
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "type"

    iget-object v2, p0, Lcom/nextpeer/android/dk;->a:Lcom/nextpeer/android/dk$aa;

    invoke-virtual {v2}, Lcom/nextpeer/android/dk$aa;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "seq"

    iget v2, p0, Lcom/nextpeer/android/dk;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "user"

    iget-object v2, p0, Lcom/nextpeer/android/dk;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/nextpeer/android/dk;->g()[I

    move-result-object v1

    iget-object v2, p0, Lcom/nextpeer/android/dk;->a:Lcom/nextpeer/android/dk$aa;

    invoke-virtual {v2}, Lcom/nextpeer/android/dk$aa;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/nextpeer/android/dd;->a(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/de;->b(Ljava/util/List;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Ljava/net/DatagramPacket;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Ljava/net/DatagramPacket;-><init>([BII)V

    return-object v1

    :pswitch_0
    const-string v1, "room"

    iget-object v2, p0, Lcom/nextpeer/android/dk;->e:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "content"

    iget-object v2, p0, Lcom/nextpeer/android/dk;->g:[B

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/nextpeer/android/dk;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "internalHost"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "internalPort"

    iget v2, p0, Lcom/nextpeer/android/dk;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NPTablerUdpMessage [mType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nextpeer/android/dk;->a:Lcom/nextpeer/android/dk$aa;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSenderUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/dk;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInternalHost="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/dk;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInternalPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nextpeer/android/dk;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRoomId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/dk;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSequence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nextpeer/android/dk;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDataContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nextpeer/android/dk;->g:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
