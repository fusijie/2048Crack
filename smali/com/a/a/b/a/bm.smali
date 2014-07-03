.class final Lcom/a/a/b/a/bm;
.super Lcom/a/a/bj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/bj",
        "<",
        "Lcom/a/a/av;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic a:[I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/a/a/bj;-><init>()V

    return-void
.end method

.method private a(Lcom/a/a/d/ad;Lcom/a/a/av;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/a/a/av;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/a/a/d/ad;->f()Lcom/a/a/d/ad;

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/a/a/av;->i()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/a/a/av;->m()Lcom/a/a/bb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/bb;->o()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/a/a/bb;->a()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/d/ad;->a(Ljava/lang/Number;)Lcom/a/a/d/ad;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/a/a/bb;->n()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/a/a/bb;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/a/a/d/ad;->a(Z)Lcom/a/a/d/ad;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/a/a/bb;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/d/ad;->b(Ljava/lang/String;)Lcom/a/a/d/ad;

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/a/a/av;->g()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/a/a/d/ad;->b()Lcom/a/a/d/ad;

    invoke-virtual {p2}, Lcom/a/a/av;->l()Lcom/a/a/as;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/as;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/a/a/d/ad;->c()Lcom/a/a/d/ad;

    goto :goto_0

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/av;

    invoke-direct {p0, p1, v0}, Lcom/a/a/b/a/bm;->a(Lcom/a/a/d/ad;Lcom/a/a/av;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Lcom/a/a/av;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/a/a/d/ad;->d()Lcom/a/a/d/ad;

    invoke-virtual {p2}, Lcom/a/a/av;->k()Lcom/a/a/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/ay;->n()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p1}, Lcom/a/a/d/ad;->e()Lcom/a/a/d/ad;

    goto :goto_0

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/a/a/d/ad;->a(Ljava/lang/String;)Lcom/a/a/d/ad;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/av;

    invoke-direct {p0, p1, v0}, Lcom/a/a/b/a/bm;->a(Lcom/a/a/d/ad;Lcom/a/a/av;)V

    goto :goto_2

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t write "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcom/a/a/b/a/bm;->a:[I

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
    sput-object v0, Lcom/a/a/b/a/bm;->a:[I

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

.method private b(Lcom/a/a/d/aa;)Lcom/a/a/av;
    .locals 3

    invoke-static {}, Lcom/a/a/b/a/bm;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/a/a/d/aa;->f()Lcom/a/a/d/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/a/a/d/ac;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_1
    new-instance v0, Lcom/a/a/bb;

    invoke-virtual {p1}, Lcom/a/a/d/aa;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/bb;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_2
    invoke-virtual {p1}, Lcom/a/a/d/aa;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/a/a/bb;

    new-instance v2, Lcom/a/a/b/as;

    invoke-direct {v2, v1}, Lcom/a/a/b/as;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/a/a/bb;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/a/a/bb;

    invoke-virtual {p1}, Lcom/a/a/d/aa;->i()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/a/a/bb;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/a/a/d/aa;->j()V

    sget-object v0, Lcom/a/a/ax;->a:Lcom/a/a/ax;

    goto :goto_0

    :pswitch_5
    new-instance v0, Lcom/a/a/as;

    invoke-direct {v0}, Lcom/a/a/as;-><init>()V

    invoke-virtual {p1}, Lcom/a/a/d/aa;->a()V

    :goto_1
    invoke-virtual {p1}, Lcom/a/a/d/aa;->e()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/aa;->b()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/a/a/b/a/bm;->b(Lcom/a/a/d/aa;)Lcom/a/a/av;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/a/a/as;->a(Lcom/a/a/av;)V

    goto :goto_1

    :pswitch_6
    new-instance v0, Lcom/a/a/ay;

    invoke-direct {v0}, Lcom/a/a/ay;-><init>()V

    invoke-virtual {p1}, Lcom/a/a/d/aa;->c()V

    :goto_2
    invoke-virtual {p1}, Lcom/a/a/d/aa;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/a/a/d/aa;->d()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/a/a/d/aa;->g()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/a/a/b/a/bm;->b(Lcom/a/a/d/aa;)Lcom/a/a/av;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/a/a/ay;->a(Ljava/lang/String;Lcom/a/a/av;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/a/a/d/aa;)Ljava/lang/Object;
    .locals 1

    invoke-direct {p0, p1}, Lcom/a/a/b/a/bm;->b(Lcom/a/a/d/aa;)Lcom/a/a/av;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic a(Lcom/a/a/d/ad;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/a/a/av;

    invoke-direct {p0, p1, p2}, Lcom/a/a/b/a/bm;->a(Lcom/a/a/d/ad;Lcom/a/a/av;)V

    return-void
.end method
