.class public final Lcom/a/a/b/a/ak;
.super Lcom/a/a/bj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/bj",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/a/a/bk;

.field private static synthetic c:[I


# instance fields
.field private final b:Lcom/a/a/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/a/a/b/a/al;

    invoke-direct {v0}, Lcom/a/a/b/a/al;-><init>()V

    sput-object v0, Lcom/a/a/b/a/ak;->a:Lcom/a/a/bk;

    return-void
.end method

.method private constructor <init>(Lcom/a/a/ak;)V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/bj;-><init>()V

    iput-object p1, p0, Lcom/a/a/b/a/ak;->b:Lcom/a/a/ak;

    return-void
.end method

.method synthetic constructor <init>(Lcom/a/a/ak;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/a/a/b/a/ak;-><init>(Lcom/a/a/ak;)V

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/a/a/b/a/ak;->c:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/a/a/d/ac;->values()[Lcom/a/a/d/ac;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/a/a/d/ac;->a:Lcom/a/a/d/ac;

    invoke-virtual {v1}, Lcom/a/a/d/ac;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lcom/a/a/d/ac;->c:Lcom/a/a/d/ac;

    invoke-virtual {v1}, Lcom/a/a/d/ac;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lcom/a/a/d/ac;->h:Lcom/a/a/d/ac;

    invoke-virtual {v1}, Lcom/a/a/d/ac;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lcom/a/a/d/ac;->b:Lcom/a/a/d/ac;

    invoke-virtual {v1}, Lcom/a/a/d/ac;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lcom/a/a/d/ac;->j:Lcom/a/a/d/ac;

    invoke-virtual {v1}, Lcom/a/a/d/ac;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lcom/a/a/d/ac;->d:Lcom/a/a/d/ac;

    invoke-virtual {v1}, Lcom/a/a/d/ac;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lcom/a/a/d/ac;->e:Lcom/a/a/d/ac;

    invoke-virtual {v1}, Lcom/a/a/d/ac;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lcom/a/a/d/ac;->i:Lcom/a/a/d/ac;

    invoke-virtual {v1}, Lcom/a/a/d/ac;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lcom/a/a/d/ac;->g:Lcom/a/a/d/ac;

    invoke-virtual {v1}, Lcom/a/a/d/ac;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lcom/a/a/d/ac;->f:Lcom/a/a/d/ac;

    invoke-virtual {v1}, Lcom/a/a/d/ac;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lcom/a/a/b/a/ak;->c:[I

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


# virtual methods
.method public final a(Lcom/a/a/d/aa;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/a/a/d/aa;->f()Lcom/a/a/d/ac;

    move-result-object v0

    invoke-static {}, Lcom/a/a/b/a/ak;->a()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/a/a/d/ac;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/a/a/d/aa;->a()V

    :goto_0
    invoke-virtual {p1}, Lcom/a/a/d/aa;->e()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/aa;->b()V

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/a/a/b/a/ak;->a(Lcom/a/a/d/aa;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/a/a/b/at;

    invoke-direct {v0}, Lcom/a/a/b/at;-><init>()V

    invoke-virtual {p1}, Lcom/a/a/d/aa;->c()V

    :goto_2
    invoke-virtual {p1}, Lcom/a/a/d/aa;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/a/a/d/aa;->d()V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/a/a/d/aa;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/a/a/b/a/ak;->a(Lcom/a/a/d/aa;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :pswitch_3
    invoke-virtual {p1}, Lcom/a/a/d/aa;->h()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Lcom/a/a/d/aa;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1}, Lcom/a/a/d/aa;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :pswitch_6
    invoke-virtual {p1}, Lcom/a/a/d/aa;->j()V

    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public final a(Lcom/a/a/d/ad;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/ad;->f()Lcom/a/a/d/ad;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/a/ak;->b:Lcom/a/a/ak;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/ak;->a(Ljava/lang/Class;)Lcom/a/a/bj;

    move-result-object v0

    instance-of v1, v0, Lcom/a/a/b/a/ak;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/a/a/d/ad;->d()Lcom/a/a/d/ad;

    invoke-virtual {p1}, Lcom/a/a/d/ad;->e()Lcom/a/a/d/ad;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/a/a/bj;->a(Lcom/a/a/d/ad;Ljava/lang/Object;)V

    goto :goto_0
.end method
