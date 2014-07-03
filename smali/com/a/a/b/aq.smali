.class final Lcom/a/a/b/aq;
.super Lcom/a/a/bj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/a/a/bj",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/a/a/b/ap;

.field private b:Lcom/a/a/bj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/a/a/bj",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final synthetic c:Z

.field private final synthetic d:Z

.field private final synthetic e:Lcom/a/a/ak;

.field private final synthetic f:Lcom/a/a/c/aa;


# direct methods
.method constructor <init>(Lcom/a/a/b/ap;ZZLcom/a/a/ak;Lcom/a/a/c/aa;)V
    .locals 0

    iput-object p1, p0, Lcom/a/a/b/aq;->a:Lcom/a/a/b/ap;

    iput-boolean p2, p0, Lcom/a/a/b/aq;->c:Z

    iput-boolean p3, p0, Lcom/a/a/b/aq;->d:Z

    iput-object p4, p0, Lcom/a/a/b/aq;->e:Lcom/a/a/ak;

    iput-object p5, p0, Lcom/a/a/b/aq;->f:Lcom/a/a/c/aa;

    invoke-direct {p0}, Lcom/a/a/bj;-><init>()V

    return-void
.end method

.method private a()Lcom/a/a/bj;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/a/a/bj",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/b/aq;->b:Lcom/a/a/bj;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/b/aq;->e:Lcom/a/a/ak;

    iget-object v1, p0, Lcom/a/a/b/aq;->a:Lcom/a/a/b/ap;

    iget-object v2, p0, Lcom/a/a/b/aq;->f:Lcom/a/a/c/aa;

    invoke-virtual {v0, v1, v2}, Lcom/a/a/ak;->a(Lcom/a/a/bk;Lcom/a/a/c/aa;)Lcom/a/a/bj;

    move-result-object v0

    iput-object v0, p0, Lcom/a/a/b/aq;->b:Lcom/a/a/bj;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/a/a/d/aa;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/aa;",
            ")TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/a/a/b/aq;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/aa;->n()V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/a/a/b/aq;->a()Lcom/a/a/bj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/a/a/bj;->a(Lcom/a/a/d/aa;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Lcom/a/a/d/ad;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/a/a/d/ad;",
            "TT;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/a/a/b/aq;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/a/a/d/ad;->f()Lcom/a/a/d/ad;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/a/a/b/aq;->a()Lcom/a/a/bj;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/a/a/bj;->a(Lcom/a/a/d/ad;Ljava/lang/Object;)V

    goto :goto_0
.end method
