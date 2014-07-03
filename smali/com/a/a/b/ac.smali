.class public final Lcom/a/a/b/ac;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/a/a/ar",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/a/a/ar",
            "<*>;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/b/ac;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/Class;)Lcom/a/a/b/ax;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<-TT;>;)",
            "Lcom/a/a/b/ax",
            "<TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_0
    new-instance v0, Lcom/a/a/b/ai;

    invoke-direct {v0, p0, v1}, Lcom/a/a/b/ai;-><init>(Lcom/a/a/b/ac;Ljava/lang/reflect/Constructor;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/a/a/c/aa;)Lcom/a/a/b/ax;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/c/aa",
            "<TT;>;)",
            "Lcom/a/a/b/ax",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/a/a/c/aa;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/a/c/aa;->a()Ljava/lang/Class;

    move-result-object v2

    iget-object v0, p0, Lcom/a/a/b/ac;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ar;

    if-eqz v0, :cond_1

    new-instance v2, Lcom/a/a/b/ad;

    invoke-direct {v2, p0, v0, v1}, Lcom/a/a/b/ad;-><init>(Lcom/a/a/b/ac;Lcom/a/a/ar;Ljava/lang/reflect/Type;)V

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/a/a/b/ac;->a:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/a/a/ar;

    if-eqz v0, :cond_2

    new-instance v2, Lcom/a/a/b/ah;

    invoke-direct {v2, p0, v0, v1}, Lcom/a/a/b/ah;-><init>(Lcom/a/a/b/ac;Lcom/a/a/ar;Ljava/lang/reflect/Type;)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/a/a/b/ac;->a(Ljava/lang/Class;)Lcom/a/a/b/ax;

    move-result-object v0

    if-nez v0, :cond_0

    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-class v0, Ljava/util/SortedSet;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/a/a/b/aj;

    invoke-direct {v0, p0}, Lcom/a/a/b/aj;-><init>(Lcom/a/a/b/ac;)V

    :goto_1
    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/b/ag;

    invoke-direct {v0, p0, v2, v1}, Lcom/a/a/b/ag;-><init>(Lcom/a/a/b/ac;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    goto :goto_0

    :cond_3
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/a/a/b/ak;

    invoke-direct {v0, p0, v1}, Lcom/a/a/b/ak;-><init>(Lcom/a/a/b/ac;Ljava/lang/reflect/Type;)V

    goto :goto_1

    :cond_4
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/a/a/b/al;

    invoke-direct {v0, p0}, Lcom/a/a/b/al;-><init>(Lcom/a/a/b/ac;)V

    goto :goto_1

    :cond_5
    const-class v0, Ljava/util/Queue;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/a/a/b/am;

    invoke-direct {v0, p0}, Lcom/a/a/b/am;-><init>(Lcom/a/a/b/ac;)V

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/a/a/b/an;

    invoke-direct {v0, p0}, Lcom/a/a/b/an;-><init>(Lcom/a/a/b/ac;)V

    goto :goto_1

    :cond_7
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-class v0, Ljava/util/SortedMap;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/a/a/b/ao;

    invoke-direct {v0, p0}, Lcom/a/a/b/ao;-><init>(Lcom/a/a/b/ac;)V

    goto :goto_1

    :cond_8
    instance-of v0, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_9

    const-class v3, Ljava/lang/String;

    move-object v0, v1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v4, 0x0

    aget-object v0, v0, v4

    invoke-static {v0}, Lcom/a/a/c/aa;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/aa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/a/c/aa;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/a/a/b/ae;

    invoke-direct {v0, p0}, Lcom/a/a/b/ae;-><init>(Lcom/a/a/b/ac;)V

    goto :goto_1

    :cond_9
    new-instance v0, Lcom/a/a/b/af;

    invoke-direct {v0, p0}, Lcom/a/a/b/af;-><init>(Lcom/a/a/b/ac;)V

    goto :goto_1

    :cond_a
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/a/a/b/ac;->a:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
