.class final Lcom/a/a/b/a/bi;
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

    const-class v1, Ljava/sql/Timestamp;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Ljava/util/Date;

    invoke-virtual {p1, v0}, Lcom/a/a/ak;->a(Ljava/lang/Class;)Lcom/a/a/bj;

    move-result-object v1

    new-instance v0, Lcom/a/a/b/a/bj;

    invoke-direct {v0, p0, v1}, Lcom/a/a/b/a/bj;-><init>(Lcom/a/a/b/a/bi;Lcom/a/a/bj;)V

    goto :goto_0
.end method
