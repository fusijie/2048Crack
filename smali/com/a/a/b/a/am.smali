.class public final Lcom/a/a/b/a/am;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/bk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/b/a/am$aa;,
        Lcom/a/a/b/a/am$ab;
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/b/ac;

.field private final b:Lcom/a/a/aj;

.field private final c:Lcom/a/a/b/ap;


# direct methods
.method public constructor <init>(Lcom/a/a/b/ac;Lcom/a/a/aj;Lcom/a/a/b/ap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/b/a/am;->a:Lcom/a/a/b/ac;

    iput-object p2, p0, Lcom/a/a/b/a/am;->b:Lcom/a/a/aj;

    iput-object p3, p0, Lcom/a/a/b/a/am;->c:Lcom/a/a/b/ap;

    return-void
.end method

.method private a(Lcom/a/a/ak;Lcom/a/a/c/aa;Ljava/lang/Class;)Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/ak;",
            "Lcom/a/a/c/aa",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/a/a/b/a/am$ab;",
            ">;"
        }
    .end annotation

    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v10

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/a/a/c/aa;->b()Ljava/lang/reflect/Type;

    move-result-object v12

    :goto_1
    const-class v1, Ljava/lang/Object;

    move-object/from16 v0, p3

    if-ne v0, v1, :cond_1

    move-object v1, v10

    goto :goto_0

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v13

    array-length v14, v13

    const/4 v1, 0x0

    move v11, v1

    :goto_2
    if-lt v11, v14, :cond_2

    invoke-virtual/range {p2 .. p2}, Lcom/a/a/c/aa;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/a/a/b/ab;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/a/a/c/aa;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/aa;

    move-result-object p2

    invoke-virtual/range {p2 .. p2}, Lcom/a/a/c/aa;->a()Ljava/lang/Class;

    move-result-object p3

    goto :goto_1

    :cond_2
    aget-object v8, v13, v11

    const/4 v1, 0x1

    invoke-direct {p0, v8, v1}, Lcom/a/a/b/a/am;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v4

    const/4 v1, 0x0

    invoke-direct {p0, v8, v1}, Lcom/a/a/b/a/am;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v5

    if-nez v4, :cond_3

    if-eqz v5, :cond_5

    :cond_3
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual/range {p2 .. p2}, Lcom/a/a/c/aa;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-static {v1, v0, v2}, Lcom/a/a/b/ab;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v2

    const-class v1, Lcom/a/a/a/ab;

    invoke-virtual {v8, v1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/a/a/a/ab;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/a/a/b/a/am;->b:Lcom/a/a/aj;

    invoke-interface {v1, v8}, Lcom/a/a/aj;->a(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-static {v2}, Lcom/a/a/c/aa;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/aa;

    move-result-object v7

    invoke-virtual {v7}, Lcom/a/a/c/aa;->a()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/a/a/b/ay;->a(Ljava/lang/reflect/Type;)Z

    move-result v9

    new-instance v1, Lcom/a/a/b/a/an;

    move-object v2, p0

    move-object/from16 v6, p1

    invoke-direct/range {v1 .. v9}, Lcom/a/a/b/a/an;-><init>(Lcom/a/a/b/a/am;Ljava/lang/String;ZZLcom/a/a/ak;Lcom/a/a/c/aa;Ljava/lang/reflect/Field;Z)V

    iget-object v2, v1, Lcom/a/a/b/a/am$ab;->c:Ljava/lang/String;

    invoke-interface {v10, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/a/a/b/a/am$ab;

    if-eqz v1, :cond_5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " declares multiple JSON fields named "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/a/a/b/a/am$ab;->c:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    invoke-interface {v1}, Lcom/a/a/a/ab;->a()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto/16 :goto_2
.end method

.method private a(Ljava/lang/reflect/Field;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/a/a/b/a/am;->c:Lcom/a/a/b/ap;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/a/a/b/ap;->a(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/a/am;->c:Lcom/a/a/b/ap;

    invoke-virtual {v0, p1, p2}, Lcom/a/a/b/ap;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/a/a/ak;Lcom/a/a/c/aa;)Lcom/a/a/bj;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/a/a/ak;",
            "Lcom/a/a/c/aa",
            "<TT;>;)",
            "Lcom/a/a/bj",
            "<TT;>;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/a/a/c/aa;->a()Ljava/lang/Class;

    move-result-object v1

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/a/am;->a:Lcom/a/a/b/ac;

    invoke-virtual {v0, p2}, Lcom/a/a/b/ac;->a(Lcom/a/a/c/aa;)Lcom/a/a/b/ax;

    move-result-object v2

    new-instance v0, Lcom/a/a/b/a/am$aa;

    invoke-direct {p0, p1, p2, v1}, Lcom/a/a/b/a/am;->a(Lcom/a/a/ak;Lcom/a/a/c/aa;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lcom/a/a/b/a/am$aa;-><init>(Lcom/a/a/b/ax;Ljava/util/Map;B)V

    goto :goto_0
.end method
