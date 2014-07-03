.class final Lcom/a/a/b/a/bo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/a/a/bk;


# instance fields
.field private final synthetic a:Lcom/a/a/c/aa;

.field private final synthetic b:Lcom/a/a/bj;


# direct methods
.method constructor <init>(Lcom/a/a/c/aa;Lcom/a/a/bj;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/b/a/bo;->a:Lcom/a/a/c/aa;

    iput-object p2, p0, Lcom/a/a/b/a/bo;->b:Lcom/a/a/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/a/a/ak;Lcom/a/a/c/aa;)Lcom/a/a/bj;
    .locals 1
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

    iget-object v0, p0, Lcom/a/a/b/a/bo;->a:Lcom/a/a/c/aa;

    invoke-virtual {p2, v0}, Lcom/a/a/c/aa;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/b/a/bo;->b:Lcom/a/a/bj;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
