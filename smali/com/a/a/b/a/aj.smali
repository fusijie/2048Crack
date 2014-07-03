.class public final Lcom/a/a/b/a/aj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/bk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/b/a/aj$aa;
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/b/ac;

.field private final b:Z


# direct methods
.method public constructor <init>(Lcom/a/a/b/ac;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/b/a/aj;->a:Lcom/a/a/b/ac;

    iput-boolean p2, p0, Lcom/a/a/b/a/aj;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/a/a/b/a/aj;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/a/a/b/a/aj;->b:Z

    return v0
.end method


# virtual methods
.method public final a(Lcom/a/a/ak;Lcom/a/a/c/aa;)Lcom/a/a/bj;
    .locals 8
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

    const/4 v5, 0x1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/a/a/c/aa;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/a/a/c/aa;->a()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Map;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/a/a/b/ab;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/b/ab;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    const-class v2, Ljava/lang/Boolean;

    if-ne v0, v2, :cond_2

    :cond_1
    sget-object v4, Lcom/a/a/b/a/at;->f:Lcom/a/a/bj;

    :goto_1
    aget-object v0, v1, v5

    invoke-static {v0}, Lcom/a/a/c/aa;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/aa;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/ak;->a(Lcom/a/a/c/aa;)Lcom/a/a/bj;

    move-result-object v6

    iget-object v0, p0, Lcom/a/a/b/a/aj;->a:Lcom/a/a/b/ac;

    invoke-virtual {v0, p2}, Lcom/a/a/b/ac;->a(Lcom/a/a/c/aa;)Lcom/a/a/b/ax;

    move-result-object v7

    new-instance v0, Lcom/a/a/b/a/aj$aa;

    aget-object v3, v1, v3

    aget-object v5, v1, v5

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/a/a/b/a/aj$aa;-><init>(Lcom/a/a/b/a/aj;Lcom/a/a/ak;Ljava/lang/reflect/Type;Lcom/a/a/bj;Ljava/lang/reflect/Type;Lcom/a/a/bj;Lcom/a/a/b/ax;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/a/a/c/aa;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/aa;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/ak;->a(Lcom/a/a/c/aa;)Lcom/a/a/bj;

    move-result-object v4

    goto :goto_1
.end method
