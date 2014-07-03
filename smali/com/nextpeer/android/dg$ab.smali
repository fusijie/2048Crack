.class final Lcom/nextpeer/android/dg$ab;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nextpeer/android/dg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ab"
.end annotation


# static fields
.field private static synthetic b:[I


# instance fields
.field final synthetic a:Lcom/nextpeer/android/dg;


# direct methods
.method private constructor <init>(Lcom/nextpeer/android/dg;)V
    .locals 0

    iput-object p1, p0, Lcom/nextpeer/android/dg$ab;->a:Lcom/nextpeer/android/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nextpeer/android/dg;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nextpeer/android/dg$ab;-><init>(Lcom/nextpeer/android/dg;)V

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/nextpeer/android/dg$ab;->b:[I

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
    sput-object v0, Lcom/nextpeer/android/dg$ab;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 9

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/net/DatagramPacket;

    invoke-static {v0}, Lcom/nextpeer/android/dk;->a(Ljava/net/DatagramPacket;)Lcom/nextpeer/android/dk;

    move-result-object v4

    invoke-virtual {v0}, Ljava/net/DatagramPacket;->getSocketAddress()Ljava/net/SocketAddress;

    move-result-object v1

    if-nez v4, :cond_0

    const-string v0, "[NPTablerUdpConnection] Failed to create message object from incoming UDP packet"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    move v0, v2

    :goto_0
    if-nez v0, :cond_9

    :goto_1
    :pswitch_0
    return v3

    :cond_0
    if-nez v1, :cond_1

    const-string v0, "[NPTablerUdpConnection] Message came from nowhere"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v4}, Lcom/nextpeer/android/dk;->d()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Package came from  ("

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") without player id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/nextpeer/android/dk;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v0, p0, Lcom/nextpeer/android/dg$ab;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->h(Lcom/nextpeer/android/dg;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nextpeer/android/dg$ab;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->h(Lcom/nextpeer/android/dg;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lt v0, v7, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/nextpeer/android/dg$ab;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->e(Lcom/nextpeer/android/dg;)Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/nextpeer/android/dg$ab;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->f(Lcom/nextpeer/android/dg;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Package came from player "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " whose IP ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") we dont have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/nextpeer/android/dg$ab;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->f(Lcom/nextpeer/android/dg;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nextpeer/android/da;

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Package came from player "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " whose IP ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") we dont have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :cond_6
    instance-of v7, v1, Ljava/net/InetSocketAddress;

    if-eqz v7, :cond_7

    check-cast v1, Ljava/net/InetSocketAddress;

    new-instance v7, Lcom/nextpeer/android/da$aa;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-direct {v7, v8, v1}, Lcom/nextpeer/android/da$aa;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v7}, Lcom/nextpeer/android/da;->a(Lcom/nextpeer/android/da$aa;)Z

    move-result v1

    if-nez v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "Package came from player "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " whose IP dont match what we have :("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/nextpeer/android/bk;->d(Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :cond_7
    const-string v0, "Fatal Error: Socket Address in DatagramPacket cannot cast to InetSocketAddress"

    invoke-static {v0}, Lcom/nextpeer/android/bk;->b(Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/nextpeer/android/dg$ab;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->h(Lcom/nextpeer/android/dg;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/nextpeer/android/dg$ab;->a()[I

    move-result-object v0

    invoke-virtual {v4}, Lcom/nextpeer/android/dk;->a()Lcom/nextpeer/android/dk$aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nextpeer/android/dk$aa;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/nextpeer/android/dg$ab;->a:Lcom/nextpeer/android/dg;

    invoke-static {v0}, Lcom/nextpeer/android/dg;->d(Lcom/nextpeer/android/dg;)Lcom/nextpeer/android/dj;

    move-result-object v0

    invoke-virtual {v4}, Lcom/nextpeer/android/dk;->c()[B

    move-result-object v1

    invoke-virtual {v4}, Lcom/nextpeer/android/dk;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/nextpeer/android/dk;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v2, v4}, Lcom/nextpeer/android/dj;->a([BLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
