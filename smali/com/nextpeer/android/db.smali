.class final Lcom/nextpeer/android/db;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z

.field private static synthetic b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nextpeer/android/db;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nextpeer/android/db;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/nextpeer/android/cq;Ljava/nio/ByteBuffer;)Lcom/nextpeer/android/cm;
    .locals 8

    invoke-virtual {p0}, Lcom/nextpeer/android/cq;->b()Lcom/nextpeer/android/cy;

    move-result-object v0

    sget-boolean v1, Lcom/nextpeer/android/db;->a:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "message cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_0
    sget-boolean v1, Lcom/nextpeer/android/db;->a:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/nextpeer/android/cq;->e()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "must have the whole data in order to parse should have "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/nextpeer/android/cq;->e()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " but have only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nHex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/nextpeer/android/db;->a()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/nextpeer/android/cy;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-boolean v1, Lcom/nextpeer/android/db;->a:Z

    if-nez v1, :cond_f

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unsupported messsage type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :pswitch_0
    invoke-static {p1}, Lcom/nextpeer/android/db;->b(Ljava/nio/ByteBuffer;)Lcom/nextpeer/android/ct;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    new-instance v2, Lcom/nextpeer/android/cv;

    invoke-direct {v2}, Lcom/nextpeer/android/cv;-><init>()V

    invoke-static {p1}, Lcom/nextpeer/android/dd;->a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/cv;->a(Ljava/util/Map;)V

    const-string v1, "status"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v3, v1, Ljava/lang/Number;

    if-eqz v3, :cond_2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/nextpeer/android/cv;->a(I)V

    :cond_2
    const-string v1, "userId"

    invoke-static {v0, v1}, Lcom/nextpeer/android/de;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nextpeer/android/cv;->a(Ljava/lang/String;)V

    :cond_3
    move-object v0, v2

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/nextpeer/android/cu;

    invoke-direct {v0}, Lcom/nextpeer/android/cu;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/cu;->a(I)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/cu;->b(I)V

    invoke-static {p1}, Lcom/nextpeer/android/de;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/cu;->a(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v4, Lcom/nextpeer/android/co;

    invoke-direct {v4}, Lcom/nextpeer/android/co;-><init>()V

    invoke-static {p1}, Lcom/nextpeer/android/dd;->a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_b

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/util/Map;

    const-string v1, "userId"

    invoke-static {v0, v1}, Lcom/nextpeer/android/de;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-boolean v1, Lcom/nextpeer/android/db;->a:Z

    if-nez v1, :cond_4

    if-nez v5, :cond_4

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "connect must have a userId"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_4
    const-string v1, "clientType"

    invoke-static {v0, v1}, Lcom/nextpeer/android/de;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    sget-boolean v2, Lcom/nextpeer/android/db;->a:Z

    if-nez v2, :cond_5

    if-nez v1, :cond_5

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "connect must have a clientType"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_5
    const-string v2, "package"

    invoke-static {v0, v2}, Lcom/nextpeer/android/de;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-boolean v2, Lcom/nextpeer/android/db;->a:Z

    if-nez v2, :cond_6

    if-nez v6, :cond_6

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "connect must have a package"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_6
    const-string v2, "sdkVersion"

    invoke-static {v0, v2}, Lcom/nextpeer/android/de;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-boolean v2, Lcom/nextpeer/android/db;->a:Z

    if-nez v2, :cond_7

    if-nez v7, :cond_7

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "connect must have an sdkversion"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_7
    const-string v2, "clientCapabilities"

    invoke-static {v0, v2}, Lcom/nextpeer/android/de;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v2

    sget-boolean v3, Lcom/nextpeer/android/db;->a:Z

    if-nez v3, :cond_8

    if-nez v2, :cond_8

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "connect must have a capabilities"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_8
    const-string v3, "flags"

    invoke-static {v0, v3}, Lcom/nextpeer/android/de;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v3

    sget-boolean v0, Lcom/nextpeer/android/db;->a:Z

    if-nez v0, :cond_9

    if-nez v3, :cond_9

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "connect must have flags"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_9
    invoke-virtual {v4, v5}, Lcom/nextpeer/android/co;->c(Ljava/lang/String;)V

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/nextpeer/android/co;->a(I)V

    invoke-virtual {v4, v6}, Lcom/nextpeer/android/co;->a(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Lcom/nextpeer/android/co;->b(Ljava/lang/String;)V

    move-object v0, v2

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/nextpeer/android/co;->b(I)V

    move-object v0, v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/nextpeer/android/co;->c(I)V

    :cond_a
    move-object v0, v4

    goto/16 :goto_0

    :cond_b
    sget-boolean v0, Lcom/nextpeer/android/db;->a:Z

    if-nez v0, :cond_a

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "must have data map"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_4
    new-instance v1, Lcom/nextpeer/android/cp;

    invoke-direct {v1}, Lcom/nextpeer/android/cp;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/cp;->a(I)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    if-ge v0, v2, :cond_c

    invoke-static {p1}, Lcom/nextpeer/android/dd;->a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_c

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_c

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/cp;->a(Ljava/util/Map;)V

    :cond_c
    move-object v0, v1

    goto/16 :goto_0

    :pswitch_5
    new-instance v1, Lcom/nextpeer/android/cr;

    invoke-direct {v1}, Lcom/nextpeer/android/cr;-><init>()V

    invoke-static {p1}, Lcom/nextpeer/android/dd;->a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_d

    check-cast v0, Ljava/util/Map;

    const-string v2, "matchId"

    invoke-static {v0, v2}, Lcom/nextpeer/android/de;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_d

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/cr;->a(I)V

    :cond_d
    move-object v0, v1

    goto/16 :goto_0

    :pswitch_6
    new-instance v1, Lcom/nextpeer/android/cw;

    invoke-direct {v1}, Lcom/nextpeer/android/cw;-><init>()V

    invoke-static {p1}, Lcom/nextpeer/android/dd;->a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    instance-of v2, v0, Ljava/util/Map;

    if-eqz v2, :cond_e

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/cw;->a(Ljava/util/Map;)V

    invoke-virtual {v1}, Lcom/nextpeer/android/cw;->c()Ljava/util/Map;

    move-result-object v0

    const-string v2, "customBuffer"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    instance-of v2, v0, [B

    if-eqz v2, :cond_e

    check-cast v0, [B

    invoke-virtual {v1, v0}, Lcom/nextpeer/android/cw;->a([B)V

    :cond_e
    move-object v0, v1

    goto/16 :goto_0

    :pswitch_7
    invoke-static {p1}, Lcom/nextpeer/android/db;->a(Ljava/nio/ByteBuffer;)Lcom/nextpeer/android/cx;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Lcom/nextpeer/android/cz;

    invoke-direct {v0}, Lcom/nextpeer/android/cz;-><init>()V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/cz;->a(I)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nextpeer/android/cz;->a(B)V

    goto/16 :goto_0

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Ljava/nio/ByteBuffer;)Lcom/nextpeer/android/cx;
    .locals 7

    new-instance v2, Lcom/nextpeer/android/cx;

    invoke-direct {v2}, Lcom/nextpeer/android/cx;-><init>()V

    invoke-static {p0}, Lcom/nextpeer/android/dd;->a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/Map;

    const-string v1, "scores"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v2, v4}, Lcom/nextpeer/android/cx;->a(Ljava/util/Map;)V

    invoke-virtual {v2, v3}, Lcom/nextpeer/android/cx;->a(Ljava/util/List;)V

    :cond_1
    return-object v2

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    const-string v0, "id"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v6, v0, Ljava/lang/String;

    if-eqz v6, :cond_0

    check-cast v0, Ljava/lang/String;

    const-string v6, "score"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/nextpeer/android/db;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/nextpeer/android/cy;->values()[Lcom/nextpeer/android/cy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/nextpeer/android/cy;->a:Lcom/nextpeer/android/cy;

    invoke-virtual {v1}, Lcom/nextpeer/android/cy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lcom/nextpeer/android/cy;->b:Lcom/nextpeer/android/cy;

    invoke-virtual {v1}, Lcom/nextpeer/android/cy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lcom/nextpeer/android/cy;->i:Lcom/nextpeer/android/cy;

    invoke-virtual {v1}, Lcom/nextpeer/android/cy;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lcom/nextpeer/android/cy;->j:Lcom/nextpeer/android/cy;

    invoke-virtual {v1}, Lcom/nextpeer/android/cy;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lcom/nextpeer/android/cy;->e:Lcom/nextpeer/android/cy;

    invoke-virtual {v1}, Lcom/nextpeer/android/cy;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lcom/nextpeer/android/cy;->f:Lcom/nextpeer/android/cy;

    invoke-virtual {v1}, Lcom/nextpeer/android/cy;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lcom/nextpeer/android/cy;->d:Lcom/nextpeer/android/cy;

    invoke-virtual {v1}, Lcom/nextpeer/android/cy;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lcom/nextpeer/android/cy;->c:Lcom/nextpeer/android/cy;

    invoke-virtual {v1}, Lcom/nextpeer/android/cy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lcom/nextpeer/android/cy;->h:Lcom/nextpeer/android/cy;

    invoke-virtual {v1}, Lcom/nextpeer/android/cy;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lcom/nextpeer/android/cy;->g:Lcom/nextpeer/android/cy;

    invoke-virtual {v1}, Lcom/nextpeer/android/cy;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lcom/nextpeer/android/db;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method

.method private static b(Ljava/nio/ByteBuffer;)Lcom/nextpeer/android/ct;
    .locals 5

    new-instance v2, Lcom/nextpeer/android/ct;

    invoke-direct {v2}, Lcom/nextpeer/android/ct;-><init>()V

    invoke-static {p0}, Lcom/nextpeer/android/dd;->a(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_6

    check-cast v0, Ljava/util/Map;

    const-string v1, "roomId"

    invoke-static {v0, v1}, Lcom/nextpeer/android/de;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/nextpeer/android/ct;->a(I)V

    :cond_0
    const-string v1, "roomLimit"

    invoke-static {v0, v1}, Lcom/nextpeer/android/de;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/nextpeer/android/ct;->b(I)V

    :cond_1
    const-string v1, "roomType"

    invoke-static {v0, v1}, Lcom/nextpeer/android/de;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/nextpeer/android/ct;->c(I)V

    :cond_2
    const-string v1, "timeLimit"

    invoke-static {v0, v1}, Lcom/nextpeer/android/de;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/nextpeer/android/ct;->d(I)V

    :cond_3
    const-string v1, "roomName"

    invoke-static {v0, v1}, Lcom/nextpeer/android/de;->b(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v2, v1}, Lcom/nextpeer/android/ct;->a(Ljava/lang/String;)V

    :cond_4
    const-string v1, "extraData"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    instance-of v3, v1, Ljava/util/Map;

    if-eqz v3, :cond_5

    check-cast v1, Ljava/util/Map;

    invoke-virtual {v2, v1}, Lcom/nextpeer/android/ct;->a(Ljava/util/Map;)V

    :cond_5
    const-string v1, "users"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Ljava/util/ArrayList;

    if-eqz v1, :cond_6

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v2, v1}, Lcom/nextpeer/android/ct;->a(Ljava/util/List;)V

    :cond_6
    return-object v2

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v4, Lcom/nextpeer/android/dp;

    invoke-direct {v4, v0}, Lcom/nextpeer/android/dp;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
