.class public final Lcom/a/a/b/a/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/bk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/b/a/ac$aa;
    }
.end annotation


# instance fields
.field private final a:Lcom/a/a/b/ac;


# direct methods
.method public constructor <init>(Lcom/a/a/b/ac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/b/a/ac;->a:Lcom/a/a/b/ac;

    return-void
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

    invoke-virtual {p2}, Lcom/a/a/c/aa;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p2}, Lcom/a/a/c/aa;->a()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v1}, Lcom/a/a/b/ab;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/a/a/c/aa;->a(Ljava/lang/reflect/Type;)Lcom/a/a/c/aa;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/a/a/ak;->a(Lcom/a/a/c/aa;)Lcom/a/a/bj;

    move-result-object v2

    iget-object v0, p0, Lcom/a/a/b/a/ac;->a:Lcom/a/a/b/ac;

    invoke-virtual {v0, p2}, Lcom/a/a/b/ac;->a(Lcom/a/a/c/aa;)Lcom/a/a/b/ax;

    move-result-object v3

    new-instance v0, Lcom/a/a/b/a/ac$aa;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/a/a/b/a/ac$aa;-><init>(Lcom/a/a/ak;Ljava/lang/reflect/Type;Lcom/a/a/bj;Lcom/a/a/b/ax;)V

    goto :goto_0
.end method
