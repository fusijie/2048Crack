.class final Lcom/a/a/b/a/ap;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/bk;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/ak;Lcom/a/a/c/aa;)Lcom/a/a/bj;
    .locals 2
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

    move-result-object v0

    const-class v1, Ljava/sql/Date;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/a/a/b/a/ao;

    invoke-direct {v0}, Lcom/a/a/b/a/ao;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
